; ModuleID = '/llk/IR_all_yes/drivers/spmi/spmi-pmic-arb.c_pt.bc'
source_filename = "../drivers/spmi/spmi-pmic-arb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pmic_arb_ver_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spmi_pmic_arb = type { ptr, ptr, ptr, ptr, ptr, i32, %struct.raw_spinlock, i8, i32, i8, i16, i16, ptr, [16 x i32], ptr, ptr, ptr, ptr, i16, [512 x %struct.apid_data] }
%struct.apid_data = type { i16, i8, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.spmi_controller = type { %struct.device, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }

@__initcall__kmod_spmi_pmic_arb__198_1457_spmi_pmic_arb_driver_init6 = internal global ptr @spmi_pmic_arb_driver_init, section ".initcall6.init", align 4
@spmi_pmic_arb_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @spmi_pmic_arb_probe, ptr @spmi_pmic_arb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @spmi_pmic_arb_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_spmi_pmic_arb_driver_exit = internal global ptr @spmi_pmic_arb_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file199 = internal constant [46 x i8] c"spmi_pmic_arb.file=drivers/spmi/spmi-pmic-arb\00", section ".modinfo", align 1
@__UNIQUE_ID_license200 = internal constant [29 x i8] c"spmi_pmic_arb.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias201 = internal constant [43 x i8] c"spmi_pmic_arb.alias=platform:spmi_pmic_arb\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spmi_pmic_arb\00", [18 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,spmi-pmic-arb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@pmic_arb_v1 = internal constant { %struct.pmic_arb_ver_ops, [56 x i8] } { %struct.pmic_arb_ver_ops { ptr @.str.35, ptr @pmic_arb_ppid_to_apid_v1, ptr @pmic_arb_offset_v1, ptr @pmic_arb_fmt_cmd_v1, ptr @pmic_arb_non_data_cmd_v1, ptr @pmic_arb_owner_acc_status_v1, ptr @pmic_arb_acc_enable_v1, ptr @pmic_arb_irq_status_v1, ptr @pmic_arb_irq_clear_v1, ptr @pmic_arb_apid_map_offset_v2 }, [56 x i8] zeroinitializer }, align 32
@pmic_arb_v2 = internal constant { %struct.pmic_arb_ver_ops, [56 x i8] } { %struct.pmic_arb_ver_ops { ptr @.str.47, ptr @pmic_arb_ppid_to_apid_v2, ptr @pmic_arb_offset_v2, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v2, ptr @pmic_arb_acc_enable_v2, ptr @pmic_arb_irq_status_v2, ptr @pmic_arb_irq_clear_v2, ptr @pmic_arb_apid_map_offset_v2 }, [56 x i8] zeroinitializer }, align 32
@pmic_arb_v3 = internal constant { %struct.pmic_arb_ver_ops, [56 x i8] } { %struct.pmic_arb_ver_ops { ptr @.str.48, ptr @pmic_arb_ppid_to_apid_v2, ptr @pmic_arb_offset_v2, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v3, ptr @pmic_arb_acc_enable_v2, ptr @pmic_arb_irq_status_v2, ptr @pmic_arb_irq_clear_v2, ptr @pmic_arb_apid_map_offset_v2 }, [56 x i8] zeroinitializer }, align 32
@pmic_arb_v5 = internal constant { %struct.pmic_arb_ver_ops, [56 x i8] } { %struct.pmic_arb_ver_ops { ptr @.str.49, ptr @pmic_arb_ppid_to_apid_v5, ptr @pmic_arb_offset_v5, ptr @pmic_arb_fmt_cmd_v2, ptr @pmic_arb_non_data_cmd_v2, ptr @pmic_arb_owner_acc_status_v5, ptr @pmic_arb_acc_enable_v5, ptr @pmic_arb_irq_status_v5, ptr @pmic_arb_irq_clear_v5, ptr @pmic_arb_apid_map_offset_v5 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"obsrvr\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"chnls\00", [26 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1328, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PMIC arbiter version %s (0x%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"spmi_pmic_arb_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/spmi/spmi-pmic-arb.c\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr = internal global ptr @spmi_pmic_arb_probe._entry, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"intr\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cnfg\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"periph_irq\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qcom,channel\00", [19 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1352, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"channel unspecified.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.16 = internal global ptr @spmi_pmic_arb_probe._entry.13, section ".printk_index", align 4
@spmi_pmic_arb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.6, i32 1358, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid channel (%u) specified.\0A\00", [63 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.19 = internal global ptr @spmi_pmic_arb_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"qcom,ee\00", [24 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.5, ptr @.str.6, i32 1367, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EE unspecified.\0A\00", [47 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.23 = internal global ptr @spmi_pmic_arb_probe._entry.21, section ".printk_index", align 4
@spmi_pmic_arb_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.5, ptr @.str.6, i32 1372, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid EE (%u) specified\0A\00", [37 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.26 = internal global ptr @spmi_pmic_arb_probe._entry.24, section ".printk_index", align 4
@spmi_pmic_arb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pmic_arb->lock\00", [16 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.5, ptr @.str.6, i32 1402, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"could not read APID->PPID mapping table, rc= %d\0A\00", [47 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.30 = internal global ptr @spmi_pmic_arb_probe._entry.28, section ".printk_index", align 4
@spmi_pmic_arb_probe.__UNIQUE_ID_ddebug197 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.6, ptr @.str.31, i8 1, i8 95, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adding irq domain\0A\00", [45 x i8] zeroinitializer }, align 32
@pmic_arb_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_irq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr @qpnpint_irq_domain_activate, ptr null, ptr @qpnpint_irq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.6, i32 1411, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to create irq_domain\0A\00", [35 x i8] zeroinitializer }, align 32
@spmi_pmic_arb_probe._entry_ptr.34 = internal global ptr @spmi_pmic_arb_probe._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v1\00", [29 x i8] zeroinitializer }, align 32
@pmic_arb_wait_for_done._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 265, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %#x %#x: transaction denied (%#x)\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmic_arb_wait_for_done\00", [41 x i8] zeroinitializer }, align 32
@pmic_arb_wait_for_done._entry_ptr = internal global ptr @pmic_arb_wait_for_done._entry, section ".printk_index", align 4
@pmic_arb_wait_for_done._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.6, i32 271, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: %#x %#x: transaction failed (%#x)\0A\00", [57 x i8] zeroinitializer }, align 32
@pmic_arb_wait_for_done._entry_ptr.40 = internal global ptr @pmic_arb_wait_for_done._entry.38, section ".printk_index", align 4
@pmic_arb_wait_for_done._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.6, i32 278, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %#x %#x: transaction dropped (%#x)\0A\00", [56 x i8] zeroinitializer }, align 32
@pmic_arb_wait_for_done._entry_ptr.43 = internal global ptr @pmic_arb_wait_for_done._entry.41, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@pmic_arb_wait_for_done._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.37, ptr @.str.6, i32 288, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: %#x %#x: timeout, status %#x\0A\00", [62 x i8] zeroinitializer }, align 32
@pmic_arb_wait_for_done._entry_ptr.46 = internal global ptr @pmic_arb_wait_for_done._entry.44, section ".printk_index", align 4
@.str.47 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v2\00", [29 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v3\00", [29 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"v5\00", [29 x i8] zeroinitializer }, align 32
@pmic_arb_cmd.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.6, ptr @.str.51, i8 0, i8 82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pmic_arb_cmd\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cmd op:0x%x sid:%d\0A\00", [44 x i8] zeroinitializer }, align 32
@pmic_arb_fmt_read_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.53, ptr @.str.6, i32 351, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"pmic-arb supports 1..%d bytes per trans, but:%zu requested\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pmic_arb_fmt_read_cmd\00", [42 x i8] zeroinitializer }, align 32
@pmic_arb_fmt_read_cmd._entry_ptr = internal global ptr @pmic_arb_fmt_read_cmd._entry, section ".printk_index", align 4
@pmic_arb_fmt_write_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.54, ptr @.str.6, i32 428, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pmic_arb_fmt_write_cmd\00", [41 x i8] zeroinitializer }, align 32
@pmic_arb_fmt_write_cmd._entry_ptr = internal global ptr @pmic_arb_fmt_write_cmd._entry, section ".printk_index", align 4
@pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.6, ptr @.str.56, i8 1, i8 2, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pmic_arb_read_apid_map_v5\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"PPID APID Write-EE IRQ-EE\0A\00", [37 x i8] zeroinitializer }, align 32
@pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug196 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.6, ptr @.str.57, i8 1, i8 4, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%#03X %3u %2u %2u\0A\00", [45 x i8] zeroinitializer }, align 32
@qpnpint_irq_domain_map.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.6, ptr @.str.59, i8 0, i8 -45, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qpnpint_irq_domain_map\00", [41 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"virq = %u, hwirq = %lu, type = %u\0A\00", [61 x i8] zeroinitializer }, align 32
@qpnpint_irq_lock_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@qpnpint_irq_request_class = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pmic_arb_irqchip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.60, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_irq_ack, ptr @qpnpint_irq_mask, ptr null, ptr @qpnpint_irq_unmask, ptr null, ptr null, ptr null, ptr @qpnpint_irq_set_type, ptr @qpnpint_irq_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @qpnpint_get_irqchip_state, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 4 }, [56 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pmic_arb\00", [23 x i8] zeroinitializer }, align 32
@qpnpint_spmi_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.qpnpint_spmi_write = private unnamed_addr constant [19 x i8] c"qpnpint_spmi_write\00", align 1
@qpnpint_spmi_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.qpnpint_spmi_write, ptr @.str.6, i32 554, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed irqchip transaction on %x\0A\00", [62 x i8] zeroinitializer }, align 32
@qpnpint_spmi_write._entry_ptr = internal global ptr @qpnpint_spmi_write._entry, section ".printk_index", align 4
@qpnpint_spmi_read._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qpnpint_spmi_read = private unnamed_addr constant [18 x i8] c"qpnpint_spmi_read\00", align 1
@qpnpint_spmi_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @__func__.qpnpint_spmi_read, ptr @.str.6, i32 566, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@qpnpint_spmi_read._entry_ptr = internal global ptr @qpnpint_spmi_read._entry, section ".printk_index", align 4
@qpnpint_spmi_masked_write._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.qpnpint_spmi_masked_write = private unnamed_addr constant [26 x i8] c"qpnpint_spmi_masked_write\00", align 1
@qpnpint_spmi_masked_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @__func__.qpnpint_spmi_masked_write, ptr @.str.6, i32 582, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"failed irqchip transaction on %x rc=%d\0A\00", [56 x i8] zeroinitializer }, align 32
@qpnpint_spmi_masked_write._entry_ptr = internal global ptr @qpnpint_spmi_masked_write._entry, section ".printk_index", align 4
@qpnpint_irq_domain_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.6, i32 777, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u: ee=%u but owner=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"qpnpint_irq_domain_activate\00", [36 x i8] zeroinitializer }, align 32
@qpnpint_irq_domain_activate._entry_ptr = internal global ptr @qpnpint_irq_domain_activate._entry, section ".printk_index", align 4
@qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug192 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.6, ptr @.str.67, i8 0, i8 -55, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"qpnpint_irq_domain_translate\00", [35 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"intspec[0] 0x%1x intspec[1] 0x%02x intspec[2] 0x%02x\0A\00", [42 x i8] zeroinitializer }, align 32
@qpnpint_irq_domain_translate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.66, ptr @.str.6, i32 819, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"failed to xlate sid = %#x, periph = %#x, irq = %u rc = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@qpnpint_irq_domain_translate._entry_ptr = internal global ptr @qpnpint_irq_domain_translate._entry, section ".printk_index", align 4
@qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.66, ptr @.str.6, ptr @.str.69, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"out_hwirq = %lu\0A\00", [47 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@cleanup_irq._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cleanup_irq = private unnamed_addr constant [12 x i8] c"cleanup_irq\00", align 1
@cleanup_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.cleanup_irq, ptr @.str.6, i32 598, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to ack irq_mask = 0x%x for ppid = %x\0A\00", [51 x i8] zeroinitializer }, align 32
@cleanup_irq._entry_ptr = internal global ptr @cleanup_irq._entry, section ".printk_index", align 4
@cleanup_irq._rs.71 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.61, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@cleanup_irq._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @__func__.cleanup_irq, ptr @.str.6, i32 603, ptr @.str.15, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@cleanup_irq._entry_ptr.73 = internal global ptr @cleanup_irq._entry.72, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.74 = private unnamed_addr constant [21 x i8] c"spmi_pmic_arb_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1449, i32 31 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1453, i32 11 }
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"spmi_pmic_arb_match_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1443, i32 34 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1277, i32 59 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"pmic_arb_v1\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1201, i32 38 }
@___asan_gen_.89 = private unnamed_addr constant [12 x i8] c"pmic_arb_v2\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1214, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"pmic_arb_v3\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1227, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant [12 x i8] c"pmic_arb_v5\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1240, i32 38 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1311, i32 10 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1319, i32 10 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1327, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1330, i32 59 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1337, i32 59 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1344, i32 48 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1350, i32 48 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1352, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1357, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1365, i32 48 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1367, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1372, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1392, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1401, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1407, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [24 x i8] c"pmic_arb_irq_domain_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1253, i32 36 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1411, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1202, i32 14 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 264, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 270, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 277, i32 5 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 287, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1215, i32 14 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1228, i32 14 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1241, i32 14 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 328, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 350, i32 3 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 427, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1035, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 1041, i32 4 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 846, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [23 x i8] c"qpnpint_irq_lock_class\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 838, i32 30 }
@___asan_gen_.266 = private unnamed_addr constant [26 x i8] c"qpnpint_irq_request_class\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 838, i32 54 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"pmic_arb_irqchip\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 784, i32 24 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 785, i32 11 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 553, i32 3 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 565, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 581, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 775, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 805, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 818, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 833, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 597, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private constant [32 x i8] c"../drivers/spmi/spmi-pmic-arb.c\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.339, i32 602, i32 3 }
@llvm.compiler.used = appending global [115 x ptr] [ptr @__UNIQUE_ID_alias201, ptr @__UNIQUE_ID_file199, ptr @__UNIQUE_ID_license200, ptr @__exitcall_spmi_pmic_arb_driver_exit, ptr @__initcall__kmod_spmi_pmic_arb__198_1457_spmi_pmic_arb_driver_init6, ptr @cleanup_irq._entry, ptr @cleanup_irq._entry.72, ptr @cleanup_irq._entry_ptr, ptr @cleanup_irq._entry_ptr.73, ptr @pmic_arb_fmt_read_cmd._entry, ptr @pmic_arb_fmt_read_cmd._entry_ptr, ptr @pmic_arb_fmt_write_cmd._entry, ptr @pmic_arb_fmt_write_cmd._entry_ptr, ptr @pmic_arb_wait_for_done._entry, ptr @pmic_arb_wait_for_done._entry.38, ptr @pmic_arb_wait_for_done._entry.41, ptr @pmic_arb_wait_for_done._entry.44, ptr @pmic_arb_wait_for_done._entry_ptr, ptr @pmic_arb_wait_for_done._entry_ptr.40, ptr @pmic_arb_wait_for_done._entry_ptr.43, ptr @pmic_arb_wait_for_done._entry_ptr.46, ptr @qpnpint_irq_domain_activate._entry, ptr @qpnpint_irq_domain_activate._entry_ptr, ptr @qpnpint_irq_domain_translate._entry, ptr @qpnpint_irq_domain_translate._entry_ptr, ptr @qpnpint_spmi_masked_write._entry, ptr @qpnpint_spmi_masked_write._entry_ptr, ptr @qpnpint_spmi_read._entry, ptr @qpnpint_spmi_read._entry_ptr, ptr @qpnpint_spmi_write._entry, ptr @qpnpint_spmi_write._entry_ptr, ptr @spmi_pmic_arb_driver_exit, ptr @spmi_pmic_arb_probe._entry, ptr @spmi_pmic_arb_probe._entry.13, ptr @spmi_pmic_arb_probe._entry.17, ptr @spmi_pmic_arb_probe._entry.21, ptr @spmi_pmic_arb_probe._entry.24, ptr @spmi_pmic_arb_probe._entry.28, ptr @spmi_pmic_arb_probe._entry.32, ptr @spmi_pmic_arb_probe._entry_ptr, ptr @spmi_pmic_arb_probe._entry_ptr.16, ptr @spmi_pmic_arb_probe._entry_ptr.19, ptr @spmi_pmic_arb_probe._entry_ptr.23, ptr @spmi_pmic_arb_probe._entry_ptr.26, ptr @spmi_pmic_arb_probe._entry_ptr.30, ptr @spmi_pmic_arb_probe._entry_ptr.34, ptr @spmi_pmic_arb_driver, ptr @.str, ptr @spmi_pmic_arb_match_table, ptr @.str.1, ptr @pmic_arb_v1, ptr @pmic_arb_v2, ptr @pmic_arb_v3, ptr @pmic_arb_v5, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @spmi_pmic_arb_probe.__key, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @pmic_arb_irq_domain_ops, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @qpnpint_irq_lock_class, ptr @qpnpint_irq_request_class, ptr @pmic_arb_irqchip, ptr @.str.60, ptr @qpnpint_spmi_write._rs, ptr @.str.61, ptr @.str.62, ptr @qpnpint_spmi_read._rs, ptr @qpnpint_spmi_masked_write._rs, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @cleanup_irq._rs, ptr @.str.70, ptr @cleanup_irq._rs.71], section "llvm.metadata"
@0 = internal global [89 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_v1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_v2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_v3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_v5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_pmic_arb_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_wait_for_done._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_wait_for_done._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_wait_for_done._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_wait_for_done._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_fmt_read_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_fmt_write_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_irq_lock_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_irq_request_class to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmic_arb_irqchip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_read._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_masked_write._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_spmi_masked_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_irq_domain_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qpnpint_irq_domain_translate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_irq._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_irq._rs.71 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cleanup_irq._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @spmi_pmic_arb_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @spmi_pmic_arb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @spmi_pmic_arb_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %channel = alloca i32, align 4
  %ee = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #10
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %channel, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ee) #10
  %1 = ptrtoint ptr %ee to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %ee, align 4, !annotation !189
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @spmi_controller_alloc(ptr noundef %dev, i32 noundef 2220) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %spmic = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %spmic to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %spmic, align 4
  %call2 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.1) #10
  %call4 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %call, ptr noundef %call2) #10
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %call4 to i32
  br label %spmi_controller_put.exit

if.end8:                                          ; preds = %if.end
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %8 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call2, align 4
  %sub.i = add i32 %7, 1
  %add.i = sub i32 %sub.i, %9
  %core_size = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 5
  %10 = ptrtoint ptr %core_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add.i, ptr %core_size, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %call, i32 noundef 8192, i32 noundef 3520) #10
  %ppid_to_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 17
  %11 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call5.i.i, ptr %ppid_to_apid, align 4
  %tobool13.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool13.not, label %if.end8.spmi_controller_put.exit_crit_edge, label %if.end15

if.end8.spmi_controller_put.exit_crit_edge:       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %spmi_controller_put.exit

if.end15:                                         ; preds = %if.end8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call4) #10, !srcloc !190
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 536936448, i32 %13)
  %cmp = icmp ult i32 %13, 536936448
  br i1 %cmp, label %if.then17, label %if.else

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 16
  %14 = ptrtoint ptr %ver_ops to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pmic_arb_v1, ptr %ver_ops, align 4
  %wr_base = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %wr_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call4, ptr %wr_base, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call4, ptr %3, align 4
  br label %do.end

if.else:                                          ; preds = %if.end15
  %core18 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 4
  %17 = ptrtoint ptr %core18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call4, ptr %core18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %13)
  %cmp19 = icmp ult i32 %13, 805306368
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %ver_ops21 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 16
  %18 = ptrtoint ptr %ver_ops21 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @pmic_arb_v2, ptr %ver_ops21, align 4
  br label %if.end29

if.else22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177280, i32 %13)
  %cmp23 = icmp ult i32 %13, 1342177280
  %ver_ops25 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 16
  br i1 %cmp23, label %if.then24, label %if.else26

if.then24:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %ver_ops25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @pmic_arb_v3, ptr %ver_ops25, align 4
  br label %if.end29

if.else26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %ver_ops25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @pmic_arb_v5, ptr %ver_ops25, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then24, %if.then20
  %call30 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.2) #10
  %call32 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %call, ptr noundef %call30) #10
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call32, ptr %3, align 4
  %cmp.i268 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i268, label %if.then36, label %if.end39

if.then36:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %call32 to i32
  br label %spmi_controller_put.exit

if.end39:                                         ; preds = %if.end29
  %call40 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.3) #10
  %call42 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %call, ptr noundef %call40) #10
  %wr_base43 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 1
  %23 = ptrtoint ptr %wr_base43 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call42, ptr %wr_base43, align 4
  %cmp.i269 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i269, label %if.then46, label %if.end39.do.end_crit_edge

if.end39.do.end_crit_edge:                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then46:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call42 to i32
  br label %spmi_controller_put.exit

do.end:                                           ; preds = %if.end39.do.end_crit_edge, %if.then17
  %ver_ops52 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 16
  %25 = ptrtoint ptr %ver_ops52 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ver_ops52, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef nonnull %call, ptr noundef nonnull @.str.4, ptr noundef %28, i32 noundef %13) #13
  %call53 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.9) #10
  %call55 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %call, ptr noundef %call53) #10
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 2
  %29 = ptrtoint ptr %intr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call55, ptr %intr, align 4
  %cmp.i270 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i270, label %if.then58, label %if.end61

if.then58:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %call55 to i32
  br label %spmi_controller_put.exit

if.end61:                                         ; preds = %do.end
  %call62 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.10) #10
  %call64 = tail call ptr @devm_ioremap_resource(ptr noundef nonnull %call, ptr noundef %call62) #10
  %cnfg = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 3
  %31 = ptrtoint ptr %cnfg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call64, ptr %cnfg, align 4
  %cmp.i271 = icmp ugt ptr %call64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i271, label %if.then67, label %if.end70

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %call64 to i32
  br label %spmi_controller_put.exit

if.end70:                                         ; preds = %if.end61
  %call71 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.11) #10
  %irq = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 8
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %call71, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp73 = icmp slt i32 %call71, 0
  br i1 %cmp73, label %if.end70.spmi_controller_put.exit_crit_edge, label %if.end76

if.end70.spmi_controller_put.exit_crit_edge:      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %spmi_controller_put.exit

if.end76:                                         ; preds = %if.end70
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %35, ptr noundef nonnull @.str.12, ptr noundef nonnull %channel, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool79.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #13
  br label %spmi_controller_put.exit

if.end85:                                         ; preds = %if.end76
  %36 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %37)
  %cmp86 = icmp ugt i32 %37, 5
  br i1 %cmp86, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %37) #13
  br label %spmi_controller_put.exit

if.end92:                                         ; preds = %if.end85
  %conv = trunc i32 %37 to i8
  %channel93 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 7
  %38 = ptrtoint ptr %channel93 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv, ptr %channel93, align 4
  %39 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %of_node, align 8
  %call.i.i272 = call i32 @of_property_read_variable_u32_array(ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef nonnull %ee, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i272)
  %tobool97.not = icmp sgt i32 %call.i.i272, -1
  br i1 %tobool97.not, label %if.end103, label %do.end101

do.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #13
  br label %spmi_controller_put.exit

if.end103:                                        ; preds = %if.end92
  %41 = ptrtoint ptr %ee to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %ee, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %42)
  %cmp104 = icmp ugt i32 %42, 5
  br i1 %cmp104, label %do.end109, label %if.end111

do.end109:                                        ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %42) #13
  br label %spmi_controller_put.exit

if.end111:                                        ; preds = %if.end103
  %conv112 = trunc i32 %42 to i8
  %ee113 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 9
  %43 = ptrtoint ptr %ee113 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv112, ptr %ee113, align 4
  %call5.i.i273 = call noalias ptr @devm_kmalloc(ptr noundef nonnull %call, i32 noundef 2048, i32 noundef 3520) #10
  %tobool116.not = icmp eq ptr %call5.i.i273, null
  br i1 %tobool116.not, label %if.end111.spmi_controller_put.exit_crit_edge, label %if.end118

if.end111.spmi_controller_put.exit_crit_edge:     ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %spmi_controller_put.exit

if.end118:                                        ; preds = %if.end111
  %mapping_table119 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 12
  %44 = ptrtoint ptr %mapping_table119 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i273, ptr %mapping_table119, align 4
  %max_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 11
  %45 = ptrtoint ptr %max_apid to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %max_apid, align 4
  %min_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 10
  %46 = ptrtoint ptr %min_apid to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 511, ptr %min_apid, align 2
  %driver_data.i.i274 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %47 = ptrtoint ptr %driver_data.i.i274 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call, ptr %driver_data.i.i274, align 4
  %lock = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.27, ptr noundef nonnull @spmi_pmic_arb_probe.__key, i16 noundef signext 2) #10
  %cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 2
  %48 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @pmic_arb_cmd, ptr %cmd, align 4
  %read_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 3
  %49 = ptrtoint ptr %read_cmd to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @pmic_arb_read_cmd, ptr %read_cmd, align 8
  %write_cmd = getelementptr inbounds %struct.spmi_controller, ptr %call, i32 0, i32 4
  %50 = ptrtoint ptr %write_cmd to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @pmic_arb_write_cmd, ptr %write_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %13)
  %cmp123 = icmp ugt i32 %13, 1342177279
  br i1 %cmp123, label %if.then125, label %if.end118.do.body135_crit_edge

if.end118.do.body135_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body135

if.then125:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @pmic_arb_read_apid_map_v5(ptr noundef %3)
  br label %do.body135

do.body135:                                       ; preds = %if.then125, %if.end118.do.body135_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @spmi_pmic_arb_probe.__UNIQUE_ID_ddebug197, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@spmi_pmic_arb_probe, %if.then141)) #10
          to label %do.end145 [label %if.then141], !srcloc !191

if.then141:                                       ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @spmi_pmic_arb_probe.__UNIQUE_ID_ddebug197, ptr noundef %dev, ptr noundef nonnull @.str.31) #10
  br label %do.end145

do.end145:                                        ; preds = %if.then141, %do.body135
  %51 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %of_node, align 8
  %tobool.not.i.i = icmp eq ptr %52, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %52, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @pmic_arb_irq_domain_ops, ptr noundef %3) #10
  %domain = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 14
  %53 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call1.i, ptr %domain, align 4
  %tobool150.not = icmp eq ptr %call1.i, null
  br i1 %tobool150.not, label %do.end154, label %if.end156

do.end154:                                        ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #13
  br label %spmi_controller_put.exit

if.end156:                                        ; preds = %do.end145
  %54 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %55, ptr noundef nonnull @pmic_arb_chained_irq, ptr noundef %3) #10
  %call158 = call i32 @spmi_controller_add(ptr noundef nonnull %call) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %tobool159.not = icmp eq i32 %call158, 0
  br i1 %tobool159.not, label %if.end156.cleanup_crit_edge, label %err_domain_remove

if.end156.cleanup_crit_edge:                      ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

err_domain_remove:                                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %57, ptr noundef null, ptr noundef null) #10
  %58 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %59) #10
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %err_domain_remove, %do.end154, %if.end111.spmi_controller_put.exit_crit_edge, %do.end109, %do.end101, %do.end90, %do.end83, %if.end70.spmi_controller_put.exit_crit_edge, %if.then67, %if.then58, %if.then46, %if.then36, %if.end8.spmi_controller_put.exit_crit_edge, %if.then6
  %err.0 = phi i32 [ %5, %if.then6 ], [ %30, %if.then58 ], [ %32, %if.then67 ], [ %call.i.i, %do.end83 ], [ -22, %do.end90 ], [ %call.i.i272, %do.end101 ], [ -22, %do.end109 ], [ %call158, %err_domain_remove ], [ -12, %do.end154 ], [ %22, %if.then36 ], [ %24, %if.then46 ], [ -12, %if.end8.spmi_controller_put.exit_crit_edge ], [ %call71, %if.end70.spmi_controller_put.exit_crit_edge ], [ -12, %if.end111.spmi_controller_put.exit_crit_edge ]
  call void @put_device(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %spmi_controller_put.exit, %if.end156.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %spmi_controller_put.exit ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end156.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ee) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spmi_pmic_arb_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %driver_data.i.i5 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i5 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i5, align 4
  tail call void @spmi_controller_remove(ptr noundef %1) #10
  %irq = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef null, ptr noundef null) #10
  %domain = getelementptr inbounds %struct.spmi_pmic_arb, ptr %3, i32 0, i32 14
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %7) #10
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.spmi_controller_put.exit_crit_edge, label %if.then.i

entry.spmi_controller_put.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %spmi_controller_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @put_device(ptr noundef nonnull %1) #10
  br label %spmi_controller_put.exit

spmi_controller_put.exit:                         ; preds = %if.then.i, %entry.spmi_controller_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spmi_controller_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic_arb_cmd.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic_arb_cmd, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !191

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %opc to i32
  %conv4 = zext i8 %sid to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic_arb_cmd.__UNIQUE_ID_ddebug187, ptr noundef %ctrl, ptr noundef nonnull @.str.51, i32 noundef %conv, i32 noundef %conv4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = add i8 %opc, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 -4, i8 %2)
  %3 = icmp ult i8 %2, -4
  br i1 %3, label %do.end.cleanup_crit_edge, label %if.end11

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ver_ops, align 4
  %non_data_cmd = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %non_data_cmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %non_data_cmd, align 4
  %call12 = tail call i32 %7(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_read_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, ptr nocapture noundef writeonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %data.i33.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = trunc i32 %len to i8
  %conv.i = add i8 %2, -1
  %ver_ops.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ver_ops.i, align 4
  %offset1.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offset1.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i)
  %cmp4.i = icmp ugt i8 %conv.i, 7
  br i1 %cmp4.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spmic.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 8, i32 noundef %len) #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 95, i8 %opc)
  %9 = icmp sgt i8 %opc, 95
  br i1 %9, label %if.end7.i.do.body_crit_edge, label %if.else.i

if.end7.i.do.body_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else.i:                                        ; preds = %if.end7.i
  %10 = and i8 %opc, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %10)
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %if.else.i.do.body_crit_edge, label %if.else23.i

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else23.i:                                      ; preds = %if.else.i
  %12 = and i8 %opc, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 56, i8 %12)
  %13 = icmp eq i8 %12, 56
  br i1 %13, label %if.else23.i.do.body_crit_edge, label %if.else23.i.cleanup_crit_edge

if.else23.i.cleanup_crit_edge:                    ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else23.i.do.body_crit_edge:                    ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.else23.i.do.body_crit_edge, %if.else.i.do.body_crit_edge, %if.end7.i.do.body_crit_edge
  %opc.addr.0.i = phi i8 [ 15, %if.end7.i.do.body_crit_edge ], [ 13, %if.else.i.do.body_crit_edge ], [ 1, %if.else23.i.do.body_crit_edge ]
  %14 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ver_ops.i, align 4
  %fmt_cmd.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %fmt_cmd.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fmt_cmd.i, align 4
  %call37.i = tail call i32 %17(i8 noundef zeroext %opc.addr.0.i, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i8 noundef zeroext %conv.i) #10
  %lock = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %call37.i) #10
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %19, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %call.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %20) #10, !srcloc !192
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %19, align 4
  %call1.i = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %ctrl, ptr noundef %24, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %if.end.i27, label %do.body.pmic_arb_read_cmd_unlocked.exit_crit_edge

do.body.pmic_arb_read_cmd_unlocked.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_read_cmd_unlocked.exit

if.end.i27:                                       ; preds = %do.body
  %conv.i25 = add i32 %len, 255
  %add2.i = add nuw i32 %call.i, 24
  %conv3.i = and i32 %conv.i25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv3.i)
  %cmp.i26 = icmp ult i32 %conv3.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i)
  %25 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %19, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %26, i32 %add2.i
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i) #10, !srcloc !190
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %data.i.i, align 4
  %phi.cast.op.i = and i32 %conv.i25, 3
  %phi.cast.op.op.i = add nuw nsw i32 %phi.cast.op.i, 1
  %add.i.i = select i1 %cmp.i26, i32 %phi.cast.op.op.i, i32 4
  %29 = call ptr @memcpy(ptr %buf, ptr %data.i.i, i32 %add.i.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv3.i)
  %cmp10.i = icmp ugt i32 %conv3.i, 3
  br i1 %cmp10.i, label %if.then12.i, label %if.end.i27.pmic_arb_read_cmd_unlocked.exit_crit_edge

if.end.i27.pmic_arb_read_cmd_unlocked.exit_crit_edge: ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_read_cmd_unlocked.exit

if.then12.i:                                      ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %add13.i = add nuw i32 %call.i, 28
  %conv16.i = add i32 %len, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i33.i)
  %30 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %19, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %31, i32 %add13.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34.i) #10, !srcloc !190
  %33 = ptrtoint ptr %data.i33.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %data.i33.i, align 4
  %34 = and i32 %conv16.i, 3
  %narrow.i35.i = add nuw nsw i32 %34, 1
  %35 = call ptr @memcpy(ptr %add.ptr.i, ptr %data.i33.i, i32 %narrow.i35.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i33.i)
  br label %pmic_arb_read_cmd_unlocked.exit

pmic_arb_read_cmd_unlocked.exit:                  ; preds = %if.then12.i, %if.end.i27.pmic_arb_read_cmd_unlocked.exit_crit_edge, %do.body.pmic_arb_read_cmd_unlocked.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %pmic_arb_read_cmd_unlocked.exit, %if.else23.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %pmic_arb_read_cmd_unlocked.exit ], [ -22, %if.else23.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_write_cmd(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, ptr nocapture noundef readonly %buf, i32 noundef %len) #2 align 64 {
entry:
  %data.i27.i = alloca i32, align 4
  %data.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = trunc i32 %len to i8
  %conv.i = add i8 %2, -1
  %ver_ops.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %3 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ver_ops.i, align 4
  %offset1.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %offset1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %offset1.i, align 4
  %call.i = tail call i32 %6(ptr noundef %1, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %conv.i)
  %cmp4.i = icmp ugt i8 %conv.i, 7
  br i1 %cmp4.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spmic.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.52, i32 noundef 8, i32 noundef %len) #13
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  %9 = and i8 %opc, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %10 = icmp eq i8 %9, 64
  br i1 %10, label %if.end7.i.do.body_crit_edge, label %if.else.i

if.end7.i.do.body_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else.i:                                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %opc)
  %cmp16.i = icmp ult i8 %opc, 16
  br i1 %cmp16.i, label %if.else.i.do.body_crit_edge, label %if.else19.i

if.else.i.do.body_crit_edge:                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else19.i:                                      ; preds = %if.else.i
  %11 = and i8 %opc, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %11)
  %12 = icmp eq i8 %11, 48
  br i1 %12, label %if.else19.i.do.body_crit_edge, label %if.else28.i

if.else19.i.do.body_crit_edge:                    ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.else28.i:                                      ; preds = %if.else19.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %opc)
  %cmp30.i = icmp slt i8 %opc, 0
  br i1 %cmp30.i, label %if.else28.i.do.body_crit_edge, label %if.else28.i.cleanup_crit_edge

if.else28.i.cleanup_crit_edge:                    ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else28.i.do.body_crit_edge:                    ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %if.else28.i.do.body_crit_edge, %if.else19.i.do.body_crit_edge, %if.else.i.do.body_crit_edge, %if.end7.i.do.body_crit_edge
  %opc.addr.0.i = phi i8 [ 14, %if.end7.i.do.body_crit_edge ], [ 2, %if.else.i.do.body_crit_edge ], [ 0, %if.else19.i.do.body_crit_edge ], [ 16, %if.else28.i.do.body_crit_edge ]
  %13 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ver_ops.i, align 4
  %fmt_cmd.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %fmt_cmd.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fmt_cmd.i, align 4
  %call39.i = tail call i32 %16(i8 noundef zeroext %opc.addr.0.i, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i8 noundef zeroext %conv.i) #10
  %lock = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %17 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver_data.i.i, align 4
  %conv.i25 = add i32 %len, 255
  %add.i = add nuw i32 %call.i, 16
  %conv1.i = and i32 %conv.i25, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i)
  %cmp.i26 = icmp ult i32 %conv1.i, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i.i)
  %19 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %data.i.i, align 4
  %phi.cast.op.i = and i32 %conv.i25, 3
  %phi.cast.op.op.i = add nuw nsw i32 %phi.cast.op.i, 1
  %add.i.i = select i1 %cmp.i26, i32 %phi.cast.op.op.i, i32 4
  %20 = call ptr @memcpy(ptr %data.i.i, ptr %buf, i32 %add.i.i)
  %data.i.i.0.data.i.i.0.data.i.0.data.i.0.data.0.data.0.data.0..i.i = load i32, ptr %data.i.i, align 4
  %wr_base.i.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %wr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %data.i.i.0.data.i.i.0.data.i.0.data.i.0.data.0.data.0.data.0..i.i) #10, !srcloc !192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %conv1.i)
  %cmp8.i = icmp ugt i32 %conv1.i, 3
  br i1 %cmp8.i, label %if.then.i, label %do.body.pmic_arb_write_cmd_unlocked.exit_crit_edge

do.body.pmic_arb_write_cmd_unlocked.exit_crit_edge: ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_write_cmd_unlocked.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i = getelementptr i8, ptr %buf, i32 4
  %add10.i = add nuw i32 %call.i, 20
  %conv13.i = add i32 %len, 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i27.i)
  %23 = ptrtoint ptr %data.i27.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %data.i27.i, align 4
  %24 = and i32 %conv13.i, 3
  %narrow.i28.i = add nuw nsw i32 %24, 1
  %25 = call ptr @memcpy(ptr %data.i27.i, ptr %add.ptr.i, i32 %narrow.i28.i)
  %data.i27.i.0.data.i27.i.0.data.i27.0.data.i27.0.data.0.data.0.data.0..i30.i = load i32, ptr %data.i27.i, align 4
  %26 = ptrtoint ptr %wr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %wr_base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %27, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %data.i27.i.0.data.i27.i.0.data.i27.0.data.i27.0.data.0.data.0.data.0..i30.i) #10, !srcloc !192
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i27.i)
  br label %pmic_arb_write_cmd_unlocked.exit

pmic_arb_write_cmd_unlocked.exit:                 ; preds = %if.then.i, %do.body.pmic_arb_write_cmd_unlocked.exit_crit_edge
  %28 = tail call i32 @llvm.bswap.i32(i32 %call39.i) #10
  %29 = ptrtoint ptr %wr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wr_base.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %30, i32 %call.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %28) #10, !srcloc !192
  %31 = ptrtoint ptr %wr_base.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wr_base.i.i, align 4
  %call15.i = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %ctrl, ptr noundef %32, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  br label %cleanup

cleanup:                                          ; preds = %pmic_arb_write_cmd_unlocked.exit, %if.else28.i.cleanup_crit_edge, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15.i, %pmic_arb_write_cmd_unlocked.exit ], [ -22, %if.else28.i.cleanup_crit_edge ], [ %call.i, %entry.cleanup_crit_edge ], [ -22, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pmic_arb_read_apid_map_v5(ptr nocapture noundef %pmic_arb) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 16
  %0 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ver_ops, align 4
  %apid_map_offset7 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %apid_map_offset7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %apid_map_offset7, align 4
  %call8 = tail call i32 %3(i16 noundef zeroext 0) #10
  %core_size = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 5
  %4 = ptrtoint ptr %core_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %core_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call8, i32 %5)
  %cmp.not9 = icmp ult i32 %call8, %5
  br i1 %cmp.not9, label %if.end.lr.ph, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.end.lr.ph:                                     ; preds = %entry
  %apid_data = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19
  %core = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 4
  %cnfg = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 3
  %ppid_to_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %ee = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 9
  %last_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 18
  br label %if.end

if.end:                                           ; preds = %for.inc.if.end_crit_edge, %if.end.lr.ph
  %call15 = phi i32 [ %call8, %if.end.lr.ph ], [ %call, %for.inc.if.end_crit_edge ]
  %apidd.013 = phi ptr [ %apid_data, %if.end.lr.ph ], [ %incdec.ptr, %for.inc.if.end_crit_edge ]
  %i.010 = phi i16 [ 0, %if.end.lr.ph ], [ %inc, %for.inc.if.end_crit_edge ]
  %6 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %core, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 %call15
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end3

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end3:                                          ; preds = %if.end
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %shr = lshr i32 %9, 8
  %10 = trunc i32 %shr to i16
  %conv = and i16 %10, 4095
  %and4 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %11 = ptrtoint ptr %cnfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %cnfg, align 4
  %conv7 = zext i16 %i.010 to i32
  %mul = shl nuw nsw i32 %conv7, 2
  %add = add nuw nsw i32 %mul, 1792
  %add.ptr8 = getelementptr i8, ptr %12, i32 %add
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #10, !srcloc !190
  %14 = lshr i32 %13, 24
  %15 = trunc i32 %14 to i8
  %conv12 = and i8 %15, 7
  %write_ee = getelementptr inbounds %struct.apid_data, ptr %apidd.013, i32 0, i32 1
  %16 = ptrtoint ptr %write_ee to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv12, ptr %write_ee, align 2
  %spec.select = select i1 %tobool5.not, i8 -1, i8 %conv12
  %irq_ee = getelementptr inbounds %struct.apid_data, ptr %apidd.013, i32 0, i32 2
  %17 = ptrtoint ptr %irq_ee to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %spec.select, ptr %irq_ee, align 1
  %18 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ppid_to_apid, align 4
  %idxprom = zext i16 %conv to i32
  %arrayidx = getelementptr i16, ptr %19, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %21)
  %tobool20.not = icmp sgt i16 %21, -1
  %and26 = and i16 %21, 32767
  %idxprom29 = zext i16 %and26 to i32
  %brmerge = select i1 %tobool20.not, i1 true, i1 %tobool5.not
  br i1 %brmerge, label %if.end3.if.else_crit_edge, label %land.lhs.true35

if.end3.if.else_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true35:                                  ; preds = %if.end3
  %write_ee36 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %idxprom29, i32 1
  %22 = ptrtoint ptr %write_ee36 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %write_ee36, align 2
  %24 = ptrtoint ptr %ee to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ee, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp39 = icmp eq i8 %23, %25
  br i1 %cmp39, label %if.then41, label %land.lhs.true35.if.else_crit_edge

land.lhs.true35.if.else_crit_edge:                ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then41:                                        ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #12
  %irq_ee43 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %idxprom29, i32 2
  %26 = ptrtoint ptr %irq_ee43 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %spec.select, ptr %irq_ee43, align 1
  br label %if.end54

if.else:                                          ; preds = %land.lhs.true35.if.else_crit_edge, %if.end3.if.else_crit_edge
  %tobool5.not.not = xor i1 %tobool5.not, true
  %brmerge1 = select i1 %tobool20.not, i1 true, i1 %tobool5.not.not
  br i1 %brmerge1, label %if.then47, label %if.else.if.end54_crit_edge

if.else.if.end54_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then47:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i16 %i.010, -32768
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %or, ptr %arrayidx, align 2
  br label %if.end54

if.end54:                                         ; preds = %if.then47, %if.else.if.end54_crit_edge, %if.then41
  %28 = ptrtoint ptr %apidd.013 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv, ptr %apidd.013, align 2
  %29 = ptrtoint ptr %last_apid to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %i.010, ptr %last_apid, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end54, %if.end.for.inc_crit_edge
  %inc = add i16 %i.010, 1
  %incdec.ptr = getelementptr %struct.apid_data, ptr %apidd.013, i32 1
  %30 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ver_ops, align 4
  %apid_map_offset = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %31, i32 0, i32 9
  %32 = ptrtoint ptr %apid_map_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %apid_map_offset, align 4
  %call = tail call i32 %33(i16 noundef zeroext %inc) #10
  %34 = ptrtoint ptr %core_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %core_size, align 4
  %cmp.not = icmp ult i32 %call, %35
  br i1 %cmp.not, label %for.inc.if.end_crit_edge, label %for.inc.do.body_crit_edge

for.inc.do.body_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.inc.if.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body:                                          ; preds = %for.inc.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic_arb_read_apid_map_v5, %if.then62)) #10
          to label %do.end [label %if.then62], !srcloc !191

if.then62:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %spmic = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 15
  %36 = ptrtoint ptr %spmic to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %spmic, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug195, ptr noundef %37, ptr noundef nonnull @.str.56) #10
  br label %do.end

do.end:                                           ; preds = %if.then62, %do.body
  %ppid_to_apid68 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %spmic94 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %for.inc106.for.body_crit_edge, %do.end
  %indvars.iv = phi i32 [ 0, %do.end ], [ %indvars.iv.next, %for.inc106.for.body_crit_edge ]
  %38 = ptrtoint ptr %ppid_to_apid68 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ppid_to_apid68, align 4
  %arrayidx70 = getelementptr i16, ptr %39, i32 %indvars.iv
  %40 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %arrayidx70, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %41)
  %tobool73.not = icmp sgt i16 %41, -1
  br i1 %tobool73.not, label %for.body.for.inc106_crit_edge, label %if.then74

for.body.for.inc106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc106

if.then74:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug196, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pmic_arb_read_apid_map_v5, %if.then93)) #10
          to label %for.inc106 [label %if.then93], !srcloc !191

if.then93:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #12
  %and76 = and i16 %41, 32767
  %idxprom79 = zext i16 %and76 to i32
  %42 = ptrtoint ptr %spmic94 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %spmic94, align 4
  %write_ee98 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %idxprom79, i32 1
  %44 = ptrtoint ptr %write_ee98 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %write_ee98, align 2
  %conv99 = zext i8 %45 to i32
  %irq_ee100 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %idxprom79, i32 2
  %46 = ptrtoint ptr %irq_ee100 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %irq_ee100, align 1
  %conv101 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug196, ptr noundef %43, ptr noundef nonnull @.str.57, i32 noundef %indvars.iv, i32 noundef %idxprom79, i32 noundef %conv99, i32 noundef %conv101) #10
  br label %for.inc106

for.inc106:                                       ; preds = %if.then93, %if.then74, %for.body.for.inc106_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 4096
  br i1 %exitcond.not, label %for.end108, label %for.inc106.for.body_crit_edge

for.inc106.for.body_crit_edge:                    ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end108:                                       ; preds = %for.inc106
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pmic_arb_chained_irq(ptr noundef %desc) #2 align 64 {
entry:
  %irq_mask.i.i = alloca i8, align 1
  %irq.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %ver_ops1 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ver_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ver_ops1, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %min_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %min_apid to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %min_apid, align 2
  %8 = lshr i16 %7, 5
  %9 = zext i16 %8 to i32
  %max_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 11
  %10 = ptrtoint ptr %max_apid to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %max_apid, align 4
  %12 = lshr i16 %11, 5
  %ee5 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %ee5 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %ee5, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %15 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %18, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %18(ptr noundef %irq_data.i) #10
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %19 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %20(ptr noundef %irq_data4.i) #10
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %21 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %22, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %22(ptr noundef %irq_data4.i) #10
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp2(i16 %8, i16 %12)
  %cmp.not44 = icmp ugt i16 %8, %12
  br i1 %cmp.not44, label %chained_irq_enter.exit.for.end_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end_crit_edge:         ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %owner_acc_status = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 5
  %acc_enable = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 6
  %domain.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 14
  %spmic.i.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %narrow = add nuw nsw i16 %12, 1
  %23 = zext i16 %narrow to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.045 = phi i32 [ %9, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %24 = ptrtoint ptr %owner_acc_status to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner_acc_status, align 4
  %conv7 = trunc i32 %i.045 to i16
  %call8 = call ptr %25(ptr noundef %1, i8 noundef zeroext %14, i16 noundef zeroext %conv7) #10
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call8) #10, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not42 = icmp eq i32 %26, 0
  br i1 %tobool.not42, label %for.body.for.inc_crit_edge, label %while.body.lr.ph

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

while.body.lr.ph:                                 ; preds = %for.body
  %27 = call i32 @llvm.bswap.i32(i32 %26)
  %mul = shl i32 %i.045, 5
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %status.043 = phi i32 [ %27, %while.body.lr.ph ], [ %and, %if.end.while.body_crit_edge ]
  %28 = call i32 @llvm.cttz.i32(i32 %status.043, i1 true), !range !193
  %shl = shl nuw i32 1, %28
  %neg = xor i32 %shl, -1
  %and = and i32 %status.043, %neg
  %add = or i32 %28, %mul
  %29 = ptrtoint ptr %acc_enable to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %acc_enable, align 4
  %conv11 = trunc i32 %add to i16
  %call12 = call ptr %30(ptr noundef %1, i16 noundef zeroext %conv11) #10
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call12) #10, !srcloc !190
  %32 = and i32 %31, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool16.not = icmp eq i32 %32, 0
  br i1 %tobool16.not, label %while.body.if.end_crit_edge, label %if.then

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %while.body
  %idxprom.i = and i32 %add, 65535
  %arrayidx.i = getelementptr %struct.spmi_pmic_arb, ptr %1, i32 0, i32 19, i32 %idxprom.i
  %33 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i, align 2
  %35 = ptrtoint ptr %ver_ops1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ver_ops1, align 4
  %irq_status.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %36, i32 0, i32 7
  %37 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %irq_status.i, align 4
  %call.i = call ptr %38(ptr noundef %1, i16 noundef zeroext %conv11) #10
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call.i) #10, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not45.i = icmp eq i32 %39, 0
  br i1 %tobool.not45.i, label %if.then.if.end_crit_edge, label %while.body.lr.ph.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

while.body.lr.ph.i:                               ; preds = %if.then
  %40 = call i32 @llvm.bswap.i32(i32 %39) #10
  %41 = lshr i16 %34, 8
  %and12.i = zext i16 %41 to i32
  %shl13.i = shl i32 %and12.i, 28
  %42 = and i16 %34, 255
  %and15.i = zext i16 %42 to i32
  %shl16.i = shl nuw nsw i32 %and15.i, 20
  %or.i = or i32 %shl13.i, %shl16.i
  %and21.i = and i32 %add, 511
  br label %while.body.i

while.body.i:                                     ; preds = %while.cond.backedge.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %status.046.i = phi i32 [ %40, %while.body.lr.ph.i ], [ %and10.i, %while.cond.backedge.i.while.body.i_crit_edge ]
  %43 = call i32 @llvm.cttz.i32(i32 %status.046.i, i1 true) #10, !range !193
  %shl.i = shl nuw i32 1, %43
  %neg.i = xor i32 %shl.i, -1
  %and10.i = and i32 %status.046.i, %neg.i
  %44 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %domain.i, align 4
  %and17.i = shl nuw nsw i32 %43, 16
  %shl18.i = and i32 %and17.i, 458752
  %or19.i = or i32 %shl18.i, %or.i
  %or23.i = or i32 %or19.i, %and21.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i.i) #10
  %46 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %irq.i.i, align 4, !annotation !189
  %call.i.i = call ptr @__irq_resolve_mapping(ptr noundef %45, i32 noundef %or23.i, ptr noundef nonnull %irq.i.i) #10
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_mapping.exit.thread.i, label %irq_find_mapping.exit.i

irq_find_mapping.exit.thread.i:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  br label %if.then.i

irq_find_mapping.exit.i:                          ; preds = %while.body.i
  %47 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %irq.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.i = icmp eq i32 %48, 0
  br i1 %cmp.i, label %irq_find_mapping.exit.i.if.then.i_crit_edge, label %if.end.i37

irq_find_mapping.exit.i.if.then.i_crit_edge:      ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i

if.then.i:                                        ; preds = %irq_find_mapping.exit.i.if.then.i_crit_edge, %irq_find_mapping.exit.thread.i
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %51 = lshr i16 %50, 8
  %conv2.i.i = trunc i16 %51 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_mask.i.i) #10
  %conv5.i.i = trunc i32 %shl.i to i8
  %52 = ptrtoint ptr %irq_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv5.i.i, ptr %irq_mask.i.i, align 1
  %conv6.i.i = shl i32 %shl.i, 24
  %53 = ptrtoint ptr %ver_ops1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ver_ops1, align 4
  %irq_clear.i.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %irq_clear.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq_clear.i.i, align 4
  %call.i41.i = call ptr %56(ptr noundef %1, i16 noundef zeroext %conv11) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call.i41.i, i32 %conv6.i.i) #10, !srcloc !192
  %57 = ptrtoint ptr %spmic.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %spmic.i.i, align 4
  %59 = shl i16 %50, 8
  %add.i.i = or i16 %59, 20
  %call10.i.i = call i32 @pmic_arb_write_cmd(ptr noundef %58, i8 noundef zeroext 48, i8 noundef zeroext %conv2.i.i, i16 noundef zeroext %add.i.i, ptr noundef nonnull %irq_mask.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i.i)
  %tobool.not.i42.i = icmp eq i32 %call10.i.i, 0
  br i1 %tobool.not.i42.i, label %if.then.i.if.end20.i.i_crit_edge, label %do.body.i.i

if.then.i.if.end20.i.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

do.body.i.i:                                      ; preds = %if.then.i
  %call11.i.i = call i32 @___ratelimit(ptr noundef nonnull @cleanup_irq._rs, ptr noundef nonnull @__func__.cleanup_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i.i)
  %tobool12.not.i.i = icmp eq i32 %call11.i.i, 0
  br i1 %tobool12.not.i.i, label %do.body.i.i.if.end20.i.i_crit_edge, label %do.end.i.i

do.body.i.i.if.end20.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %spmic.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %spmic.i.i, align 4
  %conv16.i.i = and i32 %shl.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.70, i32 noundef %conv16.i.i, i32 noundef %conv.i.i) #13
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.if.end20.i.i_crit_edge, %if.then.i.if.end20.i.i_crit_edge
  %62 = ptrtoint ptr %spmic.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %spmic.i.i, align 4
  %64 = or i16 %59, 22
  %call26.i.i = call i32 @pmic_arb_write_cmd(ptr noundef %63, i8 noundef zeroext 48, i8 noundef zeroext %conv2.i.i, i16 noundef zeroext %64, ptr noundef nonnull %irq_mask.i.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end20.i.i.cleanup_irq.exit.i_crit_edge, label %do.body29.i.i

if.end20.i.i.cleanup_irq.exit.i_crit_edge:        ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_irq.exit.i

do.body29.i.i:                                    ; preds = %if.end20.i.i
  %call30.i.i = call i32 @___ratelimit(ptr noundef nonnull @cleanup_irq._rs.71, ptr noundef nonnull @__func__.cleanup_irq) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %do.body29.i.i.cleanup_irq.exit.i_crit_edge, label %do.end35.i.i

do.body29.i.i.cleanup_irq.exit.i_crit_edge:       ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup_irq.exit.i

do.end35.i.i:                                     ; preds = %do.body29.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %spmic.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spmic.i.i, align 4
  %conv38.i.i = and i32 %shl.i, 255
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.70, i32 noundef %conv38.i.i, i32 noundef %conv.i.i) #13
  br label %cleanup_irq.exit.i

cleanup_irq.exit.i:                               ; preds = %do.end35.i.i, %do.body29.i.i.cleanup_irq.exit.i_crit_edge, %if.end20.i.i.cleanup_irq.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_mask.i.i) #10
  br label %while.cond.backedge.i

while.cond.backedge.i:                            ; preds = %if.end.i37, %cleanup_irq.exit.i
  %tobool.not.i36 = icmp eq i32 %and10.i, 0
  br i1 %tobool.not.i36, label %while.cond.backedge.i.if.end_crit_edge, label %while.cond.backedge.i.while.body.i_crit_edge

while.cond.backedge.i.while.body.i_crit_edge:     ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.backedge.i.if.end_crit_edge:           ; preds = %while.cond.backedge.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i37:                                       ; preds = %irq_find_mapping.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call26.i = call i32 @generic_handle_irq(i32 noundef %48) #10
  br label %while.cond.backedge.i

if.end:                                           ; preds = %while.cond.backedge.i.if.end_crit_edge, %if.then.if.end_crit_edge, %while.body.if.end_crit_edge
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond = icmp eq i32 %inc, %23
  br i1 %exitcond, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %chained_irq_enter.exit.for.end_crit_edge
  %67 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i39 = icmp eq ptr %68, null
  br i1 %tobool.not.i39, label %if.else.i40, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %chained_irq_exit.exit

if.else.i40:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %69 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i40, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %70, %if.else.i40 ], [ %68, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spmi_controller_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v1(ptr noundef %pmic_arb, i16 noundef zeroext %ppid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %mapping_table1 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 12
  %0 = ptrtoint ptr %mapping_table1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mapping_table1, align 4
  %ppid_to_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %2 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ppid_to_apid, align 4
  %idxprom = zext i16 %ppid to i32
  %arrayidx = getelementptr i16, ptr %3, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not = icmp sgt i16 %5, -1
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %mapping_table_valid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 13
  %cnfg = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 3
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = and i16 %5, 32767
  %conv5 = zext i16 %and3 to i32
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.099 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %index.097 = phi i32 [ 0, %for.cond.preheader ], [ %index.1, %for.inc.for.body_crit_edge ]
  %call = tail call i32 @_test_and_set_bit(i32 noundef %index.097, ptr noundef %mapping_table_valid) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool7.not = icmp eq i32 %call, 0
  br i1 %tobool7.not, label %if.then8, label %for.body.if.end11_crit_edge

for.body.if.end11_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %cnfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cnfg, align 4
  %mul = shl nuw nsw i32 %index.097, 2
  %add = add nuw nsw i32 %mul, 2816
  %add.ptr = getelementptr i8, ptr %7, i32 %add
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !190
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx10 = getelementptr i32, ptr %1, i32 %index.097
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %for.body.if.end11_crit_edge
  %arrayidx12 = getelementptr i32, ptr %1, i32 %index.097
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  %shr = lshr i32 %12, 18
  %and14 = and i32 %shr, 15
  %shl = shl nuw nsw i32 1, %and14
  %and15 = and i32 %shl, %idxprom
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else37, label %if.then17

if.then17:                                        ; preds = %if.end11
  %13 = and i32 %12, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %if.else, label %if.then17.for.inc_crit_edge

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #12
  %conv26 = and i32 %12, 255
  %14 = trunc i32 %conv26 to i16
  %conv28 = or i16 %14, -32768
  %15 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ppid_to_apid, align 4
  %arrayidx31 = getelementptr i16, ptr %16, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv28, ptr %arrayidx31, align 2
  %arrayidx33 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %conv26
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %ppid, ptr %arrayidx33, align 2
  br label %cleanup

if.else37:                                        ; preds = %if.end11
  %19 = and i32 %12, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool40.not = icmp eq i32 %19, 0
  %shr45 = lshr i32 %12, 9
  br i1 %tobool40.not, label %if.else44, label %if.else37.for.inc_crit_edge

if.else37.for.inc_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else44:                                        ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #12
  %conv47 = and i32 %shr45, 255
  %20 = trunc i32 %conv47 to i16
  %conv50 = or i16 %20, -32768
  %21 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ppid_to_apid, align 4
  %arrayidx53 = getelementptr i16, ptr %22, i32 %idxprom
  %23 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv50, ptr %arrayidx53, align 2
  %arrayidx56 = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %conv47
  %24 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %ppid, ptr %arrayidx56, align 2
  br label %cleanup

for.inc:                                          ; preds = %if.else37.for.inc_crit_edge, %if.then17.for.inc_crit_edge
  %index.1.in = phi i32 [ %12, %if.then17.for.inc_crit_edge ], [ %shr45, %if.else37.for.inc_crit_edge ]
  %index.1 = and i32 %index.1.in, 255
  %inc = add nuw nsw i32 %i.099, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.else44, %if.else, %if.then
  %retval.0 = phi i32 [ %conv5, %if.then ], [ %conv26, %if.else ], [ %conv47, %if.else44 ], [ -19, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_offset_v1(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef %ch_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channel = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 7
  %0 = ptrtoint ptr %channel to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %channel, align 4
  %conv = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv, 7
  %add = add nuw nsw i32 %mul, 2048
  ret i32 %add
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_fmt_cmd_v1(i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i8 noundef zeroext %bc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %opc to i32
  %shl = shl i32 %conv, 27
  %0 = and i8 %sid, 15
  %and = zext i8 %0 to i32
  %shl2 = shl nuw nsw i32 %and, 20
  %or = or i32 %shl2, %shl
  %conv3 = zext i16 %addr to i32
  %shl4 = shl nuw nsw i32 %conv3, 4
  %or5 = or i32 %or, %shl4
  %1 = and i8 %bc, 7
  %and7 = zext i8 %1 to i32
  %or8 = or i32 %or5, %and7
  ret i32 %or8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_non_data_cmd_v1(ptr noundef %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ver_ops, align 4
  %offset1 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offset1, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %sid, i16 noundef zeroext 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %or = zext i8 %opc to i32
  %shl = shl i32 %or, 27
  %6 = and i8 %sid, 15
  %and = zext i8 %6 to i32
  %shl4 = shl nuw nsw i32 %and, 20
  %or5 = or i32 %shl4, %shl
  %lock = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 6
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %7 = tail call i32 @llvm.bswap.i32(i32 %or5) #10
  %wr_base.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %wr_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %call2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %7) #10, !srcloc !192
  %10 = ptrtoint ptr %wr_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %wr_base.i, align 4
  %call9 = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %ctrl, ptr noundef %11, i8 noundef zeroext %sid, i16 noundef zeroext 0, i32 noundef 0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ %call2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v1(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %m, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %conv = zext i8 %m to i32
  %mul = shl nuw nsw i32 %conv, 5
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %conv1 = zext i16 %n to i32
  %mul2 = shl nuw nsw i32 %conv1, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul2
  ret ptr %add.ptr3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v1(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 512
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v1(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1536
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v1(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2560
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_apid_map_offset_v2(i16 noundef zeroext %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 2048
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pmic_arb_wait_for_done(ptr noundef %ctrl, ptr noundef %base, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef %ch_type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %ctrl, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ver_ops, align 4
  %offset1 = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %offset1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %offset1, align 4
  %call2 = tail call i32 %5(ptr noundef %1, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef %ch_type) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add nuw i32 %call2, 8
  %add.ptr = getelementptr i8, ptr %base, i32 %add
  br label %while.body

while.body:                                       ; preds = %if.end52.while.body_crit_edge, %if.end
  %dec88 = phi i32 [ 99, %if.end ], [ %dec, %if.end52.while.body_crit_edge ]
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !190
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end52, label %if.then5

if.then5:                                         ; preds = %while.body
  %and6 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %sid to i32
  %conv9 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, i32 noundef %conv, i32 noundef %conv9, i32 noundef %7) #13
  br label %cleanup

if.end10:                                         ; preds = %if.then5
  %and11 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end41, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %conv18 = zext i8 %sid to i32
  %conv19 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.37, i32 noundef %conv18, i32 noundef %conv19, i32 noundef %7) #13
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 272, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end41:                                         ; preds = %if.end10
  %and42 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.cleanup_crit_edge, label %do.end47

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end47:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %conv49 = zext i8 %sid to i32
  %conv50 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, i32 noundef %conv49, i32 noundef %conv50, i32 noundef %7) #13
  br label %cleanup

if.end52:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #10
  %dec = add nsw i32 %dec88, -1
  %tobool.not = icmp eq i32 %dec88, 0
  br i1 %tobool.not, label %do.end55, label %if.end52.while.body_crit_edge

if.end52.while.body_crit_edge:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end55:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  %conv57 = zext i8 %sid to i32
  %conv58 = zext i16 %addr to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %ctrl, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.37, i32 noundef %conv57, i32 noundef %conv58, i32 noundef %7) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end47, %if.end41.cleanup_crit_edge, %do.end16, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end ], [ -5, %do.end16 ], [ -5, %do.end47 ], [ -110, %do.end55 ], [ %call2, %entry.cleanup_crit_edge ], [ 0, %if.end41.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v2(ptr nocapture noundef %pmic_arb, i16 noundef zeroext %ppid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppid_to_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %0 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppid_to_apid, align 4
  %idxprom = zext i16 %ppid to i32
  %arrayidx = getelementptr i16, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %tobool.not = icmp sgt i16 %3, -1
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %last_apid.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 18
  %4 = ptrtoint ptr %last_apid.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %last_apid.i, align 4
  %ver_ops.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 16
  %6 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ver_ops.i, align 4
  %apid_map_offset54.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %apid_map_offset54.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %apid_map_offset54.i, align 4
  %call55.i = tail call i32 %9(i16 noundef zeroext %5) #10
  %core_size.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 5
  %10 = ptrtoint ptr %core_size.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %core_size.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call55.i, i32 %11)
  %cmp.not56.i = icmp ult i32 %call55.i, %11
  br i1 %cmp.not56.i, label %if.end.lr.ph.i, label %if.then.pmic_arb_find_apid.exit_crit_edge

if.then.pmic_arb_find_apid.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_find_apid.exit

if.end.lr.ph.i:                                   ; preds = %if.then
  %idxprom.i = zext i16 %5 to i32
  %arrayidx.i = getelementptr %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 19, i32 %idxprom.i
  %cnfg.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 3
  %core.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 4
  br label %if.end.i

if.end.i:                                         ; preds = %for.inc.i.if.end.i_crit_edge, %if.end.lr.ph.i
  %call61.i = phi i32 [ %call55.i, %if.end.lr.ph.i ], [ %call.i, %for.inc.i.if.end.i_crit_edge ]
  %apidd.059.i = phi ptr [ %arrayidx.i, %if.end.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.if.end.i_crit_edge ]
  %apid.057.i = phi i16 [ %5, %if.end.lr.ph.i ], [ %inc.i, %for.inc.i.if.end.i_crit_edge ]
  %12 = ptrtoint ptr %cnfg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cnfg.i, align 4
  %conv.i = zext i16 %apid.057.i to i32
  %mul.i = shl nuw nsw i32 %conv.i, 2
  %add.i = add nuw nsw i32 %mul.i, 1792
  %add.ptr.i = getelementptr i8, ptr %13, i32 %add.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !190
  %15 = lshr i32 %14, 24
  %16 = trunc i32 %15 to i8
  %conv3.i = and i8 %16, 7
  %irq_ee.i = getelementptr inbounds %struct.apid_data, ptr %apidd.059.i, i32 0, i32 2
  %17 = ptrtoint ptr %irq_ee.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv3.i, ptr %irq_ee.i, align 1
  %write_ee.i = getelementptr inbounds %struct.apid_data, ptr %apidd.059.i, i32 0, i32 1
  %18 = ptrtoint ptr %write_ee.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv3.i, ptr %write_ee.i, align 2
  %19 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %core.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %20, i32 %call61.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #10, !srcloc !190
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.i = icmp eq i32 %21, 0
  br i1 %tobool.not.i, label %if.end.i.for.inc.i_crit_edge, label %if.end10.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end10.i:                                       ; preds = %if.end.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  %shr.i = lshr i32 %22, 8
  %23 = trunc i32 %shr.i to i16
  %conv12.i = and i16 %23, 4095
  %or.i = or i16 %apid.057.i, -32768
  %24 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ppid_to_apid, align 4
  %idxprom15.i = zext i16 %conv12.i to i32
  %arrayidx16.i = getelementptr i16, ptr %25, i32 %idxprom15.i
  %26 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %or.i, ptr %arrayidx16.i, align 2
  %27 = ptrtoint ptr %apidd.059.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv12.i, ptr %apidd.059.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %conv12.i, i16 %ppid)
  %cmp20.i = icmp eq i16 %conv12.i, %ppid
  br i1 %cmp20.i, label %if.end10.i.pmic_arb_find_apid.exit_crit_edge, label %if.end10.i.for.inc.i_crit_edge

if.end10.i.for.inc.i_crit_edge:                   ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

if.end10.i.pmic_arb_find_apid.exit_crit_edge:     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_find_apid.exit

for.inc.i:                                        ; preds = %if.end10.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge
  %inc.i = add i16 %apid.057.i, 1
  %incdec.ptr.i = getelementptr %struct.apid_data, ptr %apidd.059.i, i32 1
  %28 = ptrtoint ptr %ver_ops.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ver_ops.i, align 4
  %apid_map_offset.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %29, i32 0, i32 9
  %30 = ptrtoint ptr %apid_map_offset.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %apid_map_offset.i, align 4
  %call.i = tail call i32 %31(i16 noundef zeroext %inc.i) #10
  %32 = ptrtoint ptr %core_size.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %core_size.i, align 4
  %cmp.not.i = icmp ult i32 %call.i, %33
  br i1 %cmp.not.i, label %for.inc.i.if.end.i_crit_edge, label %for.inc.i.pmic_arb_find_apid.exit_crit_edge

for.inc.i.pmic_arb_find_apid.exit_crit_edge:      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %pmic_arb_find_apid.exit

for.inc.i.if.end.i_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

pmic_arb_find_apid.exit:                          ; preds = %for.inc.i.pmic_arb_find_apid.exit_crit_edge, %if.end10.i.pmic_arb_find_apid.exit_crit_edge, %if.then.pmic_arb_find_apid.exit_crit_edge
  %apid.1.i = phi i16 [ %5, %if.then.pmic_arb_find_apid.exit_crit_edge ], [ %inc.i, %for.inc.i.pmic_arb_find_apid.exit_crit_edge ], [ %or.i, %if.end10.i.pmic_arb_find_apid.exit_crit_edge ]
  %34 = and i16 %apid.1.i, 32767
  %35 = ptrtoint ptr %last_apid.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %last_apid.i, align 4
  br label %if.end

if.end:                                           ; preds = %pmic_arb_find_apid.exit, %entry.if.end_crit_edge
  %apid_valid.0 = phi i16 [ %3, %entry.if.end_crit_edge ], [ %apid.1.i, %pmic_arb_find_apid.exit ]
  %conv1 = zext i16 %apid_valid.0 to i32
  %and2 = and i32 %conv1, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %and7 = and i32 %conv1, 32767
  %retval.0 = select i1 %tobool3.not, i32 -19, i32 %and7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pmic_arb_offset_v2(ptr nocapture noundef %pmic_arb, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef %ch_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sid to i16
  %or = tail call i16 @llvm.fshl.i16(i16 %conv, i16 %addr, i16 8)
  %call = tail call i32 @pmic_arb_ppid_to_apid_v2(ptr noundef %pmic_arb, i16 noundef zeroext %or)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ee = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 9
  %0 = ptrtoint ptr %ee to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ee, align 4
  %conv5 = zext i8 %1 to i32
  %mul = shl nuw nsw i32 %conv5, 12
  %conv6 = shl i32 %call, 15
  %mul7 = and i32 %conv6, 2147450880
  %add = add nuw i32 %mul, %mul7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %add, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_fmt_cmd_v2(i8 noundef zeroext %opc, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i8 noundef zeroext %bc) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %opc to i32
  %shl = shl i32 %conv, 27
  %0 = shl i16 %addr, 4
  %1 = and i16 %0, 4080
  %shl2 = zext i16 %1 to i32
  %or = or i32 %shl, %shl2
  %2 = and i8 %bc, 7
  %and4 = zext i8 %2 to i32
  %or5 = or i32 %or, %and4
  ret i32 %or5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_non_data_cmd_v2(ptr nocapture noundef readnone %ctrl, i8 noundef zeroext %opc, i8 noundef zeroext %sid) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 -95
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v2(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %m, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1048576
  %conv = zext i8 %m to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %conv2 = zext i16 %n to i32
  %mul3 = shl nuw nsw i32 %conv2, 2
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 %mul3
  ret ptr %add.ptr4
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v2(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  ret ptr %add.ptr
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v2(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v2(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 8
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v3(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %m, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 2097152
  %conv = zext i8 %m to i32
  %mul = shl nuw nsw i32 %conv, 12
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  %conv2 = zext i16 %n to i32
  %mul3 = shl nuw nsw i32 %conv2, 2
  %add.ptr4 = getelementptr i8, ptr %add.ptr1, i32 %mul3
  ret ptr %add.ptr4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_ppid_to_apid_v5(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %ppid) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ppid_to_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %0 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppid_to_apid, align 4
  %idxprom = zext i16 %ppid to i32
  %arrayidx = getelementptr i16, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and5 = and i32 %conv, 32767
  %retval.0 = select i1 %tobool.not, i32 -19, i32 %and5
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_offset_v5(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %sid, i16 noundef zeroext %addr, i32 noundef %ch_type) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sid to i16
  %or = tail call i16 @llvm.fshl.i16(i16 %conv, i16 %addr, i16 8)
  %ppid_to_apid.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 17
  %0 = ptrtoint ptr %ppid_to_apid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ppid_to_apid.i, align 4
  %idxprom.i = zext i16 %or to i32
  %arrayidx.i = getelementptr i16, ptr %1, i32 %idxprom.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %3 to i32
  %and.i = and i32 %conv.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and5.i = and i32 %conv.i, 32767
  %retval.0.i = select i1 %tobool.not.i, i32 -19, i32 %and5.i
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = zext i32 %ch_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %ch_type, label %if.end.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb8
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %ee = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 9
  %5 = ptrtoint ptr %ee to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %ee, align 4
  %conv5 = zext i8 %6 to i32
  %mul = shl nuw nsw i32 %conv5, 16
  %conv6 = shl nsw i32 %retval.0.i, 7
  %mul7 = and i32 %conv6, 8388480
  %add = add nuw nsw i32 %mul, %mul7
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %mul10 = shl nsw i32 %retval.0.i, 16
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %mul10, %sw.bb8 ], [ %add, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_owner_acc_status_v5(ptr nocapture noundef readonly %pmic_arb, i8 noundef zeroext %m, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 2
  %0 = ptrtoint ptr %intr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intr, align 4
  %conv = zext i8 %m to i32
  %mul = shl nuw nsw i32 %conv, 16
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  %conv1 = zext i16 %n to i32
  %mul2 = shl nuw nsw i32 %conv1, 2
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 %mul2
  ret ptr %add.ptr3
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_acc_enable_v5(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_base = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 1
  %0 = ptrtoint ptr %wr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 256
  %conv = zext i16 %n to i32
  %mul = shl nuw i32 %conv, 16
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_status_v5(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_base = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 1
  %0 = ptrtoint ptr %wr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 260
  %conv = zext i16 %n to i32
  %mul = shl nuw i32 %conv, 16
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @pmic_arb_irq_clear_v5(ptr nocapture noundef readonly %pmic_arb, i16 noundef zeroext %n) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %wr_base = getelementptr inbounds %struct.spmi_pmic_arb, ptr %pmic_arb, i32 0, i32 1
  %0 = ptrtoint ptr %wr_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wr_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 264
  %conv = zext i16 %n to i32
  %mul = shl nuw i32 %conv, 16
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  ret ptr %add.ptr1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @pmic_arb_apid_map_offset_v5(i16 noundef zeroext %n) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %n to i32
  %mul = shl nuw nsw i32 %conv, 2
  %add = add nuw nsw i32 %mul, 2304
  ret i32 %add
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %hwirq = alloca i32, align 4
  %type = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hwirq) #10
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %hwirq, align 4, !annotation !189
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %type) #10
  %3 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %type, align 4, !annotation !189
  %call = call i32 @qpnpint_irq_domain_translate(ptr noundef %domain, ptr noundef %data, ptr noundef nonnull %hwirq, ptr noundef nonnull %type)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp13.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp13.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 4
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %and.i = and i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool3.not.i = icmp eq i32 %and.i, 0
  %handle_level_irq.handle_edge_irq.i = select i1 %tobool3.not.i, ptr @handle_level_irq, ptr @handle_edge_irq
  br label %for.body

for.body:                                         ; preds = %qpnpint_irq_domain_map.exit.for.body_crit_edge, %for.body.lr.ph
  %i.014 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %qpnpint_irq_domain_map.exit.for.body_crit_edge ]
  %add = add i32 %i.014, %virq
  %add1 = add i32 %5, %i.014
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qpnpint_irq_domain_map.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qpnpint_irq_domain_alloc, %if.then.i)) #10
          to label %qpnpint_irq_domain_map.exit [label %if.then.i], !srcloc !191

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spmic.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qpnpint_irq_domain_map.__UNIQUE_ID_ddebug194, ptr noundef %9, ptr noundef nonnull @.str.59, i32 noundef %add, i32 noundef %add1, i32 noundef %7) #10
  br label %qpnpint_irq_domain_map.exit

qpnpint_irq_domain_map.exit:                      ; preds = %if.then.i, %for.body
  tail call void @__irq_set_lockdep_class(i32 noundef %add, ptr noundef nonnull @qpnpint_irq_lock_class, ptr noundef nonnull @qpnpint_irq_request_class) #10
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add, i32 noundef %add1, ptr noundef nonnull @pmic_arb_irqchip, ptr noundef %1, ptr noundef nonnull %handle_level_irq.handle_edge_irq.i, ptr noundef null, ptr noundef null) #10
  %inc = add nuw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %qpnpint_irq_domain_map.exit.cleanup_crit_edge, label %qpnpint_irq_domain_map.exit.for.body_crit_edge

qpnpint_irq_domain_map.exit.for.body_crit_edge:   ; preds = %qpnpint_irq_domain_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

qpnpint_irq_domain_map.exit.cleanup_crit_edge:    ; preds = %qpnpint_irq_domain_map.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %qpnpint_irq_domain_map.exit.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %qpnpint_irq_domain_map.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %type) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hwirq) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_activate(ptr nocapture noundef readnone %domain, ptr nocapture noundef readonly %d, i1 noundef zeroext %reserve) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %conv4 = and i32 %3, 511
  %irq_ee = getelementptr %struct.spmi_pmic_arb, ptr %1, i32 0, i32 19, i32 %conv4, i32 2
  %4 = ptrtoint ptr %irq_ee to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq_ee, align 1
  %ee = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %ee to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ee, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv14 = zext i8 %7 to i32
  %conv13 = zext i8 %5 to i32
  %shr10 = lshr i32 %3, 16
  %conv12 = and i32 %shr10, 7
  %shr6 = lshr i32 %3, 28
  %shr = lshr i32 %3, 20
  %conv = and i32 %shr, 255
  %spmic = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %spmic to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %spmic, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.64, i32 noundef %shr6, i32 noundef %conv, i32 noundef %conv12, i32 noundef %conv14, i32 noundef %conv13) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_domain_translate(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef %out_hwirq, ptr nocapture noundef writeonly %out_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug192, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qpnpint_irq_domain_translate, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !191

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %spmic = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %spmic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spmic, align 4
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  %arrayidx3 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3, align 4
  %arrayidx4 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug192, ptr noundef %3, ptr noundef nonnull @.str.67, i32 noundef %5, i32 noundef %7, i32 noundef %9) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 6
  %10 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %11, null
  %cmp.i.i.i = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %do.end.irq_domain_get_of_node.exit_crit_edge, label %is_of_node.exit.i

do.end.irq_domain_get_of_node.exit_crit_edge:     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_domain_get_of_node.exit

is_of_node.exit.i:                                ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %13, @of_fwnode_ops
  %add.ptr.i = getelementptr i8, ptr %11, i32 -12
  %spec.select.i = select i1 %cmp.i.i, ptr %add.ptr.i, ptr null
  br label %irq_domain_get_of_node.exit

irq_domain_get_of_node.exit:                      ; preds = %is_of_node.exit.i, %do.end.irq_domain_get_of_node.exit_crit_edge
  %14 = phi ptr [ null, %do.end.irq_domain_get_of_node.exit_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  %spmic6 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 15
  %15 = ptrtoint ptr %spmic6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spmic6, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %cmp.not = icmp eq ptr %14, %18
  br i1 %cmp.not, label %if.end9, label %irq_domain_get_of_node.exit.cleanup_crit_edge

irq_domain_get_of_node.exit.cleanup_crit_edge:    ; preds = %irq_domain_get_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %irq_domain_get_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %19 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %20)
  %cmp10.not = icmp eq i32 %20, 4
  br i1 %cmp10.not, label %if.end12, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end9
  %21 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %22)
  %cmp14 = icmp ugt i32 %22, 15
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %lor.lhs.false

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end12
  %arrayidx15 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %24)
  %cmp16 = icmp ugt i32 %24, 255
  br i1 %cmp16, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false17

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false17:                                  ; preds = %lor.lhs.false
  %arrayidx18 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %26)
  %cmp19 = icmp ugt i32 %26, 7
  br i1 %cmp19, label %lor.lhs.false17.cleanup_crit_edge, label %if.end21

lor.lhs.false17.cleanup_crit_edge:                ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false17
  %shl = shl nuw nsw i32 %22, 8
  %or = or i32 %24, %shl
  %conv = trunc i32 %or to i16
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %27 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ver_ops, align 4
  %ppid_to_apid = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %ppid_to_apid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ppid_to_apid, align 4
  %call24 = tail call i32 %30(ptr noundef %1, i16 noundef zeroext %conv) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %do.end30, label %if.end36

do.end30:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %spmic6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %spmic6, align 4
  %33 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %param, align 4
  %35 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx15, align 4
  %37 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.68, i32 noundef %34, i32 noundef %36, i32 noundef %38, i32 noundef %call24) #13
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %conv37 = trunc i32 %call24 to i16
  %conv38 = and i32 %call24, 65535
  %max_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %max_apid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_apid, align 4
  %conv39 = zext i16 %40 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %conv39)
  %cmp40 = icmp ugt i32 %conv38, %conv39
  br i1 %cmp40, label %if.then42, label %if.end36.if.end44_crit_edge

if.end36.if.end44_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  %41 = ptrtoint ptr %max_apid to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv37, ptr %max_apid, align 4
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end36.if.end44_crit_edge
  %min_apid = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %min_apid to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %min_apid, align 2
  %conv46 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv38, i32 %conv46)
  %cmp47 = icmp ult i32 %conv38, %conv46
  br i1 %cmp47, label %if.then49, label %if.end44.if.end51_crit_edge

if.end44.if.end51_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end51

if.then49:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %min_apid to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv37, ptr %min_apid, align 2
  br label %if.end51

if.end51:                                         ; preds = %if.then49, %if.end44.if.end51_crit_edge
  %45 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %param, align 4
  %shl53 = shl i32 %46, 28
  %47 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx15, align 4
  %and55 = shl i32 %48, 20
  %shl56 = and i32 %and55, 267386880
  %or57 = or i32 %shl56, %shl53
  %49 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx18, align 4
  %and59 = shl i32 %50, 16
  %shl60 = and i32 %and59, 458752
  %or61 = or i32 %or57, %shl60
  %and63 = and i32 %call24, 511
  %or65 = or i32 %or61, %and63
  %51 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or65, ptr %out_hwirq, align 4
  %arrayidx66 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 3
  %52 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx66, align 4
  %and67 = and i32 %53, 15
  %54 = ptrtoint ptr %out_type to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %and67, ptr %out_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@qpnpint_irq_domain_translate, %if.then80)) #10
          to label %cleanup [label %if.then80], !srcloc !191

if.then80:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %spmic6 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spmic6, align 4
  %57 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %out_hwirq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug193, ptr noundef %56, ptr noundef nonnull @.str.69, i32 noundef %58) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then80, %if.end51, %do.end30, %lor.lhs.false17.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %irq_domain_get_of_node.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call24, %do.end30 ], [ -22, %irq_domain_get_of_node.exit.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ -22, %lor.lhs.false17.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ], [ 0, %if.then80 ], [ 0, %if.end51 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_lockdep_class(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qpnpint_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %3, 16
  %conv = and i32 %shr, 7
  %4 = trunc i32 %3 to i16
  %conv4 = and i16 %4, 511
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %shl = shl nuw nsw i32 1, %conv
  %5 = shl nuw i32 %shl, 24
  %ver_ops = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %ver_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ver_ops, align 4
  %irq_clear = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %irq_clear to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_clear, align 4
  %call6 = tail call ptr %9(ptr noundef %1, i16 noundef zeroext %conv4) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call6, i32 %5) #10, !srcloc !192
  %conv9 = trunc i32 %shl to i8
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv9, ptr %data, align 1
  %11 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_data.i, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %shr.i = lshr i32 %14, 28
  %conv.i = trunc i32 %shr.i to i8
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %12, i32 0, i32 15
  %15 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spmic.i, align 4
  %17 = lshr i32 %14, 12
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, -256
  %conv7.i = or i16 %19, 20
  %call8.i = call i32 @pmic_arb_write_cmd(ptr noundef %16, i8 noundef zeroext 48, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, ptr noundef nonnull %data, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %entry.qpnpint_spmi_write.exit_crit_edge, label %do.body.i

entry.qpnpint_spmi_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_write.exit

do.body.i:                                        ; preds = %entry
  %call9.i = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qpnpint_spmi_write.exit_crit_edge, label %do.end.i

do.body.i.qpnpint_spmi_write.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spmic.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %23) #13
  br label %qpnpint_spmi_write.exit

qpnpint_spmi_write.exit:                          ; preds = %do.end.i, %do.body.i.qpnpint_spmi_write.exit_crit_edge, %entry.qpnpint_spmi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qpnpint_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %1, 16
  %conv = and i32 %shr, 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #10
  %shl = shl nuw nsw i32 1, %conv
  %conv2 = trunc i32 %shl to i8
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %data, align 1
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %shr.i = lshr i32 %1, 28
  %conv.i = trunc i32 %shr.i to i8
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spmic.i, align 4
  %7 = lshr i32 %1, 12
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -256
  %conv7.i = or i16 %9, 22
  %call8.i = call i32 @pmic_arb_write_cmd(ptr noundef %6, i8 noundef zeroext 48, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, ptr noundef nonnull %data, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %entry.qpnpint_spmi_write.exit_crit_edge, label %do.body.i

entry.qpnpint_spmi_write.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_write.exit

do.body.i:                                        ; preds = %entry
  %call9.i = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qpnpint_spmi_write.exit_crit_edge, label %do.end.i

do.body.i.qpnpint_spmi_write.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spmic.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.62, i32 noundef %13) #13
  br label %qpnpint_spmi_write.exit

qpnpint_spmi_write.exit:                          ; preds = %do.end.i, %do.body.i.qpnpint_spmi_write.exit_crit_edge, %entry.qpnpint_spmi_write.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @qpnpint_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %ver_ops1 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 16
  %2 = ptrtoint ptr %ver_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ver_ops1, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %5, 16
  %conv = and i32 %shr, 7
  %6 = trunc i32 %5 to i16
  %conv5 = and i16 %6, 511
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %buf, align 1, !annotation !189
  %8 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %acc_enable = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %acc_enable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %acc_enable, align 4
  %call6 = tail call ptr %10(ptr noundef %1, i16 noundef zeroext %conv5) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call6, i32 16777216) #10, !srcloc !192
  %11 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chip_data.i, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %shr.i = lshr i32 %14, 28
  %conv.i = trunc i32 %shr.i to i8
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %12, i32 0, i32 15
  %15 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %spmic.i, align 4
  %17 = lshr i32 %14, 12
  %18 = trunc i32 %17 to i16
  %19 = and i16 %18, -256
  %conv7.i = or i16 %19, 21
  %call8.i = call i32 @pmic_arb_read_cmd(ptr noundef %16, i8 noundef zeroext 56, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, ptr noundef nonnull %buf, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %entry.qpnpint_spmi_read.exit_crit_edge, label %do.body.i

entry.qpnpint_spmi_read.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_read.exit

do.body.i:                                        ; preds = %entry
  %call9.i = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_read._rs, ptr noundef nonnull @__func__.qpnpint_spmi_read) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qpnpint_spmi_read.exit_crit_edge, label %do.end.i

do.body.i.qpnpint_spmi_read.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_read.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spmic.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.62, i32 noundef %23) #13
  br label %qpnpint_spmi_read.exit

qpnpint_spmi_read.exit:                           ; preds = %do.end.i, %do.body.i.qpnpint_spmi_read.exit_crit_edge, %entry.qpnpint_spmi_read.exit_crit_edge
  %24 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %buf, align 1
  %conv8 = zext i8 %25 to i32
  %shl = shl nuw nsw i32 1, %conv
  %and10 = and i32 %shl, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool.not = icmp eq i32 %and10, 0
  br i1 %tobool.not, label %if.then, label %qpnpint_spmi_read.exit.if.end_crit_edge

qpnpint_spmi_read.exit.if.end_crit_edge:          ; preds = %qpnpint_spmi_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %qpnpint_spmi_read.exit
  %conv13 = trunc i32 %shl to i8
  %26 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv13, ptr %buf, align 1
  %27 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv13, ptr %8, align 1
  %28 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chip_data.i, align 4
  %30 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hwirq, align 4
  %shr.i28 = lshr i32 %31, 28
  %conv.i29 = trunc i32 %shr.i28 to i8
  %spmic.i30 = getelementptr inbounds %struct.spmi_pmic_arb, ptr %29, i32 0, i32 15
  %32 = ptrtoint ptr %spmic.i30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spmic.i30, align 4
  %34 = lshr i32 %31, 12
  %35 = trunc i32 %34 to i16
  %36 = and i16 %35, -256
  %conv7.i33 = or i16 %36, 20
  %call8.i34 = call i32 @pmic_arb_write_cmd(ptr noundef %33, i8 noundef zeroext 48, i8 noundef zeroext %conv.i29, i16 noundef zeroext %conv7.i33, ptr noundef nonnull %buf, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i34)
  %tobool.not.i35 = icmp eq i32 %call8.i34, 0
  br i1 %tobool.not.i35, label %if.then.if.end_crit_edge, label %do.body.i38

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body.i38:                                      ; preds = %if.then
  %call9.i36 = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_write) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i36)
  %tobool10.not.i37 = icmp eq i32 %call9.i36, 0
  br i1 %tobool10.not.i37, label %do.body.i38.if.end_crit_edge, label %do.end.i40

do.body.i38.if.end_crit_edge:                     ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end.i40:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %spmic.i30 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %spmic.i30, align 4
  %irq.i39 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %39 = ptrtoint ptr %irq.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.62, i32 noundef %40) #13
  br label %if.end

if.end:                                           ; preds = %do.end.i40, %do.body.i38.if.end_crit_edge, %if.then.if.end_crit_edge, %qpnpint_spmi_read.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %flow_type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %shr = lshr i32 %1, 16
  %and = and i32 %shr, 7
  %shl = shl nuw nsw i32 1, %and
  %conv = trunc i32 %shl to i8
  %and1 = and i32 %flow_type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %and3 = and i32 %flow_type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  %spec.select = select i1 %tobool4.not, i8 0, i8 %conv
  %and6 = and i32 %flow_type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %spec.select47 = select i1 %tobool7.not, i8 0, i8 %conv
  br label %if.end23

if.else:                                          ; preds = %entry
  %2 = and i32 %flow_type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %2)
  %.not = icmp eq i32 %2, 12
  br i1 %.not, label %if.else.cleanup_crit_edge, label %if.end15

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and10 = and i32 %flow_type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %spec.select45 = select i1 %tobool11.not, i8 0, i8 %conv
  %spec.select46 = select i1 %tobool11.not, i8 %conv, i8 0
  br label %if.end23

if.end23:                                         ; preds = %if.end15, %if.then
  %type.sroa.0.0 = phi i8 [ 0, %if.end15 ], [ %conv, %if.then ]
  %type.sroa.5.1 = phi i8 [ %spec.select45, %if.end15 ], [ %spec.select, %if.then ]
  %type.sroa.8.0 = phi i8 [ %spec.select46, %if.end15 ], [ %spec.select47, %if.then ]
  %flow_handler.0 = phi ptr [ @handle_level_irq, %if.end15 ], [ @handle_edge_irq, %if.then ]
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %shr.i = lshr i32 %1, 28
  %conv.i = trunc i32 %shr.i to i8
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spmic.i, align 4
  %7 = lshr i32 %1, 12
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -256
  %conv7.i = or i16 %9, 17
  %driver_data.i.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %ver_ops.i.i.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %11, i32 0, i32 16
  %12 = ptrtoint ptr %ver_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ver_ops.i.i.i, align 4
  %offset1.i.i.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %offset1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %offset1.i.i.i, align 4
  %call.i.i.i = tail call i32 %15(ptr noundef %11, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end23.do.body.i_crit_edge, label %if.end.i.i

if.end23.do.body.i_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end.i.i:                                       ; preds = %if.end23
  %16 = ptrtoint ptr %ver_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ver_ops.i.i.i, align 4
  %fmt_cmd.i.i.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %fmt_cmd.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fmt_cmd.i.i.i, align 4
  %call37.i.i.i = tail call i32 %19(i8 noundef zeroext 1, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i8 noundef zeroext 2) #10
  %20 = ptrtoint ptr %ver_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ver_ops.i.i.i, align 4
  %offset1.i3.i.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %offset1.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %offset1.i3.i.i, align 4
  %call.i4.i.i = tail call i32 %23(ptr noundef %11, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i4.i.i)
  %cmp.i5.i.i = icmp slt i32 %call.i4.i.i, 0
  br i1 %cmp.i5.i.i, label %if.end.i.i.do.body.i_crit_edge, label %do.body.i.i

if.end.i.i.do.body.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.i:                                      ; preds = %if.end.i.i
  %24 = ptrtoint ptr %ver_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ver_ops.i.i.i, align 4
  %fmt_cmd.i7.i.i = getelementptr inbounds %struct.pmic_arb_ver_ops, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %fmt_cmd.i7.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fmt_cmd.i7.i.i, align 4
  %call39.i.i.i = tail call i32 %27(i8 noundef zeroext 0, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i8 noundef zeroext 2) #10
  %lock.i.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %11, i32 0, i32 6
  %call6.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #10
  %28 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %30 = tail call i32 @llvm.bswap.i32(i32 %call37.i.i.i) #10
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %29, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %32, i32 %call.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i.i, i32 %30) #10, !srcloc !192
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %29, align 4
  %call1.i.i.i = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %6, ptr noundef %34, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %pmic_arb_masked_write.exit.i, label %pmic_arb_masked_write.exit.thread5.i

pmic_arb_masked_write.exit.thread5.i:             ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call6.i.i) #10
  br label %do.body.i

pmic_arb_masked_write.exit.i:                     ; preds = %do.body.i.i
  %add2.i.i.i = add nuw i32 %call.i.i.i, 24
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %29, align 4
  %add.ptr.i32.i.i.i = getelementptr i8, ptr %36, i32 %add2.i.i.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i32.i.i.i) #10, !srcloc !190
  %data.i.i.0.extract.shift.i.i = lshr i32 %37, 8
  %temp.sroa.0.sroa.0.0.extract.shift29.i.i = lshr i32 %37, 24
  %temp.sroa.0.sroa.0.0.extract.trunc.i.i = trunc i32 %temp.sroa.0.sroa.0.0.extract.shift29.i.i to i8
  %temp.sroa.0.sroa.7.0.extract.shift30.i.i = lshr i32 %37, 16
  %temp.sroa.0.sroa.7.0.extract.trunc.i.i = trunc i32 %temp.sroa.0.sroa.7.0.extract.shift30.i.i to i8
  %temp.sroa.0.sroa.10.0.extract.trunc.i.i = trunc i32 %data.i.i.0.extract.shift.i.i to i8
  %neg.i.i = xor i8 %conv, -1
  %and.i.i = and i8 %temp.sroa.0.sroa.0.0.extract.trunc.i.i, %neg.i.i
  %and201.i.i = and i8 %type.sroa.0.0, %conv
  %or.i.i = or i8 %and.i.i, %and201.i.i
  %and.1.i.i = and i8 %temp.sroa.0.sroa.7.0.extract.trunc.i.i, %neg.i.i
  %and201.1.i.i = and i8 %type.sroa.5.1, %conv
  %or.1.i.i = or i8 %and.1.i.i, %and201.1.i.i
  %and.2.i.i = and i8 %temp.sroa.0.sroa.10.0.extract.trunc.i.i, %neg.i.i
  %and201.2.i.i = and i8 %type.sroa.8.0, %conv
  %or.2.i.i = or i8 %and.2.i.i, %and201.2.i.i
  %38 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %add.i.i.i = add nuw i32 %call.i4.i.i, 16
  %temp.sroa.0.sroa.10.0.insert.ext.i.i = zext i8 %or.2.i.i to i32
  %temp.sroa.0.sroa.7.0.insert.ext.i.i = zext i8 %or.1.i.i to i32
  %temp.sroa.0.sroa.0.0.insert.ext.i.i = zext i8 %or.i.i to i32
  %40 = shl nuw i32 %temp.sroa.0.sroa.0.0.insert.ext.i.i, 24
  %41 = shl nuw nsw i32 %temp.sroa.0.sroa.7.0.insert.ext.i.i, 16
  %42 = shl nuw nsw i32 %temp.sroa.0.sroa.10.0.insert.ext.i.i, 8
  %43 = or i32 %42, %41
  %data.i.i10.0.insert.shift.i.i = or i32 %43, %40
  %wr_base.i.i.i.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %wr_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wr_base.i.i.i.i, align 4
  %add.ptr.i.i12.i.i = getelementptr i8, ptr %45, i32 %add.i.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i12.i.i, i32 %data.i.i10.0.insert.shift.i.i) #10, !srcloc !192
  %46 = tail call i32 @llvm.bswap.i32(i32 %call39.i.i.i) #10
  %47 = ptrtoint ptr %wr_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %wr_base.i.i.i.i, align 4
  %add.ptr.i34.i.i.i = getelementptr i8, ptr %48, i32 %call.i4.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i.i.i, i32 %46) #10, !srcloc !192
  %49 = ptrtoint ptr %wr_base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %wr_base.i.i.i.i, align 4
  %call15.i.i.i = tail call fastcc i32 @pmic_arb_wait_for_done(ptr noundef %6, ptr noundef %50, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, i32 noundef 0) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call6.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %tobool.not.i = icmp eq i32 %call15.i.i.i, 0
  br i1 %tobool.not.i, label %pmic_arb_masked_write.exit.i.qpnpint_spmi_masked_write.exit_crit_edge, label %pmic_arb_masked_write.exit.i.do.body.i_crit_edge

pmic_arb_masked_write.exit.i.do.body.i_crit_edge: ; preds = %pmic_arb_masked_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

pmic_arb_masked_write.exit.i.qpnpint_spmi_masked_write.exit_crit_edge: ; preds = %pmic_arb_masked_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_masked_write.exit

do.body.i:                                        ; preds = %pmic_arb_masked_write.exit.i.do.body.i_crit_edge, %pmic_arb_masked_write.exit.thread5.i, %if.end.i.i.do.body.i_crit_edge, %if.end23.do.body.i_crit_edge
  %retval.0.i3.i = phi i32 [ %call15.i.i.i, %pmic_arb_masked_write.exit.i.do.body.i_crit_edge ], [ %call1.i.i.i, %pmic_arb_masked_write.exit.thread5.i ], [ %call.i4.i.i, %if.end.i.i.do.body.i_crit_edge ], [ %call.i.i.i, %if.end23.do.body.i_crit_edge ]
  %call9.i = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_masked_write._rs, ptr noundef nonnull @__func__.qpnpint_spmi_masked_write) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qpnpint_spmi_masked_write.exit_crit_edge, label %do.end.i

do.body.i.qpnpint_spmi_masked_write.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_masked_write.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spmic.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %53 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.63, i32 noundef %54, i32 noundef %retval.0.i3.i) #13
  br label %qpnpint_spmi_masked_write.exit

qpnpint_spmi_masked_write.exit:                   ; preds = %do.end.i, %do.body.i.qpnpint_spmi_masked_write.exit_crit_edge, %pmic_arb_masked_write.exit.i.qpnpint_spmi_masked_write.exit_crit_edge
  %retval.0.i4.i = phi i32 [ %retval.0.i3.i, %do.body.i.qpnpint_spmi_masked_write.exit_crit_edge ], [ %retval.0.i3.i, %do.end.i ], [ 0, %pmic_arb_masked_write.exit.i.qpnpint_spmi_masked_write.exit_crit_edge ]
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %55 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %flow_handler.0, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %qpnpint_spmi_masked_write.exit, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i4.i, %qpnpint_spmi_masked_write.exit ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.spmi_pmic_arb, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qpnpint_get_irqchip_state(ptr nocapture noundef readonly %d, i32 noundef %which, ptr nocapture noundef writeonly %state) #2 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #10
  %2 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %which)
  %cmp.not = icmp eq i32 %which, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %shr = lshr i32 %1, 16
  %conv = and i32 %shr, 7
  %chip_data.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %3 = ptrtoint ptr %chip_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chip_data.i.i, align 4
  %shr.i = lshr i32 %1, 28
  %conv.i = trunc i32 %shr.i to i8
  %spmic.i = getelementptr inbounds %struct.spmi_pmic_arb, ptr %4, i32 0, i32 15
  %5 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spmic.i, align 4
  %7 = lshr i32 %1, 12
  %8 = trunc i32 %7 to i16
  %9 = and i16 %8, -256
  %conv7.i = or i16 %9, 16
  %call8.i = call i32 @pmic_arb_read_cmd(ptr noundef %6, i8 noundef zeroext 56, i8 noundef zeroext %conv.i, i16 noundef zeroext %conv7.i, ptr noundef nonnull %status, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.qpnpint_spmi_read.exit_crit_edge, label %do.body.i

if.end.qpnpint_spmi_read.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_read.exit

do.body.i:                                        ; preds = %if.end
  %call9.i = tail call i32 @___ratelimit(ptr noundef nonnull @qpnpint_spmi_read._rs, ptr noundef nonnull @__func__.qpnpint_spmi_read) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %do.body.i.qpnpint_spmi_read.exit_crit_edge, label %do.end.i

do.body.i.qpnpint_spmi_read.exit_crit_edge:       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %qpnpint_spmi_read.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %spmic.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %spmic.i, align 4
  %irq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.62, i32 noundef %13) #13
  br label %qpnpint_spmi_read.exit

qpnpint_spmi_read.exit:                           ; preds = %do.end.i, %do.body.i.qpnpint_spmi_read.exit_crit_edge, %if.end.qpnpint_spmi_read.exit_crit_edge
  %14 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %status, align 1
  %conv2 = zext i8 %15 to i32
  %shl = shl nuw nsw i32 1, %conv
  %and4 = and i32 %shl, %conv2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool = icmp ne i32 %and4, 0
  %frombool = zext i1 %tobool to i8
  %16 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool, ptr %state, align 1
  br label %cleanup

cleanup:                                          ; preds = %qpnpint_spmi_read.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %qpnpint_spmi_read.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spmi_controller_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 89)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !103, !104, !106, !107, !108, !109, !111, !112, !113, !115, !116, !117, !119, !120, !122, !124, !125, !126, !128, !130, !132, !134, !136, !137, !138, !139, !140, !141, !143, !144, !145, !146, !148, !149, !150, !151, !152, !154, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !173, !174, !176, !177, !178}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_spmi_pmic_arb__198_1457_spmi_pmic_arb_driver_init6, !1, !"__initcall__kmod_spmi_pmic_arb__198_1457_spmi_pmic_arb_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1457, i32 1}
!2 = !{ptr @__exitcall_spmi_pmic_arb_driver_exit, !1, !"__exitcall_spmi_pmic_arb_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file199, !4, !"__UNIQUE_ID_file199", i1 false, i1 false}
!4 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1459, i32 1}
!5 = !{ptr @__UNIQUE_ID_license200, !4, !"__UNIQUE_ID_license200", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_alias201, !7, !"__UNIQUE_ID_alias201", i1 false, i1 false}
!7 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1460, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1453, i32 11}
!10 = !{ptr @spmi_pmic_arb_driver, !11, !"spmi_pmic_arb_driver", i1 false, i1 false}
!11 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1449, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1277, i32 59}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1311, i32 10}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1319, i32 10}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1327, i32 2}
!20 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @spmi_pmic_arb_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @spmi_pmic_arb_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1330, i32 59}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1337, i32 59}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1344, i32 48}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1350, i32 48}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1352, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @spmi_pmic_arb_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @spmi_pmic_arb_probe._entry_ptr.16, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1357, i32 3}
!41 = !{ptr @spmi_pmic_arb_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @spmi_pmic_arb_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1365, i32 48}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1367, i32 3}
!47 = !{ptr @spmi_pmic_arb_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @spmi_pmic_arb_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1372, i32 3}
!51 = !{ptr @spmi_pmic_arb_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @spmi_pmic_arb_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @spmi_pmic_arb_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1392, i32 2}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.29, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1401, i32 4}
!58 = !{ptr @spmi_pmic_arb_probe._entry.28, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @spmi_pmic_arb_probe._entry_ptr.30, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1407, i32 2}
!62 = !{ptr @spmi_pmic_arb_probe.__UNIQUE_ID_ddebug197, !61, !"__UNIQUE_ID_ddebug197", i1 false, i1 false}
!63 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1411, i32 3}
!65 = !{ptr @spmi_pmic_arb_probe._entry.32, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @spmi_pmic_arb_probe._entry_ptr.34, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.35, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1202, i32 14}
!69 = !{ptr @pmic_arb_v1, !70, !"pmic_arb_v1", i1 false, i1 false}
!70 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1201, i32 38}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 264, i32 5}
!73 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @pmic_arb_wait_for_done._entry, !72, !"_entry", i1 false, i1 false}
!75 = !{ptr @pmic_arb_wait_for_done._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.39, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 270, i32 5}
!78 = !{ptr @pmic_arb_wait_for_done._entry.38, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @pmic_arb_wait_for_done._entry_ptr.40, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 277, i32 5}
!82 = !{ptr @pmic_arb_wait_for_done._entry.41, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @pmic_arb_wait_for_done._entry_ptr.43, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.45, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 287, i32 2}
!86 = !{ptr @pmic_arb_wait_for_done._entry.44, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @pmic_arb_wait_for_done._entry_ptr.46, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.47, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1215, i32 14}
!90 = !{ptr @pmic_arb_v2, !91, !"pmic_arb_v2", i1 false, i1 false}
!91 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1214, i32 38}
!92 = !{ptr @.str.48, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1228, i32 14}
!94 = !{ptr @pmic_arb_v3, !95, !"pmic_arb_v3", i1 false, i1 false}
!95 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1227, i32 38}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1241, i32 14}
!98 = !{ptr @pmic_arb_v5, !99, !"pmic_arb_v5", i1 false, i1 false}
!99 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1240, i32 38}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 328, i32 2}
!102 = !{ptr @.str.51, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @pmic_arb_cmd.__UNIQUE_ID_ddebug187, !101, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 350, i32 3}
!106 = !{ptr @.str.53, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @pmic_arb_fmt_read_cmd._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @pmic_arb_fmt_read_cmd._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 427, i32 3}
!111 = !{ptr @pmic_arb_fmt_write_cmd._entry, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @pmic_arb_fmt_write_cmd._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.55, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1035, i32 2}
!115 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug195, !114, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!117 = !{ptr @.str.57, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1041, i32 4}
!119 = !{ptr @pmic_arb_read_apid_map_v5.__UNIQUE_ID_ddebug196, !118, !"__UNIQUE_ID_ddebug196", i1 false, i1 false}
!120 = !{ptr @pmic_arb_irq_domain_ops, !121, !"pmic_arb_irq_domain_ops", i1 false, i1 false}
!121 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1253, i32 36}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 846, i32 2}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @qpnpint_irq_domain_map.__UNIQUE_ID_ddebug194, !123, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!126 = !{ptr @qpnpint_irq_lock_class, !127, !"qpnpint_irq_lock_class", i1 false, i1 false}
!127 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 838, i32 30}
!128 = !{ptr @qpnpint_irq_request_class, !129, !"qpnpint_irq_request_class", i1 false, i1 false}
!129 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 838, i32 54}
!130 = !{ptr @.str.60, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 785, i32 11}
!132 = !{ptr @pmic_arb_irqchip, !133, !"pmic_arb_irqchip", i1 false, i1 false}
!133 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 784, i32 24}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 553, i32 3}
!136 = !{ptr @qpnpint_spmi_write._rs, !135, !"_rs", i1 false, i1 false}
!137 = !{ptr @__func__.qpnpint_spmi_write, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @.str.62, !135, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @qpnpint_spmi_write._entry, !135, !"_entry", i1 false, i1 false}
!140 = !{ptr @qpnpint_spmi_write._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @qpnpint_spmi_read._rs, !142, !"_rs", i1 false, i1 false}
!142 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 565, i32 3}
!143 = !{ptr @__func__.qpnpint_spmi_read, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @qpnpint_spmi_read._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @qpnpint_spmi_read._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @qpnpint_spmi_masked_write._rs, !147, !"_rs", i1 false, i1 false}
!147 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 581, i32 3}
!148 = !{ptr @__func__.qpnpint_spmi_masked_write, !147, !"<string literal>", i1 false, i1 false}
!149 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @qpnpint_spmi_masked_write._entry, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @qpnpint_spmi_masked_write._entry_ptr, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 775, i32 3}
!154 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @qpnpint_irq_domain_activate._entry, !153, !"_entry", i1 false, i1 false}
!156 = !{ptr @qpnpint_irq_domain_activate._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.66, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 805, i32 2}
!159 = !{ptr @.str.67, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug192, !158, !"__UNIQUE_ID_ddebug192", i1 false, i1 false}
!161 = !{ptr @.str.68, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 818, i32 3}
!163 = !{ptr @qpnpint_irq_domain_translate._entry, !162, !"_entry", i1 false, i1 false}
!164 = !{ptr @qpnpint_irq_domain_translate._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.69, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 833, i32 2}
!167 = !{ptr @qpnpint_irq_domain_translate.__UNIQUE_ID_ddebug193, !166, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!168 = !{ptr @cleanup_irq._rs, !169, !"_rs", i1 false, i1 false}
!169 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 597, i32 3}
!170 = !{ptr @__func__.cleanup_irq, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.70, !169, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cleanup_irq._entry, !169, !"_entry", i1 false, i1 false}
!173 = !{ptr @cleanup_irq._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @cleanup_irq._rs.71, !175, !"_rs", i1 false, i1 false}
!175 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 602, i32 3}
!176 = !{ptr @cleanup_irq._entry.72, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @cleanup_irq._entry_ptr.73, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @spmi_pmic_arb_match_table, !179, !"spmi_pmic_arb_match_table", i1 false, i1 false}
!179 = !{!"../drivers/spmi/spmi-pmic-arb.c", i32 1443, i32 34}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{i64 4244639}
!191 = !{i64 2148861658, i64 2148861663, i64 2148861676, i64 2148861720, i64 2148861754, i64 2148861775}
!192 = !{i64 4244221}
!193 = !{i32 0, i32 33}
