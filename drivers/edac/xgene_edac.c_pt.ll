; ModuleID = '/llk/IR_all_yes/drivers/edac/xgene_edac.c_pt.bc'
source_filename = "../drivers/edac/xgene_edac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.xgene_edac = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, i32, i32 }
%struct.xgene_edac_mc_ctx = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.xgene_edac_pmd_ctx = type { %struct.list_head, %struct.device, ptr, ptr, ptr, ptr, i32, i32 }
%struct.edac_device_ctl_info = type { %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, %struct.delayed_work, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.completion, [32 x i8], i32, ptr, %struct.edac_device_counter, %struct.kobject }
%struct.edac_device_counter = type { i32, i32 }
%struct.xgene_edac_dev_ctx = type { %struct.list_head, %struct.device, ptr, ptr, ptr, i32, ptr, i32 }
%struct.edac_mc_layer = type { i32, i32, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.mem_ctl_info = type { %struct.device, ptr, %struct.list_head, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.completion, ptr, %struct.delayed_work, %struct.edac_raw_error_desc, i32, ptr, [3 x i8], i8, i16 }
%struct.edac_raw_error_desc = type { [256 x i8], [296 x i8], i32, i16, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__initcall__kmod_xgene_edac__236_2029_xgene_edac_init6 = internal global ptr @xgene_edac_init, section ".initcall6.init", align 4
@xgene_edac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgene_edac_probe, ptr @xgene_edac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgene_edac_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgene_edac_exit = internal global ptr @xgene_edac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file237 = internal constant [40 x i8] c"xgene_edac.file=drivers/edac/xgene_edac\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [23 x i8] c"xgene_edac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author239 = internal constant [42 x i8] c"xgene_edac.author=Feng Kan <fkan@apm.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description240 = internal constant [46 x i8] c"xgene_edac.description=APM X-Gene EDAC driver\00", section ".modinfo", align 1
@__param_str_edac_op_state = internal constant [25 x i8] c"xgene_edac.edac_op_state\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@edac_op_state = external dso_local global i32, align 4
@__param_edac_op_state = internal constant %struct.kernel_param { ptr @__param_str_edac_op_state, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @edac_op_state } }, section "__param", align 4
@__UNIQUE_ID_edac_op_statetype241 = internal constant [38 x i8] c"xgene_edac.parmtype=edac_op_state:int\00", section ".modinfo", align 1
@__UNIQUE_ID_edac_op_state242 = internal constant [78 x i8] c"xgene_edac.parm=edac_op_state:EDAC error reporting state: 0=Poll, 2=Interrupt\00", section ".modinfo", align 1
@xgene_edac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2020, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013EDAC xgene_edac: EDAC fails to register\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xgene_edac_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/edac/xgene_edac.c\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_init._entry_ptr = internal global ptr @xgene_edac_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene-edac\00", [21 x i8] zeroinitializer }, align 32
@xgene_edac_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"apm,xgene-edac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgene_edac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&edac->lock\00", [20 x i8] zeroinitializer }, align 32
@xgene_edac_probe.__key.5 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&edac->mc_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"regmap-csw\00", [21 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1867, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to get syscon regmap csw\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgene_edac_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr = internal global ptr @xgene_edac_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"regmap-mcba\00", [20 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.2, i32 1875, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get syscon regmap mcba\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.15 = internal global ptr @xgene_edac_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"regmap-mcbb\00", [20 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.2, i32 1883, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get syscon regmap mcbb\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.19 = internal global ptr @xgene_edac_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"regmap-efuse\00", [19 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.9, ptr @.str.2, i32 1890, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to get syscon regmap efuse\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.23 = internal global ptr @xgene_edac_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"regmap-rb\00", [22 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.9, ptr @.str.2, i32 1902, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"missing syscon regmap rb\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.28 = internal global ptr @xgene_edac_probe._entry.25, section ".printk_index", align 4
@xgene_edac_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.2, i32 1909, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no PCP resource address\0A\00", [39 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.31 = internal global ptr @xgene_edac_probe._entry.29, section ".printk_index", align 4
@xgene_edac_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.9, ptr @.str.2, i32 1921, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No IRQ resource\0A\00", [47 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.34 = internal global ptr @xgene_edac_probe._entry.32, section ".printk_index", align 4
@xgene_edac_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.9, ptr @.str.2, i32 1930, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not request IRQ %d\0A\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_probe._entry_ptr.37 = internal global ptr @xgene_edac_probe._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apm,xgene-edac-mc\00", [46 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm,xgene-edac-pmd\00", [45 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"apm,xgene-edac-pmd-v2\00", [42 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apm,xgene-edac-l3\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"apm,xgene-edac-l3-v2\00", [43 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"apm,xgene-edac-soc\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"apm,xgene-edac-soc-v1\00", [42 x i8] zeroinitializer }, align 32
@xgene_edac_mc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013EDAC X-Gene MC%d: MCU uncorrectable error at rank %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_edac_mc_check\00", [44 x i8] zeroinitializer }, align 32
@xgene_edac_mc_check._entry_ptr = internal global ptr @xgene_edac_mc_check._entry, section ".printk_index", align 4
@.str.47 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@xgene_edac_mc_check._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.46, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [88 x i8], [40 x i8] } { [88 x i8] c"\014EDAC X-Gene MC%d: MCU correctable error at rank %d bank %d column %d row %d count %d\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_mc_check._entry_ptr.50 = internal global ptr @xgene_edac_mc_check._entry.48, section ".printk_index", align 4
@xgene_edac_mc_check._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.46, ptr @.str.2, i32 238, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014EDAC X-Gene MC%d: MCU address miss-match error\0A\00", [46 x i8] zeroinitializer }, align 32
@xgene_edac_mc_check._entry_ptr.53 = internal global ptr @xgene_edac_mc_check._entry.51, section ".printk_index", align 4
@xgene_edac_mc_check._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.46, ptr @.str.2, i32 241, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\014EDAC X-Gene MC%d: MCU address multi-match error\0A\00", [45 x i8] zeroinitializer }, align 32
@xgene_edac_mc_check._entry_ptr.56 = internal global ptr @xgene_edac_mc_check._entry.54, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 536, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"CPU%d L1 memory error ICF 0x%08X Way 0x%02X Index 0x%02X Info 0x%02X\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_edac_pmd_l1_check\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr = internal global ptr @xgene_edac_pmd_l1_check._entry, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 538, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"One or more correctable error\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.61 = internal global ptr @xgene_edac_pmd_l1_check._entry.59, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 540, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Multiple correctable error\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.64 = internal global ptr @xgene_edac_pmd_l1_check._entry.62, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.58, ptr @.str.2, i32 543, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"L1 TLB multiple hit\0A\00", [43 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.67 = internal global ptr @xgene_edac_pmd_l1_check._entry.65, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.58, ptr @.str.2, i32 546, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Way select multiple hit\0A\00", [39 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.70 = internal global ptr @xgene_edac_pmd_l1_check._entry.68, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.58, ptr @.str.2, i32 549, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Physical tag parity error\0A\00", [37 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.73 = internal global ptr @xgene_edac_pmd_l1_check._entry.71, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.58, ptr @.str.2, i32 553, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"L1 data parity error\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.76 = internal global ptr @xgene_edac_pmd_l1_check._entry.74, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.58, ptr @.str.2, i32 556, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"L1 pre-decode parity error\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.79 = internal global ptr @xgene_edac_pmd_l1_check._entry.77, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.58, ptr @.str.2, i32 576, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"CPU%d memory error LSU 0x%08X Way 0x%02X Index 0x%02X Info 0x%02X\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.82 = internal global ptr @xgene_edac_pmd_l1_check._entry.80, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 578, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.84 = internal global ptr @xgene_edac_pmd_l1_check._entry.83, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 580, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.86 = internal global ptr @xgene_edac_pmd_l1_check._entry.85, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.58, ptr @.str.2, i32 583, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Load tag error\0A\00", [16 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.89 = internal global ptr @xgene_edac_pmd_l1_check._entry.87, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.58, ptr @.str.2, i32 586, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Load data error\0A\00", [47 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.92 = internal global ptr @xgene_edac_pmd_l1_check._entry.90, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.93 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.58, ptr @.str.2, i32 589, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"WSL multihit error\0A\00", [44 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.95 = internal global ptr @xgene_edac_pmd_l1_check._entry.93, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.58, ptr @.str.2, i32 592, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Store tag error\0A\00", [47 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.98 = internal global ptr @xgene_edac_pmd_l1_check._entry.96, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.58, ptr @.str.2, i32 596, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"DTB multihit from load pipeline error\0A\00", [57 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.101 = internal global ptr @xgene_edac_pmd_l1_check._entry.99, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.58, ptr @.str.2, i32 600, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"DTB multihit from store pipeline error\0A\00", [56 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.104 = internal global ptr @xgene_edac_pmd_l1_check._entry.102, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.105 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.58, ptr @.str.2, i32 621, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"CPU%d memory error MMU 0x%08X Way 0x%02X Index 0x%02X Info 0x%02X %s\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.107 = internal global ptr @xgene_edac_pmd_l1_check._entry.105, section ".printk_index", align 4
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LSU\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ICF\00", [28 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry.110 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 623, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.111 = internal global ptr @xgene_edac_pmd_l1_check._entry.110, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 625, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.113 = internal global ptr @xgene_edac_pmd_l1_check._entry.112, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.58, ptr @.str.2, i32 628, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Stage 1 UTB hit error\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.116 = internal global ptr @xgene_edac_pmd_l1_check._entry.114, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.58, ptr @.str.2, i32 631, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Stage 1 UTB miss error\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.119 = internal global ptr @xgene_edac_pmd_l1_check._entry.117, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.58, ptr @.str.2, i32 634, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Stage 1 UTB allocate error\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.122 = internal global ptr @xgene_edac_pmd_l1_check._entry.120, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.58, ptr @.str.2, i32 637, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"TMO operation single bank error\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.125 = internal global ptr @xgene_edac_pmd_l1_check._entry.123, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.58, ptr @.str.2, i32 640, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Stage 2 UTB error\0A\00", [45 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.128 = internal global ptr @xgene_edac_pmd_l1_check._entry.126, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.58, ptr @.str.2, i32 643, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Stage 2 UTB miss error\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.131 = internal global ptr @xgene_edac_pmd_l1_check._entry.129, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.58, ptr @.str.2, i32 646, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Stage 2 UTB allocate error\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.134 = internal global ptr @xgene_edac_pmd_l1_check._entry.132, section ".printk_index", align 4
@xgene_edac_pmd_l1_check._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.58, ptr @.str.2, i32 649, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"TMO operation multiple bank error\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l1_check._entry_ptr.137 = internal global ptr @xgene_edac_pmd_l1_check._entry.135, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.139, ptr @.str.2, i32 677, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"PMD%d memory error L2C L2ESR 0x%08X @ 0x%08X.%08X\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xgene_edac_pmd_l2_check\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr = internal global ptr @xgene_edac_pmd_l2_check._entry, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.139, ptr @.str.2, i32 684, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"ErrSyndrome 0x%02X ErrWay 0x%02X ErrCpu %d ErrGroup 0x%02X ErrAction 0x%02X\0A\00", [51 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.142 = internal global ptr @xgene_edac_pmd_l2_check._entry.140, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.143 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.139, ptr @.str.2, i32 687, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.144 = internal global ptr @xgene_edac_pmd_l2_check._entry.143, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.139, ptr @.str.2, i32 689, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.146 = internal global ptr @xgene_edac_pmd_l2_check._entry.145, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.139, ptr @.str.2, i32 691, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"One or more uncorrectable error\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.149 = internal global ptr @xgene_edac_pmd_l2_check._entry.147, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.139, ptr @.str.2, i32 693, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Multiple uncorrectable error\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.152 = internal global ptr @xgene_edac_pmd_l2_check._entry.150, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.139, ptr @.str.2, i32 697, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Outbound SDB parity error\0A\00", [37 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.155 = internal global ptr @xgene_edac_pmd_l2_check._entry.153, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.139, ptr @.str.2, i32 700, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Inbound SDB parity error\0A\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.158 = internal global ptr @xgene_edac_pmd_l2_check._entry.156, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.139, ptr @.str.2, i32 703, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Tag ECC error\0A\00", [17 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.161 = internal global ptr @xgene_edac_pmd_l2_check._entry.159, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.139, ptr @.str.2, i32 706, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Data ECC error\0A\00", [16 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.164 = internal global ptr @xgene_edac_pmd_l2_check._entry.162, section ".printk_index", align 4
@xgene_edac_pmd_l2_check._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.139, ptr @.str.2, i32 729, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PMD%d L2C error L2C RTOSR 0x%08X @ 0x%08X.%08X\0A\00", [48 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_l2_check._entry_ptr.167 = internal global ptr @xgene_edac_pmd_l2_check._entry.165, section ".printk_index", align 4
@xgene_edac_l3_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.168, ptr @.str.169, ptr @.str.2, i32 1066, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"L3C uncorrectable error\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xgene_edac_l3_check\00", [44 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr = internal global ptr @xgene_edac_l3_check._entry, section ".printk_index", align 4
@xgene_edac_l3_check._entry.170 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.171, ptr @.str.169, ptr @.str.2, i32 1068, ptr @.str.27, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"L3C correctable error\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.172 = internal global ptr @xgene_edac_l3_check._entry.170, section ".printk_index", align 4
@xgene_edac_l3_check._entry.173 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.174, ptr @.str.169, ptr @.str.2, i32 1074, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"L3C multiple hit error\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.175 = internal global ptr @xgene_edac_l3_check._entry.173, section ".printk_index", align 4
@xgene_edac_l3_check._entry.176 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.177, ptr @.str.169, ptr @.str.2, i32 1077, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"L3C dropped eviction of line with error\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.178 = internal global ptr @xgene_edac_l3_check._entry.176, section ".printk_index", align 4
@xgene_edac_l3_check._entry.179 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.180, ptr @.str.169, ptr @.str.2, i32 1079, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"L3C multiple uncorrectable error\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.181 = internal global ptr @xgene_edac_l3_check._entry.179, section ".printk_index", align 4
@xgene_edac_l3_check._entry.182 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.183, ptr @.str.169, ptr @.str.2, i32 1083, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"L3C data error syndrome 0x%X group 0x%X\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.184 = internal global ptr @xgene_edac_l3_check._entry.182, section ".printk_index", align 4
@xgene_edac_l3_check._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.169, ptr @.str.2, i32 1088, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"L3C tag error syndrome 0x%X Way of Tag 0x%X Agent ID 0x%X Operation type 0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.187 = internal global ptr @xgene_edac_l3_check._entry.185, section ".printk_index", align 4
@xgene_edac_l3_check._entry.188 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.189, ptr @.str.169, ptr @.str.2, i32 1095, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"L3C error address 0x%08X.%08X bank %d\0A\00", [57 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.190 = internal global ptr @xgene_edac_l3_check._entry.188, section ".printk_index", align 4
@xgene_edac_l3_check._entry.191 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.192, ptr @.str.169, ptr @.str.2, i32 1097, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"L3C error status register value 0x%X\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_edac_l3_check._entry_ptr.193 = internal global ptr @xgene_edac_l3_check._entry.191, section ".printk_index", align 4
@xgene_edac_soc_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.194, ptr @.str.195, ptr @.str.2, i32 1662, ptr @.str.196, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"CSW switch trace correctable memory parity error\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgene_edac_soc_check\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@xgene_edac_soc_check._entry_ptr = internal global ptr @xgene_edac_soc_check._entry, section ".printk_index", align 4
@soc_mem_err_v1 = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.366, ptr @.str.366, ptr @.str.366], [32 x i8] zeroinitializer }, align 32
@xgene_edac_soc_check._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.195, ptr @.str.2, i32 1672, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"SoC memory parity error 0x%08X\0A\00", [32 x i8] zeroinitializer }, align 32
@xgene_edac_soc_check._entry_ptr.199 = internal global ptr @xgene_edac_soc_check._entry.197, section ".printk_index", align 4
@xgene_edac_soc_check._entry.200 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.201, ptr @.str.195, ptr @.str.2, i32 1679, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s memory parity error\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_soc_check._entry_ptr.202 = internal global ptr @xgene_edac_soc_check._entry.200, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.203, ptr @.str.204, ptr @.str.2, i32 1400, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"XGIC transaction error\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xgene_edac_iob_gic_report\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr = internal global ptr @xgene_edac_iob_gic_report._entry, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.2, i32 1402, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"XGIC read size error\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.207 = internal global ptr @xgene_edac_iob_gic_report._entry.205, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.204, ptr @.str.2, i32 1404, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Multiple XGIC read size error\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.210 = internal global ptr @xgene_edac_iob_gic_report._entry.208, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.204, ptr @.str.2, i32 1406, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"XGIC write size error\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.213 = internal global ptr @xgene_edac_iob_gic_report._entry.211, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.204, ptr @.str.2, i32 1408, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Multiple XGIC write size error\0A\00", [32 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.216 = internal global ptr @xgene_edac_iob_gic_report._entry.214, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.204, ptr @.str.2, i32 1412, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"XGIC %s access @ 0x%08X (0x%08X)\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.219 = internal global ptr @xgene_edac_iob_gic_report._entry.217, section ".printk_index", align 4
@.str.220 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.204, ptr @.str.2, i32 1425, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"IOB single-bit correctable memory at 0x%08X.%08X error\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.224 = internal global ptr @xgene_edac_iob_gic_report._entry.222, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.204, ptr @.str.2, i32 1434, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"IOB multiple single-bit correctable memory at 0x%08X.%08X error\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.227 = internal global ptr @xgene_edac_iob_gic_report._entry.225, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.228 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.229, ptr @.str.204, ptr @.str.2, i32 1446, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"IOB double-bit uncorrectable memory at 0x%08X.%08X error\0A\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.230 = internal global ptr @xgene_edac_iob_gic_report._entry.228, section ".printk_index", align 4
@xgene_edac_iob_gic_report._entry.231 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.232, ptr @.str.204, ptr @.str.2, i32 1455, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Multiple IOB double-bit uncorrectable memory at 0x%08X.%08X error\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_iob_gic_report._entry_ptr.233 = internal global ptr @xgene_edac_iob_gic_report._entry.231, section ".printk_index", align 4
@xgene_edac_rb_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.234, ptr @.str.235, ptr @.str.2, i32 1486, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"IOB bus access error(s)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgene_edac_rb_report\00", [43 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr = internal global ptr @xgene_edac_rb_report._entry, section ".printk_index", align 4
@xgene_edac_rb_report._entry.236 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.235, ptr @.str.2, i32 1493, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IOB bus %s access to offline agent error\0A\00", [54 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.238 = internal global ptr @xgene_edac_rb_report._entry.236, section ".printk_index", align 4
@xgene_edac_rb_report._entry.239 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.240, ptr @.str.235, ptr @.str.2, i32 1497, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"IOB bus %s access to unimplemented page error\0A\00", [49 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.241 = internal global ptr @xgene_edac_rb_report._entry.239, section ".printk_index", align 4
@xgene_edac_rb_report._entry.242 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.235, ptr @.str.2, i32 1501, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"IOB bus %s word aligned access error\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.244 = internal global ptr @xgene_edac_rb_report._entry.242, section ".printk_index", align 4
@xgene_edac_rb_report._entry.245 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.246, ptr @.str.235, ptr @.str.2, i32 1505, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"IOB bus %s to page out of range access error\0A\00", [50 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.247 = internal global ptr @xgene_edac_rb_report._entry.245, section ".printk_index", align 4
@xgene_edac_rb_report._entry.248 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.235, ptr @.str.2, i32 1518, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"IOB bridge agent (BA) transaction error\0A\00", [55 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.250 = internal global ptr @xgene_edac_rb_report._entry.248, section ".printk_index", align 4
@xgene_edac_rb_report._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.235, ptr @.str.2, i32 1520, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IOB BA write response error\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.253 = internal global ptr @xgene_edac_rb_report._entry.251, section ".printk_index", align 4
@xgene_edac_rb_report._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.235, ptr @.str.2, i32 1523, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Multiple IOB BA write response error\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.256 = internal global ptr @xgene_edac_rb_report._entry.254, section ".printk_index", align 4
@xgene_edac_rb_report._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.258, ptr @.str.235, ptr @.str.2, i32 1525, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"IOB BA XGIC poisoned write error\0A\00", [62 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.259 = internal global ptr @xgene_edac_rb_report._entry.257, section ".printk_index", align 4
@xgene_edac_rb_report._entry.260 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.261, ptr @.str.235, ptr @.str.2, i32 1528, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Multiple IOB BA XGIC poisoned write error\0A\00", [53 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.262 = internal global ptr @xgene_edac_rb_report._entry.260, section ".printk_index", align 4
@xgene_edac_rb_report._entry.263 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.264, ptr @.str.235, ptr @.str.2, i32 1530, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IOB BA RBM poisoned write error\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.265 = internal global ptr @xgene_edac_rb_report._entry.263, section ".printk_index", align 4
@xgene_edac_rb_report._entry.266 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.267, ptr @.str.235, ptr @.str.2, i32 1533, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Multiple IOB BA RBM poisoned write error\0A\00", [54 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.268 = internal global ptr @xgene_edac_rb_report._entry.266, section ".printk_index", align 4
@xgene_edac_rb_report._entry.269 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.270, ptr @.str.235, ptr @.str.2, i32 1535, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"IOB BA write error\0A\00", [44 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.271 = internal global ptr @xgene_edac_rb_report._entry.269, section ".printk_index", align 4
@xgene_edac_rb_report._entry.272 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.273, ptr @.str.235, ptr @.str.2, i32 1537, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Multiple IOB BA write error\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.274 = internal global ptr @xgene_edac_rb_report._entry.272, section ".printk_index", align 4
@xgene_edac_rb_report._entry.275 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.235, ptr @.str.2, i32 1539, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IOB BA transaction error\0A\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.277 = internal global ptr @xgene_edac_rb_report._entry.275, section ".printk_index", align 4
@xgene_edac_rb_report._entry.278 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.279, ptr @.str.235, ptr @.str.2, i32 1541, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Multiple IOB BA transaction error\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.280 = internal global ptr @xgene_edac_rb_report._entry.278, section ".printk_index", align 4
@xgene_edac_rb_report._entry.281 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.282, ptr @.str.235, ptr @.str.2, i32 1544, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IOB BA RDIDRAM read transaction ID error\0A\00", [54 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.283 = internal global ptr @xgene_edac_rb_report._entry.281, section ".printk_index", align 4
@xgene_edac_rb_report._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.235, ptr @.str.2, i32 1547, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Multiple IOB BA RDIDRAM read transaction ID error\0A\00", [45 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.286 = internal global ptr @xgene_edac_rb_report._entry.284, section ".printk_index", align 4
@xgene_edac_rb_report._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.288, ptr @.str.235, ptr @.str.2, i32 1550, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"IOB BA RDIDRAM write transaction ID error\0A\00", [53 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.289 = internal global ptr @xgene_edac_rb_report._entry.287, section ".printk_index", align 4
@xgene_edac_rb_report._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.235, ptr @.str.2, i32 1553, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Multiple IOB BA RDIDRAM write transaction ID error\0A\00", [44 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.292 = internal global ptr @xgene_edac_rb_report._entry.290, section ".printk_index", align 4
@xgene_edac_rb_report._entry.293 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.294, ptr @.str.235, ptr @.str.2, i32 1556, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"IOB BA XGIC/RB illegal access error\0A\00", [59 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.295 = internal global ptr @xgene_edac_rb_report._entry.293, section ".printk_index", align 4
@xgene_edac_rb_report._entry.296 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.297, ptr @.str.235, ptr @.str.2, i32 1559, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Multiple IOB BA XGIC/RB illegal access error\0A\00", [50 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.298 = internal global ptr @xgene_edac_rb_report._entry.296, section ".printk_index", align 4
@xgene_edac_rb_report._entry.299 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.300, ptr @.str.235, ptr @.str.2, i32 1565, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"IOB BA %s access at 0x%02X.%08X (0x%08X)\0A\00", [54 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.301 = internal global ptr @xgene_edac_rb_report._entry.299, section ".printk_index", align 4
@xgene_edac_rb_report._entry.302 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.303, ptr @.str.235, ptr @.str.2, i32 1568, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IOB BA requestor ID 0x%08X\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_rb_report._entry_ptr.304 = internal global ptr @xgene_edac_rb_report._entry.302, section ".printk_index", align 4
@xgene_edac_pa_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.306, ptr @.str.2, i32 1583, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"IOB processing agent (PA) transaction error\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xgene_edac_pa_report\00", [43 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr = internal global ptr @xgene_edac_pa_report._entry, section ".printk_index", align 4
@xgene_edac_pa_report._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.306, ptr @.str.2, i32 1585, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IOB PA read data RAM error\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.309 = internal global ptr @xgene_edac_pa_report._entry.307, section ".printk_index", align 4
@xgene_edac_pa_report._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.306, ptr @.str.2, i32 1588, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Multiple IOB PA read data RAM error\0A\00", [59 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.312 = internal global ptr @xgene_edac_pa_report._entry.310, section ".printk_index", align 4
@xgene_edac_pa_report._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.306, ptr @.str.2, i32 1590, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"IOB PA write data RAM error\0A\00", [35 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.315 = internal global ptr @xgene_edac_pa_report._entry.313, section ".printk_index", align 4
@xgene_edac_pa_report._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.306, ptr @.str.2, i32 1593, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Multiple IOB PA write data RAM error\0A\00", [58 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.318 = internal global ptr @xgene_edac_pa_report._entry.316, section ".printk_index", align 4
@xgene_edac_pa_report._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.320, ptr @.str.306, ptr @.str.2, i32 1595, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.320 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"IOB PA transaction error\0A\00", [38 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.321 = internal global ptr @xgene_edac_pa_report._entry.319, section ".printk_index", align 4
@xgene_edac_pa_report._entry.322 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.306, ptr @.str.2, i32 1597, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Multiple IOB PA transaction error\0A\00", [61 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.324 = internal global ptr @xgene_edac_pa_report._entry.322, section ".printk_index", align 4
@xgene_edac_pa_report._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.326, ptr @.str.306, ptr @.str.2, i32 1599, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"IOB PA transaction ID RAM error\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.327 = internal global ptr @xgene_edac_pa_report._entry.325, section ".printk_index", align 4
@xgene_edac_pa_report._entry.328 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.329, ptr @.str.306, ptr @.str.2, i32 1602, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Multiple IOB PA transaction ID RAM error\0A\00", [54 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.330 = internal global ptr @xgene_edac_pa_report._entry.328, section ".printk_index", align 4
@xgene_edac_pa_report._entry.331 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.332, ptr @.str.306, ptr @.str.2, i32 1616, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.332 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%sAXI slave 0 illegal %s access @ 0x%02X.%08X (0x%08X)\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.333 = internal global ptr @xgene_edac_pa_report._entry.331, section ".printk_index", align 4
@.str.334 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Multiple \00", [22 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry.335 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.336, ptr @.str.306, ptr @.str.2, i32 1630, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"%sAXI slave 1 illegal %s access @ 0x%02X.%08X (0x%08X)\0A\00", [40 x i8] zeroinitializer }, align 32
@xgene_edac_pa_report._entry_ptr.337 = internal global ptr @xgene_edac_pa_report._entry.335, section ".printk_index", align 4
@.str.338 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10GbE0\00", [25 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10GbE1\00", [25 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Security\00", [23 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"SATA45\00", [25 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SATA23/ETH23\00", [19 x i8] zeroinitializer }, align 32
@.str.343 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SATA01/ETH01\00", [19 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USB1\00", [27 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USB0\00", [27 x i8] zeroinitializer }, align 32
@.str.346 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QML\00", [28 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"QM0\00", [28 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QM1 (XGbE01)\00", [19 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCIE4\00", [26 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCIE3\00", [26 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCIE2\00", [26 x i8] zeroinitializer }, align 32
@.str.352 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCIE1\00", [26 x i8] zeroinitializer }, align 32
@.str.353 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PCIE0\00", [26 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CTX Manager\00", [20 x i8] zeroinitializer }, align 32
@.str.355 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OCM\00", [28 x i8] zeroinitializer }, align 32
@.str.356 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1GbE\00", [27 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CLE\00", [28 x i8] zeroinitializer }, align 32
@.str.358 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AHBC\00", [27 x i8] zeroinitializer }, align 32
@.str.359 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PktDMA\00", [25 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"GFC\00", [28 x i8] zeroinitializer }, align 32
@.str.361 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"MSLIM\00", [26 x i8] zeroinitializer }, align 32
@.str.362 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10GbE2\00", [25 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"10GbE3\00", [25 x i8] zeroinitializer }, align 32
@.str.364 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QM2 (XGbE23)\00", [19 x i8] zeroinitializer }, align 32
@.str.365 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"IOB\00", [28 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"unknown\00", [24 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.367, ptr @.str.368, ptr @.str.2, i32 359, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.367 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no MCU resource address\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.368 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_edac_mc_add\00", [46 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry_ptr = internal global ptr @xgene_edac_mc_add._entry, section ".printk_index", align 4
@xgene_edac_mc_add._entry.369 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.370, ptr @.str.368, ptr @.str.2, i32 364, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.370 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to map MCU resource\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry_ptr.371 = internal global ptr @xgene_edac_mc_add._entry.369, section ".printk_index", align 4
@.str.372 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"memory-controller\00", [46 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.374, ptr @.str.368, ptr @.str.2, i32 371, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"no memory-controller property\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry_ptr.375 = internal global ptr @xgene_edac_mc_add._entry.373, section ".printk_index", align 4
@.str.376 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_edac_mc_err\00", [46 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"xgene_edac\00", [21 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry.378 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.379, ptr @.str.368, ptr @.str.2, i32 414, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.379 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"edac_mc_add_mc failed\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry_ptr.380 = internal global ptr @xgene_edac_mc_add._entry.378, section ".printk_index", align 4
@xgene_edac_mc_add._entry.381 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.382, ptr @.str.368, ptr @.str.2, i32 427, ptr @.str.196, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.382 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"X-Gene EDAC MC registered\0A\00", [37 x i8] zeroinitializer }, align 32
@xgene_edac_mc_add._entry_ptr.383 = internal global ptr @xgene_edac_mc_add._entry.381, section ".printk_index", align 4
@.str.384 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"inject_ctrl\00", [20 x i8] zeroinitializer }, align 32
@xgene_edac_mc_debug_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @xgene_edac_mc_err_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.385 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pmd-controller\00", [17 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.387, ptr @.str.2, i32 902, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no pmd-controller property\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.387 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_edac_pmd_add\00", [45 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry_ptr = internal global ptr @xgene_edac_pmd_add._entry, section ".printk_index", align 4
@.str.388 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l2c%d\00", [26 x i8] zeroinitializer }, align 32
@.str.389 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l2c\00", [28 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene_pmd_err\00", [18 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry.391 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.392, ptr @.str.387, ptr @.str.2, i32 937, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.392 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no PMD resource address\0A\00", [39 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry_ptr.393 = internal global ptr @xgene_edac_pmd_add._entry.391, section ".printk_index", align 4
@xgene_edac_pmd_add._entry.394 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.395, ptr @.str.387, ptr @.str.2, i32 943, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.395 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"devm_ioremap_resource failed for PMD resource address\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry_ptr.396 = internal global ptr @xgene_edac_pmd_add._entry.394, section ".printk_index", align 4
@xgene_edac_pmd_add._entry.397 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.398, ptr @.str.387, ptr @.str.2, i32 955, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.398 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"edac_device_add_device failed\0A\00", [33 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry_ptr.399 = internal global ptr @xgene_edac_pmd_add._entry.397, section ".printk_index", align 4
@xgene_edac_pmd_add._entry.400 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.401, ptr @.str.387, ptr @.str.2, i32 969, ptr @.str.196, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.401 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"X-Gene EDAC PMD%d registered\0A\00", [34 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_add._entry_ptr.402 = internal global ptr @xgene_edac_pmd_add._entry.400, section ".printk_index", align 4
@.str.403 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PMD%d\00", [26 x i8] zeroinitializer }, align 32
@.str.404 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l1_inject_ctrl\00", [17 x i8] zeroinitializer }, align 32
@xgene_edac_pmd_debug_inject_fops = internal constant { [3 x %struct.file_operations], [96 x i8] } { [3 x %struct.file_operations] [%struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @xgene_edac_pmd_l1_inject_ctrl_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @xgene_edac_pmd_l2_inject_ctrl_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, %struct.file_operations zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.405 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l2_inject_ctrl\00", [17 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.406, ptr @.str.407, ptr @.str.2, i32 1198, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.406 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no L3 resource address\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.407 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xgene_edac_l3_add\00", [46 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry_ptr = internal global ptr @xgene_edac_l3_add._entry, section ".printk_index", align 4
@xgene_edac_l3_add._entry.408 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.409, ptr @.str.407, ptr @.str.2, i32 1204, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.409 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"devm_ioremap_resource failed for L3 resource address\0A\00", [42 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry_ptr.410 = internal global ptr @xgene_edac_l3_add._entry.408, section ".printk_index", align 4
@.str.411 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"l3c\00", [28 x i8] zeroinitializer }, align 32
@.str.412 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xgene_l3_err\00", [19 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry.413 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.407, ptr @.str.2, i32 1238, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.414 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed edac_device_add_device()\0A\00", [63 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry_ptr.415 = internal global ptr @xgene_edac_l3_add._entry.413, section ".printk_index", align 4
@xgene_edac_l3_add._entry.416 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.417, ptr @.str.407, ptr @.str.2, i32 1252, ptr @.str.196, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.417 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"X-Gene EDAC L3 registered\0A\00", [37 x i8] zeroinitializer }, align 32
@xgene_edac_l3_add._entry_ptr.418 = internal global ptr @xgene_edac_l3_add._entry.416, section ".printk_index", align 4
@.str.419 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l3c%d\00", [26 x i8] zeroinitializer }, align 32
@.str.420 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l3_inject_ctrl\00", [17 x i8] zeroinitializer }, align 32
@xgene_edac_l3_debug_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @generic_file_llseek, ptr null, ptr @xgene_edac_l3_inject_ctrl_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.421, ptr @.str.422, ptr @.str.2, i32 1738, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.421 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"no SoC resource address\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.422 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xgene_edac_soc_add\00", [45 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry_ptr = internal global ptr @xgene_edac_soc_add._entry, section ".printk_index", align 4
@xgene_edac_soc_add._entry.423 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.424, ptr @.str.422, ptr @.str.2, i32 1744, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.424 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"devm_ioremap_resource failed for soc resource address\0A\00", [41 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry_ptr.425 = internal global ptr @xgene_edac_soc_add._entry.423, section ".printk_index", align 4
@.str.426 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"SOC\00", [28 x i8] zeroinitializer }, align 32
@.str.427 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgene_soc_err\00", [18 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry.428 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.414, ptr @.str.422, ptr @.str.2, i32 1776, ptr @.str.10, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry_ptr.429 = internal global ptr @xgene_edac_soc_add._entry.428, section ".printk_index", align 4
@xgene_edac_soc_add._entry.430 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.431, ptr @.str.422, ptr @.str.2, i32 1790, ptr @.str.196, ptr @.str.11 }, [40 x i8] zeroinitializer }, align 32
@.str.431 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"X-Gene EDAC SoC registered\0A\00", [36 x i8] zeroinitializer }, align 32
@xgene_edac_soc_add._entry_ptr.432 = internal global ptr @xgene_edac_soc_add._entry.430, section ".printk_index", align 4
@switch.table.xgene_edac_pmd_check = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.75, ptr @.str.78], [40 x i8] zeroinitializer }, align 32
@switch.table.xgene_edac_pmd_check.433 = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103], [40 x i8] zeroinitializer }, align 32
@switch.table.xgene_edac_pmd_check.434 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136], [32 x i8] zeroinitializer }, align 32
@switch.table.xgene_edac_pmd_check.435 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.436 = internal global [12 x i64] [i64 10, i64 32, i64 7, i64 13, i64 14, i64 25, i64 26, i64 28, i64 65, i64 78, i64 180, i64 316]
@___asan_gen_.437 = private unnamed_addr constant [18 x i8] c"xgene_edac_driver\00", align 1
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1994, i32 31 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 2019, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1998, i32 11 }
@___asan_gen_.455 = private unnamed_addr constant [20 x i8] c"xgene_edac_of_match\00", align 1
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1988, i32 34 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1861, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1862, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1865, i32 8 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1867, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1873, i32 9 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1875, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1881, i32 9 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1883, i32 3 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1888, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1890, i32 3 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1900, i32 14 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1902, i32 3 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1909, i32 3 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1921, i32 5 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1929, i32 5 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1941, i32 38 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1943, i32 38 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1945, i32 38 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1947, i32 38 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1949, i32 38 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1951, i32 38 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1953, i32 38 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 199, i32 4 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 203, i32 42 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 214, i32 4 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 237, i32 4 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 240, i32 4 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 531, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 538, i32 3 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 540, i32 3 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 543, i32 3 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 546, i32 3 }
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 549, i32 3 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 553, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 556, i32 3 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 571, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 578, i32 3 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 580, i32 3 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 583, i32 3 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 586, i32 3 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 589, i32 3 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 592, i32 3 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 595, i32 3 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 599, i32 3 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 615, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 623, i32 3 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 625, i32 3 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 628, i32 3 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 631, i32 3 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 634, i32 3 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 637, i32 3 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 640, i32 3 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 643, i32 3 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 646, i32 3 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 649, i32 3 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 675, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 678, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 687, i32 3 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 689, i32 3 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 691, i32 3 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 693, i32 3 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 697, i32 3 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 700, i32 3 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 703, i32 3 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 706, i32 3 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 727, i32 3 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1066, i32 3 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1068, i32 3 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1074, i32 3 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1076, i32 3 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1079, i32 3 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1081, i32 3 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1085, i32 3 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1093, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1096, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1661, i32 3 }
@___asan_gen_.893 = private unnamed_addr constant [15 x i8] c"soc_mem_err_v1\00", align 1
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1353, i32 27 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1671, i32 3 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1678, i32 4 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1400, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1402, i32 3 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1404, i32 3 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1406, i32 3 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1408, i32 3 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1410, i32 2 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1423, i32 3 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1432, i32 3 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1444, i32 3 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1453, i32 3 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1486, i32 3 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1491, i32 4 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1495, i32 4 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1499, i32 4 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1503, i32 4 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1518, i32 2 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1520, i32 3 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1522, i32 3 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1525, i32 3 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1527, i32 3 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1530, i32 3 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1532, i32 3 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1535, i32 3 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1537, i32 3 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1539, i32 3 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1541, i32 3 }
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1543, i32 3 }
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1546, i32 3 }
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1549, i32 3 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1552, i32 3 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1555, i32 3 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1558, i32 3 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1563, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1567, i32 3 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1583, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1585, i32 3 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1587, i32 3 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1590, i32 3 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1592, i32 3 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1595, i32 3 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1597, i32 3 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1599, i32 3 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1601, i32 3 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1612, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1626, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1354, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1355, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1356, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1357, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1358, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1359, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1360, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1361, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1362, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1363, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1364, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1365, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1366, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1367, i32 2 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1368, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1369, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1370, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1371, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1372, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1373, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1374, i32 2 }
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1375, i32 2 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1376, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1377, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1378, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1379, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1380, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1381, i32 2 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1382, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 359, i32 3 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 364, i32 3 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 370, i32 31 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 371, i32 3 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 395, i32 14 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 405, i32 18 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 414, i32 3 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 427, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 170, i32 27 }
@___asan_gen_.1328 = private unnamed_addr constant [32 x i8] c"xgene_edac_mc_debug_inject_fops\00", align 1
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 156, i32 37 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 901, i32 31 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 902, i32 3 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 914, i32 41 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 916, i32 26 }
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 924, i32 14 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 937, i32 3 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 942, i32 3 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 955, i32 3 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 969, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 870, i32 31 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 875, i32 27 }
@___asan_gen_.1382 = private unnamed_addr constant [33 x i8] c"xgene_edac_pmd_debug_inject_fops\00", align 1
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 848, i32 37 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 877, i32 27 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1198, i32 3 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1203, i32 3 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1211, i32 12 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1220, i32 14 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1238, i32 3 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1252, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1174, i32 31 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1179, i32 22 }
@___asan_gen_.1427 = private unnamed_addr constant [32 x i8] c"xgene_edac_l3_debug_inject_fops\00", align 1
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1158, i32 37 }
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1738, i32 3 }
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1743, i32 3 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1751, i32 12 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1760, i32 14 }
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1776, i32 3 }
@___asan_gen_.1454 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1457 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1458 = private constant [29 x i8] c"../drivers/edac/xgene_edac.c\00", align 1
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1458, i32 1790, i32 2 }
@___asan_gen_.1460 = private unnamed_addr constant [34 x i8] c"switch.table.xgene_edac_pmd_check\00", align 1
@___asan_gen_.1461 = private unnamed_addr constant [38 x i8] c"switch.table.xgene_edac_pmd_check.433\00", align 1
@___asan_gen_.1462 = private unnamed_addr constant [38 x i8] c"switch.table.xgene_edac_pmd_check.434\00", align 1
@___asan_gen_.1463 = private unnamed_addr constant [38 x i8] c"switch.table.xgene_edac_pmd_check.435\00", align 1
@llvm.compiler.used = appending global [482 x ptr] [ptr @__UNIQUE_ID_author239, ptr @__UNIQUE_ID_description240, ptr @__UNIQUE_ID_edac_op_state242, ptr @__UNIQUE_ID_edac_op_statetype241, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_xgene_edac_exit, ptr @__initcall__kmod_xgene_edac__236_2029_xgene_edac_init6, ptr @__param_edac_op_state, ptr @xgene_edac_exit, ptr @xgene_edac_init._entry, ptr @xgene_edac_init._entry_ptr, ptr @xgene_edac_iob_gic_report._entry, ptr @xgene_edac_iob_gic_report._entry.205, ptr @xgene_edac_iob_gic_report._entry.208, ptr @xgene_edac_iob_gic_report._entry.211, ptr @xgene_edac_iob_gic_report._entry.214, ptr @xgene_edac_iob_gic_report._entry.217, ptr @xgene_edac_iob_gic_report._entry.222, ptr @xgene_edac_iob_gic_report._entry.225, ptr @xgene_edac_iob_gic_report._entry.228, ptr @xgene_edac_iob_gic_report._entry.231, ptr @xgene_edac_iob_gic_report._entry_ptr, ptr @xgene_edac_iob_gic_report._entry_ptr.207, ptr @xgene_edac_iob_gic_report._entry_ptr.210, ptr @xgene_edac_iob_gic_report._entry_ptr.213, ptr @xgene_edac_iob_gic_report._entry_ptr.216, ptr @xgene_edac_iob_gic_report._entry_ptr.219, ptr @xgene_edac_iob_gic_report._entry_ptr.224, ptr @xgene_edac_iob_gic_report._entry_ptr.227, ptr @xgene_edac_iob_gic_report._entry_ptr.230, ptr @xgene_edac_iob_gic_report._entry_ptr.233, ptr @xgene_edac_l3_add._entry, ptr @xgene_edac_l3_add._entry.408, ptr @xgene_edac_l3_add._entry.413, ptr @xgene_edac_l3_add._entry.416, ptr @xgene_edac_l3_add._entry_ptr, ptr @xgene_edac_l3_add._entry_ptr.410, ptr @xgene_edac_l3_add._entry_ptr.415, ptr @xgene_edac_l3_add._entry_ptr.418, ptr @xgene_edac_l3_check._entry, ptr @xgene_edac_l3_check._entry.170, ptr @xgene_edac_l3_check._entry.173, ptr @xgene_edac_l3_check._entry.176, ptr @xgene_edac_l3_check._entry.179, ptr @xgene_edac_l3_check._entry.182, ptr @xgene_edac_l3_check._entry.185, ptr @xgene_edac_l3_check._entry.188, ptr @xgene_edac_l3_check._entry.191, ptr @xgene_edac_l3_check._entry_ptr, ptr @xgene_edac_l3_check._entry_ptr.172, ptr @xgene_edac_l3_check._entry_ptr.175, ptr @xgene_edac_l3_check._entry_ptr.178, ptr @xgene_edac_l3_check._entry_ptr.181, ptr @xgene_edac_l3_check._entry_ptr.184, ptr @xgene_edac_l3_check._entry_ptr.187, ptr @xgene_edac_l3_check._entry_ptr.190, ptr @xgene_edac_l3_check._entry_ptr.193, ptr @xgene_edac_mc_add._entry, ptr @xgene_edac_mc_add._entry.369, ptr @xgene_edac_mc_add._entry.373, ptr @xgene_edac_mc_add._entry.378, ptr @xgene_edac_mc_add._entry.381, ptr @xgene_edac_mc_add._entry_ptr, ptr @xgene_edac_mc_add._entry_ptr.371, ptr @xgene_edac_mc_add._entry_ptr.375, ptr @xgene_edac_mc_add._entry_ptr.380, ptr @xgene_edac_mc_add._entry_ptr.383, ptr @xgene_edac_mc_check._entry, ptr @xgene_edac_mc_check._entry.48, ptr @xgene_edac_mc_check._entry.51, ptr @xgene_edac_mc_check._entry.54, ptr @xgene_edac_mc_check._entry_ptr, ptr @xgene_edac_mc_check._entry_ptr.50, ptr @xgene_edac_mc_check._entry_ptr.53, ptr @xgene_edac_mc_check._entry_ptr.56, ptr @xgene_edac_pa_report._entry, ptr @xgene_edac_pa_report._entry.307, ptr @xgene_edac_pa_report._entry.310, ptr @xgene_edac_pa_report._entry.313, ptr @xgene_edac_pa_report._entry.316, ptr @xgene_edac_pa_report._entry.319, ptr @xgene_edac_pa_report._entry.322, ptr @xgene_edac_pa_report._entry.325, ptr @xgene_edac_pa_report._entry.328, ptr @xgene_edac_pa_report._entry.331, ptr @xgene_edac_pa_report._entry.335, ptr @xgene_edac_pa_report._entry_ptr, ptr @xgene_edac_pa_report._entry_ptr.309, ptr @xgene_edac_pa_report._entry_ptr.312, ptr @xgene_edac_pa_report._entry_ptr.315, ptr @xgene_edac_pa_report._entry_ptr.318, ptr @xgene_edac_pa_report._entry_ptr.321, ptr @xgene_edac_pa_report._entry_ptr.324, ptr @xgene_edac_pa_report._entry_ptr.327, ptr @xgene_edac_pa_report._entry_ptr.330, ptr @xgene_edac_pa_report._entry_ptr.333, ptr @xgene_edac_pa_report._entry_ptr.337, ptr @xgene_edac_pmd_add._entry, ptr @xgene_edac_pmd_add._entry.391, ptr @xgene_edac_pmd_add._entry.394, ptr @xgene_edac_pmd_add._entry.397, ptr @xgene_edac_pmd_add._entry.400, ptr @xgene_edac_pmd_add._entry_ptr, ptr @xgene_edac_pmd_add._entry_ptr.393, ptr @xgene_edac_pmd_add._entry_ptr.396, ptr @xgene_edac_pmd_add._entry_ptr.399, ptr @xgene_edac_pmd_add._entry_ptr.402, ptr @xgene_edac_pmd_l1_check._entry, ptr @xgene_edac_pmd_l1_check._entry.102, ptr @xgene_edac_pmd_l1_check._entry.105, ptr @xgene_edac_pmd_l1_check._entry.110, ptr @xgene_edac_pmd_l1_check._entry.112, ptr @xgene_edac_pmd_l1_check._entry.114, ptr @xgene_edac_pmd_l1_check._entry.117, ptr @xgene_edac_pmd_l1_check._entry.120, ptr @xgene_edac_pmd_l1_check._entry.123, ptr @xgene_edac_pmd_l1_check._entry.126, ptr @xgene_edac_pmd_l1_check._entry.129, ptr @xgene_edac_pmd_l1_check._entry.132, ptr @xgene_edac_pmd_l1_check._entry.135, ptr @xgene_edac_pmd_l1_check._entry.59, ptr @xgene_edac_pmd_l1_check._entry.62, ptr @xgene_edac_pmd_l1_check._entry.65, ptr @xgene_edac_pmd_l1_check._entry.68, ptr @xgene_edac_pmd_l1_check._entry.71, ptr @xgene_edac_pmd_l1_check._entry.74, ptr @xgene_edac_pmd_l1_check._entry.77, ptr @xgene_edac_pmd_l1_check._entry.80, ptr @xgene_edac_pmd_l1_check._entry.83, ptr @xgene_edac_pmd_l1_check._entry.85, ptr @xgene_edac_pmd_l1_check._entry.87, ptr @xgene_edac_pmd_l1_check._entry.90, ptr @xgene_edac_pmd_l1_check._entry.93, ptr @xgene_edac_pmd_l1_check._entry.96, ptr @xgene_edac_pmd_l1_check._entry.99, ptr @xgene_edac_pmd_l1_check._entry_ptr, ptr @xgene_edac_pmd_l1_check._entry_ptr.101, ptr @xgene_edac_pmd_l1_check._entry_ptr.104, ptr @xgene_edac_pmd_l1_check._entry_ptr.107, ptr @xgene_edac_pmd_l1_check._entry_ptr.111, ptr @xgene_edac_pmd_l1_check._entry_ptr.113, ptr @xgene_edac_pmd_l1_check._entry_ptr.116, ptr @xgene_edac_pmd_l1_check._entry_ptr.119, ptr @xgene_edac_pmd_l1_check._entry_ptr.122, ptr @xgene_edac_pmd_l1_check._entry_ptr.125, ptr @xgene_edac_pmd_l1_check._entry_ptr.128, ptr @xgene_edac_pmd_l1_check._entry_ptr.131, ptr @xgene_edac_pmd_l1_check._entry_ptr.134, ptr @xgene_edac_pmd_l1_check._entry_ptr.137, ptr @xgene_edac_pmd_l1_check._entry_ptr.61, ptr @xgene_edac_pmd_l1_check._entry_ptr.64, ptr @xgene_edac_pmd_l1_check._entry_ptr.67, ptr @xgene_edac_pmd_l1_check._entry_ptr.70, ptr @xgene_edac_pmd_l1_check._entry_ptr.73, ptr @xgene_edac_pmd_l1_check._entry_ptr.76, ptr @xgene_edac_pmd_l1_check._entry_ptr.79, ptr @xgene_edac_pmd_l1_check._entry_ptr.82, ptr @xgene_edac_pmd_l1_check._entry_ptr.84, ptr @xgene_edac_pmd_l1_check._entry_ptr.86, ptr @xgene_edac_pmd_l1_check._entry_ptr.89, ptr @xgene_edac_pmd_l1_check._entry_ptr.92, ptr @xgene_edac_pmd_l1_check._entry_ptr.95, ptr @xgene_edac_pmd_l1_check._entry_ptr.98, ptr @xgene_edac_pmd_l2_check._entry, ptr @xgene_edac_pmd_l2_check._entry.140, ptr @xgene_edac_pmd_l2_check._entry.143, ptr @xgene_edac_pmd_l2_check._entry.145, ptr @xgene_edac_pmd_l2_check._entry.147, ptr @xgene_edac_pmd_l2_check._entry.150, ptr @xgene_edac_pmd_l2_check._entry.153, ptr @xgene_edac_pmd_l2_check._entry.156, ptr @xgene_edac_pmd_l2_check._entry.159, ptr @xgene_edac_pmd_l2_check._entry.162, ptr @xgene_edac_pmd_l2_check._entry.165, ptr @xgene_edac_pmd_l2_check._entry_ptr, ptr @xgene_edac_pmd_l2_check._entry_ptr.142, ptr @xgene_edac_pmd_l2_check._entry_ptr.144, ptr @xgene_edac_pmd_l2_check._entry_ptr.146, ptr @xgene_edac_pmd_l2_check._entry_ptr.149, ptr @xgene_edac_pmd_l2_check._entry_ptr.152, ptr @xgene_edac_pmd_l2_check._entry_ptr.155, ptr @xgene_edac_pmd_l2_check._entry_ptr.158, ptr @xgene_edac_pmd_l2_check._entry_ptr.161, ptr @xgene_edac_pmd_l2_check._entry_ptr.164, ptr @xgene_edac_pmd_l2_check._entry_ptr.167, ptr @xgene_edac_probe._entry, ptr @xgene_edac_probe._entry.13, ptr @xgene_edac_probe._entry.17, ptr @xgene_edac_probe._entry.21, ptr @xgene_edac_probe._entry.25, ptr @xgene_edac_probe._entry.29, ptr @xgene_edac_probe._entry.32, ptr @xgene_edac_probe._entry.35, ptr @xgene_edac_probe._entry_ptr, ptr @xgene_edac_probe._entry_ptr.15, ptr @xgene_edac_probe._entry_ptr.19, ptr @xgene_edac_probe._entry_ptr.23, ptr @xgene_edac_probe._entry_ptr.28, ptr @xgene_edac_probe._entry_ptr.31, ptr @xgene_edac_probe._entry_ptr.34, ptr @xgene_edac_probe._entry_ptr.37, ptr @xgene_edac_rb_report._entry, ptr @xgene_edac_rb_report._entry.236, ptr @xgene_edac_rb_report._entry.239, ptr @xgene_edac_rb_report._entry.242, ptr @xgene_edac_rb_report._entry.245, ptr @xgene_edac_rb_report._entry.248, ptr @xgene_edac_rb_report._entry.251, ptr @xgene_edac_rb_report._entry.254, ptr @xgene_edac_rb_report._entry.257, ptr @xgene_edac_rb_report._entry.260, ptr @xgene_edac_rb_report._entry.263, ptr @xgene_edac_rb_report._entry.266, ptr @xgene_edac_rb_report._entry.269, ptr @xgene_edac_rb_report._entry.272, ptr @xgene_edac_rb_report._entry.275, ptr @xgene_edac_rb_report._entry.278, ptr @xgene_edac_rb_report._entry.281, ptr @xgene_edac_rb_report._entry.284, ptr @xgene_edac_rb_report._entry.287, ptr @xgene_edac_rb_report._entry.290, ptr @xgene_edac_rb_report._entry.293, ptr @xgene_edac_rb_report._entry.296, ptr @xgene_edac_rb_report._entry.299, ptr @xgene_edac_rb_report._entry.302, ptr @xgene_edac_rb_report._entry_ptr, ptr @xgene_edac_rb_report._entry_ptr.238, ptr @xgene_edac_rb_report._entry_ptr.241, ptr @xgene_edac_rb_report._entry_ptr.244, ptr @xgene_edac_rb_report._entry_ptr.247, ptr @xgene_edac_rb_report._entry_ptr.250, ptr @xgene_edac_rb_report._entry_ptr.253, ptr @xgene_edac_rb_report._entry_ptr.256, ptr @xgene_edac_rb_report._entry_ptr.259, ptr @xgene_edac_rb_report._entry_ptr.262, ptr @xgene_edac_rb_report._entry_ptr.265, ptr @xgene_edac_rb_report._entry_ptr.268, ptr @xgene_edac_rb_report._entry_ptr.271, ptr @xgene_edac_rb_report._entry_ptr.274, ptr @xgene_edac_rb_report._entry_ptr.277, ptr @xgene_edac_rb_report._entry_ptr.280, ptr @xgene_edac_rb_report._entry_ptr.283, ptr @xgene_edac_rb_report._entry_ptr.286, ptr @xgene_edac_rb_report._entry_ptr.289, ptr @xgene_edac_rb_report._entry_ptr.292, ptr @xgene_edac_rb_report._entry_ptr.295, ptr @xgene_edac_rb_report._entry_ptr.298, ptr @xgene_edac_rb_report._entry_ptr.301, ptr @xgene_edac_rb_report._entry_ptr.304, ptr @xgene_edac_soc_add._entry, ptr @xgene_edac_soc_add._entry.423, ptr @xgene_edac_soc_add._entry.428, ptr @xgene_edac_soc_add._entry.430, ptr @xgene_edac_soc_add._entry_ptr, ptr @xgene_edac_soc_add._entry_ptr.425, ptr @xgene_edac_soc_add._entry_ptr.429, ptr @xgene_edac_soc_add._entry_ptr.432, ptr @xgene_edac_soc_check._entry, ptr @xgene_edac_soc_check._entry.197, ptr @xgene_edac_soc_check._entry.200, ptr @xgene_edac_soc_check._entry_ptr, ptr @xgene_edac_soc_check._entry_ptr.199, ptr @xgene_edac_soc_check._entry_ptr.202, ptr @xgene_edac_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xgene_edac_of_match, ptr @xgene_edac_probe.__key, ptr @.str.4, ptr @xgene_edac_probe.__key.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.88, ptr @.str.91, ptr @.str.94, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.106, ptr @.str.108, ptr @.str.109, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.138, ptr @.str.139, ptr @.str.141, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.168, ptr @.str.169, ptr @.str.171, ptr @.str.174, ptr @.str.177, ptr @.str.180, ptr @.str.183, ptr @.str.186, ptr @.str.189, ptr @.str.192, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @soc_mem_err_v1, ptr @.str.198, ptr @.str.201, ptr @.str.203, ptr @.str.204, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.226, ptr @.str.229, ptr @.str.232, ptr @.str.234, ptr @.str.235, ptr @.str.237, ptr @.str.240, ptr @.str.243, ptr @.str.246, ptr @.str.249, ptr @.str.252, ptr @.str.255, ptr @.str.258, ptr @.str.261, ptr @.str.264, ptr @.str.267, ptr @.str.270, ptr @.str.273, ptr @.str.276, ptr @.str.279, ptr @.str.282, ptr @.str.285, ptr @.str.288, ptr @.str.291, ptr @.str.294, ptr @.str.297, ptr @.str.300, ptr @.str.303, ptr @.str.305, ptr @.str.306, ptr @.str.308, ptr @.str.311, ptr @.str.314, ptr @.str.317, ptr @.str.320, ptr @.str.323, ptr @.str.326, ptr @.str.329, ptr @.str.332, ptr @.str.334, ptr @.str.336, ptr @.str.338, ptr @.str.339, ptr @.str.340, ptr @.str.341, ptr @.str.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.str.346, ptr @.str.347, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @.str.351, ptr @.str.352, ptr @.str.353, ptr @.str.354, ptr @.str.355, ptr @.str.356, ptr @.str.357, ptr @.str.358, ptr @.str.359, ptr @.str.360, ptr @.str.361, ptr @.str.362, ptr @.str.363, ptr @.str.364, ptr @.str.365, ptr @.str.366, ptr @.str.367, ptr @.str.368, ptr @.str.370, ptr @.str.372, ptr @.str.374, ptr @.str.376, ptr @.str.377, ptr @.str.379, ptr @.str.382, ptr @.str.384, ptr @xgene_edac_mc_debug_inject_fops, ptr @.str.385, ptr @.str.386, ptr @.str.387, ptr @.str.388, ptr @.str.389, ptr @.str.390, ptr @.str.392, ptr @.str.395, ptr @.str.398, ptr @.str.401, ptr @.str.403, ptr @.str.404, ptr @xgene_edac_pmd_debug_inject_fops, ptr @.str.405, ptr @.str.406, ptr @.str.407, ptr @.str.409, ptr @.str.411, ptr @.str.412, ptr @.str.414, ptr @.str.417, ptr @.str.419, ptr @.str.420, ptr @xgene_edac_l3_debug_inject_fops, ptr @.str.421, ptr @.str.422, ptr @.str.424, ptr @.str.426, ptr @.str.427, ptr @.str.431, ptr @switch.table.xgene_edac_pmd_check, ptr @switch.table.xgene_edac_pmd_check.433, ptr @switch.table.xgene_edac_pmd_check.434, ptr @switch.table.xgene_edac_pmd_check.435], section "llvm.metadata"
@0 = internal global [345 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe.__key.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_check._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_check._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_check._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.93 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.105 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.110 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l1_check._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.143 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_l2_check._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.170 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.173 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.176 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.179 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.182 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.188 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_check._entry.191 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_mem_err_v1 to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_check._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_check._entry.200 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.228 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_iob_gic_report._entry.231 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.236 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.239 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.242 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.245 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.260 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.263 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.266 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.272 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.275 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.278 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.281 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.293 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.296 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.299 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_rb_report._entry.302 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.322 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.328 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.331 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.332 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pa_report._entry.335 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.346 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.352 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.353 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.355 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.356 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.358 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.359 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.361 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.362 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.364 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.365 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.367 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.368 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_add._entry.369 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.370 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.372 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_add._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.376 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_add._entry.378 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.379 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_add._entry.381 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.382 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.384 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_mc_debug_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1328 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.385 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.387 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.389 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_add._entry.391 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.392 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_add._entry.394 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.395 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_add._entry.397 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.398 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_add._entry.400 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.401 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.403 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.404 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_pmd_debug_inject_fops to i32), i32 384, i32 480, i32 ptrtoint (ptr @___asan_gen_.1382 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.405 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.406 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.407 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_add._entry.408 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.409 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.411 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.412 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_add._entry.413 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.414 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_add._entry.416 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.417 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.419 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.420 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_l3_debug_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.1427 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.421 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.422 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_add._entry.423 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.424 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.426 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.427 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_add._entry.428 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgene_edac_soc_add._entry.430 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1454 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.431 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1457 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgene_edac_pmd_check to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1460 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgene_edac_pmd_check.433 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1461 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgene_edac_pmd_check.434 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xgene_edac_pmd_check.435 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1463 to i32), i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %0 = load i32, ptr @edac_op_state, align 4
  %1 = zext i32 %0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %0, label %sw.default [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 2, label %entry.sw.epilog_crit_edge3
  ]

entry.sw.epilog_crit_edge3:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  store i32 2, ptr @edac_op_state, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge3
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgene_edac_driver, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %do.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %sw.epilog.cleanup_crit_edge
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgene_edac_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgene_edac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_probe(ptr noundef %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 208, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup157_crit_edge, label %if.end

entry.cleanup157_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %mcus = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %mcus to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %mcus, ptr %mcus, align 4
  %prev.i = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %mcus, ptr %prev.i, align 4
  %pmds = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 10
  %4 = ptrtoint ptr %pmds to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %pmds, ptr %pmds, align 4
  %prev.i242 = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i242 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %pmds, ptr %prev.i242, align 4
  %l3s = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 11
  %6 = ptrtoint ptr %l3s to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %l3s, ptr %l3s, align 4
  %prev.i243 = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %l3s, ptr %prev.i243, align 4
  %socs = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 12
  %8 = ptrtoint ptr %socs to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %socs, ptr %socs, align 4
  %prev.i244 = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 12, i32 1
  %9 = ptrtoint ptr %prev.i244 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %socs, ptr %prev.i244, align 4
  %lock = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 7
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.4, ptr noundef nonnull @xgene_edac_probe.__key, i16 noundef signext 3) #7
  %mc_lock = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mc_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @xgene_edac_probe.__key.5) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call8 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %11, ptr noundef nonnull @.str.7) #7
  %csw_map = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 1
  %12 = ptrtoint ptr %csw_map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call8, ptr %csw_map, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end14, label %if.end18

do.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8) #10
  %15 = ptrtoint ptr %csw_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %csw_map, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup157

if.end18:                                         ; preds = %if.end
  %18 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %of_node, align 8
  %call21 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %19, ptr noundef nonnull @.str.12) #7
  %mcba_map = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %mcba_map to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call21, ptr %mcba_map, align 4
  %cmp.i245 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %do.end27, label %if.end31

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.14) #10
  %23 = ptrtoint ptr %mcba_map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcba_map, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup157

if.end31:                                         ; preds = %if.end18
  %26 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %of_node, align 8
  %call34 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %27, ptr noundef nonnull @.str.16) #7
  %mcbb_map = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 3
  %28 = ptrtoint ptr %mcbb_map to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call34, ptr %mcbb_map, align 4
  %cmp.i246 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i246, label %do.end40, label %if.end44

do.end40:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.18) #10
  %31 = ptrtoint ptr %mcbb_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mcbb_map, align 4
  %33 = ptrtoint ptr %32 to i32
  br label %cleanup157

if.end44:                                         ; preds = %if.end31
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %call47 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %35, ptr noundef nonnull @.str.20) #7
  %efuse_map = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 4
  %36 = ptrtoint ptr %efuse_map to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call47, ptr %efuse_map, align 4
  %cmp.i247 = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.22) #10
  %39 = ptrtoint ptr %efuse_map to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %efuse_map, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %cleanup157

if.end57:                                         ; preds = %if.end44
  %42 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %of_node, align 8
  %call60 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %43, ptr noundef nonnull @.str.24) #7
  %rb_map = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 5
  %44 = ptrtoint ptr %rb_map to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call60, ptr %rb_map, align 4
  %cmp.i248 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i248, label %do.end66, label %if.end57.if.end69_crit_edge

if.end57.if.end69_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.26) #10
  %47 = ptrtoint ptr %rb_map to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %rb_map, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end66, %if.end57.if.end69_crit_edge
  %call70 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call72 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call70) #7
  %pcp_csr = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 6
  %48 = ptrtoint ptr %pcp_csr to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call72, ptr %pcp_csr, align 4
  %cmp.i249 = icmp ugt ptr %call72, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end78, label %if.end82

do.end78:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #10
  %49 = ptrtoint ptr %pcp_csr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %pcp_csr, align 4
  %51 = ptrtoint ptr %50 to i32
  br label %cleanup157

if.end82:                                         ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %52 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %52)
  %cmp = icmp eq i32 %52, 2
  br i1 %cmp, label %for.cond.preheader, label %if.end82.if.end105_crit_edge

if.end82.if.end105_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

for.cond.preheader:                               ; preds = %if.end82
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %call85 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %cmp86 = icmp slt i32 %call85, 0
  br i1 %cmp86, label %for.cond.preheader.do.end90_crit_edge, label %if.end92

for.cond.preheader.do.end90_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

for.cond:                                         ; preds = %dev_name.exit
  %call85.1 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.1)
  %cmp86.1 = icmp slt i32 %call85.1, 0
  br i1 %cmp86.1, label %for.cond.do.end90_crit_edge, label %if.end92.1

for.cond.do.end90_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.end92.1:                                       ; preds = %for.cond
  %53 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.1 = icmp eq ptr %54, null
  br i1 %tobool.not.i.1, label %if.end.i.1, label %if.end92.1.dev_name.exit.1_crit_edge

if.end92.1.dev_name.exit.1_crit_edge:             ; preds = %if.end92.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.1

if.end.i.1:                                       ; preds = %if.end92.1
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.1

dev_name.exit.1:                                  ; preds = %if.end.i.1, %if.end92.1.dev_name.exit.1_crit_edge
  %retval.0.i.1 = phi ptr [ %56, %if.end.i.1 ], [ %54, %if.end92.1.dev_name.exit.1_crit_edge ]
  %call.i250.1 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call85.1, ptr noundef nonnull @xgene_edac_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.1, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250.1)
  %tobool97.not.1 = icmp eq i32 %call.i250.1, 0
  br i1 %tobool97.not.1, label %for.cond.1, label %dev_name.exit.1.do.end101_crit_edge

dev_name.exit.1.do.end101_crit_edge:              ; preds = %dev_name.exit.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

for.cond.1:                                       ; preds = %dev_name.exit.1
  %call85.2 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85.2)
  %cmp86.2 = icmp slt i32 %call85.2, 0
  br i1 %cmp86.2, label %for.cond.1.do.end90_crit_edge, label %if.end92.2

for.cond.1.do.end90_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end90

if.end92.2:                                       ; preds = %for.cond.1
  %57 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i.2 = icmp eq ptr %58, null
  br i1 %tobool.not.i.2, label %if.end.i.2, label %if.end92.2.dev_name.exit.2_crit_edge

if.end92.2.dev_name.exit.2_crit_edge:             ; preds = %if.end92.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.2

if.end.i.2:                                       ; preds = %if.end92.2
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.2

dev_name.exit.2:                                  ; preds = %if.end.i.2, %if.end92.2.dev_name.exit.2_crit_edge
  %retval.0.i.2 = phi ptr [ %60, %if.end.i.2 ], [ %58, %if.end92.2.dev_name.exit.2_crit_edge ]
  %call.i250.2 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call85.2, ptr noundef nonnull @xgene_edac_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i.2, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250.2)
  %tobool97.not.2 = icmp eq i32 %call.i250.2, 0
  br i1 %tobool97.not.2, label %dev_name.exit.2.if.end105_crit_edge, label %dev_name.exit.2.do.end101_crit_edge

dev_name.exit.2.do.end101_crit_edge:              ; preds = %dev_name.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

dev_name.exit.2.if.end105_crit_edge:              ; preds = %dev_name.exit.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end105

do.end90:                                         ; preds = %for.cond.1.do.end90_crit_edge, %for.cond.do.end90_crit_edge, %for.cond.preheader.do.end90_crit_edge
  %call85.lcssa = phi i32 [ %call85, %for.cond.preheader.do.end90_crit_edge ], [ %call85.1, %for.cond.do.end90_crit_edge ], [ %call85.2, %for.cond.1.do.end90_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #10
  br label %cleanup157

if.end92:                                         ; preds = %for.cond.preheader
  %61 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %62, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end92.dev_name.exit_crit_edge

if.end92.dev_name.exit_crit_edge:                 ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end92.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %64, %if.end.i ], [ %62, %if.end92.dev_name.exit_crit_edge ]
  %call.i250 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call85, ptr noundef nonnull @xgene_edac_isr, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i250)
  %tobool97.not = icmp eq i32 %call.i250, 0
  br i1 %tobool97.not, label %for.cond, label %dev_name.exit.do.end101_crit_edge

dev_name.exit.do.end101_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end101

do.end101:                                        ; preds = %dev_name.exit.do.end101_crit_edge, %dev_name.exit.2.do.end101_crit_edge, %dev_name.exit.1.do.end101_crit_edge
  %call.i250.lcssa = phi i32 [ %call.i250, %dev_name.exit.do.end101_crit_edge ], [ %call.i250.1, %dev_name.exit.1.do.end101_crit_edge ], [ %call.i250.2, %dev_name.exit.2.do.end101_crit_edge ]
  %call85.lcssa265 = phi i32 [ %call85, %dev_name.exit.do.end101_crit_edge ], [ %call85.1, %dev_name.exit.1.do.end101_crit_edge ], [ %call85.2, %dev_name.exit.2.do.end101_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call85.lcssa265) #10
  br label %cleanup157

if.end105:                                        ; preds = %dev_name.exit.2.if.end105_crit_edge, %if.end82.if.end105_crit_edge
  %65 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %dev, align 8
  %call107 = tail call ptr @edac_debugfs_create_dir(ptr noundef %66) #7
  %dfs = getelementptr inbounds %struct.xgene_edac, ptr %call.i, i32 0, i32 8
  %67 = ptrtoint ptr %dfs to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call107, ptr %dfs, align 4
  %68 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %of_node, align 8
  %call110 = tail call ptr @of_get_next_child(ptr noundef %69, ptr noundef null) #7
  %cmp112.not256 = icmp eq ptr %call110, null
  br i1 %cmp112.not256, label %if.end105.cleanup157_crit_edge, label %if.end105.for.body113_crit_edge

if.end105.for.body113_crit_edge:                  ; preds = %if.end105
  br label %for.body113

if.end105.cleanup157_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

for.body113:                                      ; preds = %for.inc152.for.body113_crit_edge, %if.end105.for.body113_crit_edge
  %child.0257 = phi ptr [ %call155, %for.inc152.for.body113_crit_edge ], [ %call110, %if.end105.for.body113_crit_edge ]
  %call114 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %child.0257) #7
  br i1 %call114, label %if.end116, label %for.body113.for.inc152_crit_edge

for.body113.for.inc152_crit_edge:                 ; preds = %for.body113
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

if.end116:                                        ; preds = %for.body113
  %call117 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.38) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call117)
  %tobool118.not = icmp eq i32 %call117, 0
  br i1 %tobool118.not, label %if.end116.if.end121_crit_edge, label %if.then119

if.end116.if.end121_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end121

if.then119:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %call120 = tail call i32 @xgene_edac_mc_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257)
  br label %if.end121

if.end121:                                        ; preds = %if.then119, %if.end116.if.end121_crit_edge
  %call122 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %if.end121.if.end126_crit_edge, label %if.then124

if.end121.if.end126_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.then124:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #9
  %call125 = tail call i32 @xgene_edac_pmd_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 1)
  br label %if.end126

if.end126:                                        ; preds = %if.then124, %if.end121.if.end126_crit_edge
  %call127 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call127)
  %tobool128.not = icmp eq i32 %call127, 0
  br i1 %tobool128.not, label %if.end126.if.end131_crit_edge, label %if.then129

if.end126.if.end131_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end131

if.then129:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %call130 = tail call i32 @xgene_edac_pmd_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 2)
  br label %if.end131

if.end131:                                        ; preds = %if.then129, %if.end126.if.end131_crit_edge
  %call132 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.41) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end131.if.end136_crit_edge, label %if.then134

if.end131.if.end136_crit_edge:                    ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then134:                                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = tail call i32 @xgene_edac_l3_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 1)
  br label %if.end136

if.end136:                                        ; preds = %if.then134, %if.end131.if.end136_crit_edge
  %call137 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call137)
  %tobool138.not = icmp eq i32 %call137, 0
  br i1 %tobool138.not, label %if.end136.if.end141_crit_edge, label %if.then139

if.end136.if.end141_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end141

if.then139:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %call140 = tail call i32 @xgene_edac_l3_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 2)
  br label %if.end141

if.end141:                                        ; preds = %if.then139, %if.end136.if.end141_crit_edge
  %call142 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.43) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end141.if.end146_crit_edge, label %if.then144

if.end141.if.end146_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end146

if.then144:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #9
  %call145 = tail call i32 @xgene_edac_soc_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 0)
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end141.if.end146_crit_edge
  %call147 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %child.0257, ptr noundef nonnull @.str.44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end146.for.inc152_crit_edge, label %if.then149

if.end146.for.inc152_crit_edge:                   ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc152

if.then149:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #9
  %call150 = tail call i32 @xgene_edac_soc_add(ptr noundef nonnull %call.i, ptr noundef nonnull %child.0257, i32 noundef 1)
  br label %for.inc152

for.inc152:                                       ; preds = %if.then149, %if.end146.for.inc152_crit_edge, %for.body113.for.inc152_crit_edge
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 8
  %call155 = tail call ptr @of_get_next_child(ptr noundef %71, ptr noundef nonnull %child.0257) #7
  %cmp112.not = icmp eq ptr %call155, null
  br i1 %cmp112.not, label %for.inc152.cleanup157_crit_edge, label %for.inc152.for.body113_crit_edge

for.inc152.for.body113_crit_edge:                 ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body113

for.inc152.cleanup157_crit_edge:                  ; preds = %for.inc152
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup157

cleanup157:                                       ; preds = %for.inc152.cleanup157_crit_edge, %if.end105.cleanup157_crit_edge, %do.end101, %do.end90, %do.end78, %do.end53, %do.end40, %do.end27, %do.end14, %entry.cleanup157_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup157_crit_edge ], [ %17, %do.end14 ], [ %25, %do.end27 ], [ %33, %do.end40 ], [ %41, %do.end53 ], [ %51, %do.end78 ], [ %call.i250.lcssa, %do.end101 ], [ %call85.lcssa, %do.end90 ], [ 0, %if.end105.cleanup157_crit_edge ], [ 0, %for.inc152.cleanup157_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_remove(ptr nocapture noundef readonly %pdev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %mcus = getelementptr inbounds %struct.xgene_edac, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %mcus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mcus, align 4
  %cmp.not110 = icmp eq ptr %3, %mcus
  br i1 %cmp.not110, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %mcu.0111 = phi ptr [ %temp_mcu.0, %for.body.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %mcu.0111 to i32
  call void @__asan_load4_noabort(i32 %4)
  %temp_mcu.0 = load ptr, ptr %mcu.0111, align 4
  %mci.i = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %mcu.0111, i32 0, i32 2
  %5 = ptrtoint ptr %mci.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mci.i, align 4
  tail call fastcc void @xgene_edac_mc_irq_ctl(ptr noundef %6, i1 noundef zeroext false) #7
  %7 = ptrtoint ptr %mci.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mci.i, align 4
  %call.i = tail call ptr @edac_mc_del_mc(ptr noundef %8) #7
  %9 = ptrtoint ptr %mci.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mci.i, align 4
  tail call void @edac_mc_free(ptr noundef %10) #7
  %cmp.not = icmp eq ptr %temp_mcu.0, %mcus
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %pmds = getelementptr inbounds %struct.xgene_edac, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %pmds to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pmds, align 4
  %cmp26.not112 = icmp eq ptr %12, %pmds
  br i1 %cmp26.not112, label %for.end.for.end36_crit_edge, label %for.end.for.body28_crit_edge

for.end.for.body28_crit_edge:                     ; preds = %for.end
  br label %for.body28

for.end.for.end36_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.body28:                                       ; preds = %xgene_edac_pmd_remove.exit.for.body28_crit_edge, %for.end.for.body28_crit_edge
  %pmd.0113 = phi ptr [ %temp_pmd.0, %xgene_edac_pmd_remove.exit.for.body28_crit_edge ], [ %12, %for.end.for.body28_crit_edge ]
  %13 = ptrtoint ptr %pmd.0113 to i32
  call void @__asan_load4_noabort(i32 %13)
  %temp_pmd.0 = load ptr, ptr %pmd.0113, align 8
  %edac_dev1.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %pmd.0113, i32 0, i32 4
  %14 = ptrtoint ptr %edac_dev1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edac_dev1.i, align 8
  %op_state.i.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %15, i32 0, i32 10
  %16 = ptrtoint ptr %op_state.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %op_state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %17)
  %cmp.i.i = icmp eq i32 %17, 514
  br i1 %cmp.i.i, label %if.then.i.i, label %for.body28.xgene_edac_pmd_remove.exit_crit_edge

for.body28.xgene_edac_pmd_remove.exit_crit_edge:  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_pmd_remove.exit

if.then.i.i:                                      ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  %pvt_info.i.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %15, i32 0, i32 17
  %18 = ptrtoint ptr %pvt_info.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pvt_info.i.i, align 4
  %edac.i.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %edac.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %edac.i.i, align 4
  %pmd.i.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %19, i32 0, i32 6
  %22 = ptrtoint ptr %pmd.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %pmd.i.i, align 8
  %shl.i.i = shl nuw i32 1, %23
  %lock.i.i.i = getelementptr inbounds %struct.xgene_edac, ptr %21, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i.i.i) #7
  %pcp_csr.i.i.i = getelementptr inbounds %struct.xgene_edac, ptr %21, i32 0, i32 6
  %24 = ptrtoint ptr %pcp_csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcp_csr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  %or.i.i.i = or i32 %27, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i.i.i) #7
  %29 = ptrtoint ptr %pcp_csr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcp_csr.i.i.i, align 4
  %add.ptr3.i22.i.i = getelementptr i8, ptr %30, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i22.i.i, i32 %28) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i.i.i) #7
  br label %xgene_edac_pmd_remove.exit

xgene_edac_pmd_remove.exit:                       ; preds = %if.then.i.i, %for.body28.xgene_edac_pmd_remove.exit_crit_edge
  %dev.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %15, i32 0, i32 13
  %31 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i, align 4
  %call.i104 = tail call ptr @edac_device_del_device(ptr noundef %32) #7
  tail call void @edac_device_free_ctl_info(ptr noundef %15) #7
  %cmp26.not = icmp eq ptr %temp_pmd.0, %pmds
  br i1 %cmp26.not, label %xgene_edac_pmd_remove.exit.for.end36_crit_edge, label %xgene_edac_pmd_remove.exit.for.body28_crit_edge

xgene_edac_pmd_remove.exit.for.body28_crit_edge:  ; preds = %xgene_edac_pmd_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

xgene_edac_pmd_remove.exit.for.end36_crit_edge:   ; preds = %xgene_edac_pmd_remove.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end36

for.end36:                                        ; preds = %xgene_edac_pmd_remove.exit.for.end36_crit_edge, %for.end.for.end36_crit_edge
  %l3s = getelementptr inbounds %struct.xgene_edac, ptr %1, i32 0, i32 11
  %33 = ptrtoint ptr %l3s to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %l3s, align 4
  %cmp49.not114 = icmp eq ptr %34, %l3s
  br i1 %cmp49.not114, label %for.end36.for.end59_crit_edge, label %for.end36.for.body51_crit_edge

for.end36.for.body51_crit_edge:                   ; preds = %for.end36
  br label %for.body51

for.end36.for.end59_crit_edge:                    ; preds = %for.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.body51:                                       ; preds = %for.body51.for.body51_crit_edge, %for.end36.for.body51_crit_edge
  %node.0115 = phi ptr [ %temp_node.0, %for.body51.for.body51_crit_edge ], [ %34, %for.end36.for.body51_crit_edge ]
  %35 = ptrtoint ptr %node.0115 to i32
  call void @__asan_load4_noabort(i32 %35)
  %temp_node.0 = load ptr, ptr %node.0115, align 8
  %edac_dev1.i105 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.0115, i32 0, i32 4
  %36 = ptrtoint ptr %edac_dev1.i105 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edac_dev1.i105, align 8
  tail call fastcc void @xgene_edac_l3_hw_init(ptr noundef %37, i1 noundef zeroext false) #7
  %edac.i = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.0115, i32 0, i32 3
  %38 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edac.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %call.i106 = tail call ptr @edac_device_del_device(ptr noundef %41) #7
  tail call void @edac_device_free_ctl_info(ptr noundef %37) #7
  %cmp49.not = icmp eq ptr %temp_node.0, %l3s
  br i1 %cmp49.not, label %for.body51.for.end59_crit_edge, label %for.body51.for.body51_crit_edge

for.body51.for.body51_crit_edge:                  ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body51

for.body51.for.end59_crit_edge:                   ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end59

for.end59:                                        ; preds = %for.body51.for.end59_crit_edge, %for.end36.for.end59_crit_edge
  %socs = getelementptr inbounds %struct.xgene_edac, ptr %1, i32 0, i32 12
  %42 = ptrtoint ptr %socs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %socs, align 4
  %cmp72.not116 = icmp eq ptr %43, %socs
  br i1 %cmp72.not116, label %for.end59.for.end82_crit_edge, label %for.end59.for.body74_crit_edge

for.end59.for.body74_crit_edge:                   ; preds = %for.end59
  br label %for.body74

for.end59.for.end82_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

for.body74:                                       ; preds = %for.body74.for.body74_crit_edge, %for.end59.for.body74_crit_edge
  %node.1117 = phi ptr [ %temp_node.1, %for.body74.for.body74_crit_edge ], [ %43, %for.end59.for.body74_crit_edge ]
  %44 = ptrtoint ptr %node.1117 to i32
  call void @__asan_load4_noabort(i32 %44)
  %temp_node.1 = load ptr, ptr %node.1117, align 8
  %edac_dev1.i107 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.1117, i32 0, i32 4
  %45 = ptrtoint ptr %edac_dev1.i107 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edac_dev1.i107, align 8
  tail call fastcc void @xgene_edac_soc_hw_init(ptr noundef %46, i1 noundef zeroext false) #7
  %edac.i108 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.1117, i32 0, i32 3
  %47 = ptrtoint ptr %edac.i108 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %edac.i108, align 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %call.i109 = tail call ptr @edac_device_del_device(ptr noundef %50) #7
  tail call void @edac_device_free_ctl_info(ptr noundef %46) #7
  %cmp72.not = icmp eq ptr %temp_node.1, %socs
  br i1 %cmp72.not, label %for.body74.for.end82_crit_edge, label %for.body74.for.body74_crit_edge

for.body74.for.body74_crit_edge:                  ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body74

for.body74.for.end82_crit_edge:                   ; preds = %for.body74
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end82

for.end82:                                        ; preds = %for.body74.for.end82_crit_edge, %for.end59.for.end82_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_isr(i32 noundef %irq, ptr noundef readonly %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %dev_id, i32 0, i32 6
  %0 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcp_csr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !691
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %4 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %7 = and i32 %3, 4112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  %9 = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  %or.cond92 = select i1 %8, i1 %tobool5.not, i1 false
  br i1 %or.cond92, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  %mcus = getelementptr inbounds %struct.xgene_edac, ptr %dev_id, i32 0, i32 9
  %10 = ptrtoint ptr %mcus to i32
  call void @__asan_load4_noabort(i32 %10)
  %mcu.093 = load ptr, ptr %mcus, align 4
  %cmp.not94 = icmp eq ptr %mcu.093, %mcus
  br i1 %cmp.not94, label %if.then.if.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %mcu.095 = phi ptr [ %mcu.0, %for.body.for.body_crit_edge ], [ %mcu.093, %if.then.for.body_crit_edge ]
  %mci = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %mcu.095, i32 0, i32 2
  %11 = ptrtoint ptr %mci to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mci, align 4
  tail call void @xgene_edac_mc_check(ptr noundef %12)
  %13 = ptrtoint ptr %mcu.095 to i32
  call void @__asan_load4_noabort(i32 %13)
  %mcu.0 = load ptr, ptr %mcu.095, align 4
  %cmp.not = icmp eq ptr %mcu.0, %mcus
  br i1 %cmp.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %pmds = getelementptr inbounds %struct.xgene_edac, ptr %dev_id, i32 0, i32 10
  %14 = ptrtoint ptr %pmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %pmd.096 = load ptr, ptr %pmds, align 4
  %cmp20.not97 = icmp eq ptr %pmd.096, %pmds
  br i1 %cmp20.not97, label %if.end.for.end34_crit_edge, label %if.end.for.body22_crit_edge

if.end.for.body22_crit_edge:                      ; preds = %if.end
  br label %for.body22

if.end.for.end34_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body22:                                       ; preds = %for.inc28.for.body22_crit_edge, %if.end.for.body22_crit_edge
  %pmd.098 = phi ptr [ %pmd.0, %for.inc28.for.body22_crit_edge ], [ %pmd.096, %if.end.for.body22_crit_edge ]
  %pmd23 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %pmd.098, i32 0, i32 6
  %15 = ptrtoint ptr %pmd23 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pmd23, align 8
  %shl = shl nuw i32 1, %16
  %and24 = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %for.body22.for.inc28_crit_edge, label %if.then26

for.body22.for.inc28_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc28

if.then26:                                        ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #9
  %edac_dev = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %pmd.098, i32 0, i32 4
  %17 = ptrtoint ptr %edac_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edac_dev, align 8
  tail call void @xgene_edac_pmd_check(ptr noundef %18)
  br label %for.inc28

for.inc28:                                        ; preds = %if.then26, %for.body22.for.inc28_crit_edge
  %19 = ptrtoint ptr %pmd.098 to i32
  call void @__asan_load4_noabort(i32 %19)
  %pmd.0 = load ptr, ptr %pmd.098, align 4
  %cmp20.not = icmp eq ptr %pmd.0, %pmds
  br i1 %cmp20.not, label %for.inc28.for.end34_crit_edge, label %for.inc28.for.body22_crit_edge

for.inc28.for.body22_crit_edge:                   ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body22

for.inc28.for.end34_crit_edge:                    ; preds = %for.inc28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.end34:                                        ; preds = %for.inc28.for.end34_crit_edge, %if.end.for.end34_crit_edge
  %l3s = getelementptr inbounds %struct.xgene_edac, ptr %dev_id, i32 0, i32 11
  %20 = ptrtoint ptr %l3s to i32
  call void @__asan_load4_noabort(i32 %20)
  %node.099 = load ptr, ptr %l3s, align 4
  %cmp42.not100 = icmp eq ptr %node.099, %l3s
  br i1 %cmp42.not100, label %for.end34.for.end52_crit_edge, label %for.end34.for.body44_crit_edge

for.end34.for.body44_crit_edge:                   ; preds = %for.end34
  br label %for.body44

for.end34.for.end52_crit_edge:                    ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end52

for.body44:                                       ; preds = %for.body44.for.body44_crit_edge, %for.end34.for.body44_crit_edge
  %node.0101 = phi ptr [ %node.0, %for.body44.for.body44_crit_edge ], [ %node.099, %for.end34.for.body44_crit_edge ]
  %edac_dev45 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.0101, i32 0, i32 4
  %21 = ptrtoint ptr %edac_dev45 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edac_dev45, align 8
  tail call void @xgene_edac_l3_check(ptr noundef %22)
  %23 = ptrtoint ptr %node.0101 to i32
  call void @__asan_load4_noabort(i32 %23)
  %node.0 = load ptr, ptr %node.0101, align 4
  %cmp42.not = icmp eq ptr %node.0, %l3s
  br i1 %cmp42.not, label %for.body44.for.end52_crit_edge, label %for.body44.for.body44_crit_edge

for.body44.for.body44_crit_edge:                  ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body44

for.body44.for.end52_crit_edge:                   ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end52

for.end52:                                        ; preds = %for.body44.for.end52_crit_edge, %for.end34.for.end52_crit_edge
  %socs = getelementptr inbounds %struct.xgene_edac, ptr %dev_id, i32 0, i32 12
  %24 = ptrtoint ptr %socs to i32
  call void @__asan_load4_noabort(i32 %24)
  %node.1102 = load ptr, ptr %socs, align 4
  %cmp60.not103 = icmp eq ptr %node.1102, %socs
  br i1 %cmp60.not103, label %for.end52.for.end70_crit_edge, label %for.end52.for.body62_crit_edge

for.end52.for.body62_crit_edge:                   ; preds = %for.end52
  br label %for.body62

for.end52.for.end70_crit_edge:                    ; preds = %for.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

for.body62:                                       ; preds = %for.body62.for.body62_crit_edge, %for.end52.for.body62_crit_edge
  %node.1104 = phi ptr [ %node.1, %for.body62.for.body62_crit_edge ], [ %node.1102, %for.end52.for.body62_crit_edge ]
  %edac_dev63 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %node.1104, i32 0, i32 4
  %25 = ptrtoint ptr %edac_dev63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %edac_dev63, align 8
  tail call void @xgene_edac_soc_check(ptr noundef %26)
  %27 = ptrtoint ptr %node.1104 to i32
  call void @__asan_load4_noabort(i32 %27)
  %node.1 = load ptr, ptr %node.1104, align 4
  %cmp60.not = icmp eq ptr %node.1, %socs
  br i1 %cmp60.not, label %for.body62.for.end70_crit_edge, label %for.body62.for.body62_crit_edge

for.body62.for.body62_crit_edge:                  ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body62

for.body62.for.end70_crit_edge:                   ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end70

for.end70:                                        ; preds = %for.body62.for.end70_crit_edge, %for.end52.for.end70_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_dir(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_mc_add(ptr noundef %edac, ptr noundef %np) #4 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %layers = alloca [2 x %struct.edac_mc_layer], align 4
  %tmp_ctx = alloca %struct.xgene_edac_mc_ctx, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %layers) #7
  %0 = call ptr @memset(ptr %layers, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tmp_ctx) #7
  %1 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %tmp_ctx, i32 0, i32 3
  %2 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %tmp_ctx, i32 0, i32 4
  %3 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %tmp_ctx, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  %5 = call ptr @memset(ptr %tmp_ctx, i32 0, i32 28)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %edac, ptr %1, align 4
  %7 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edac, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %8, ptr noundef nonnull @xgene_edac_mc_add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  %9 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edac, align 4
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.367) #10
  br label %err_group

if.end5:                                          ; preds = %if.end
  %call7 = call ptr @devm_ioremap_resource(ptr noundef %10, ptr noundef nonnull %res) #7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %2, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end13, label %if.end17

do.end13:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.370) #10
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %2, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %err_group

if.end17:                                         ; preds = %if.end5
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.372, ptr noundef %3, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool19.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool19.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.374) #10
  br label %err_group

if.end25:                                         ; preds = %if.end17
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %21 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %reg.i, align 4, !annotation !693
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %csw_map.i = getelementptr inbounds %struct.xgene_edac, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %csw_map.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %csw_map.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %25, i32 noundef 0, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.xgene_edac_mc_is_active.exit.thread_crit_edge

if.end25.xgene_edac_mc_is_active.exit.thread_crit_edge: ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_mc_is_active.exit.thread

if.end.i:                                         ; preds = %if.end25
  %26 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reg.i, align 4
  %and.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %mcbb_map.i = getelementptr inbounds %struct.xgene_edac, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %mcbb_map.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcbb_map.i, align 4
  %call4.i = call i32 @regmap_read(ptr noundef %31, i32 noundef 0, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %if.end7.i, label %if.then2.i.xgene_edac_mc_is_active.exit.thread_crit_edge

if.then2.i.xgene_edac_mc_is_active.exit.thread_crit_edge: ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_mc_is_active.exit.thread

if.end7.i:                                        ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %reg.i, align 4
  %and8.i = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %cond.i = select i1 %tobool9.not.i, i32 5, i32 15
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i
  %mcba_map.i = getelementptr inbounds %struct.xgene_edac, ptr %29, i32 0, i32 2
  %34 = ptrtoint ptr %mcba_map.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mcba_map.i, align 4
  %call11.i = call i32 @regmap_read(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.else.i.xgene_edac_mc_is_active.exit.thread_crit_edge

if.else.i.xgene_edac_mc_is_active.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_mc_is_active.exit.thread

if.end14.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %reg.i, align 4
  %and15.i = and i32 %37, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  %cond17.i = select i1 %tobool16.not.i, i32 1, i32 3
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.end14.i, %if.end7.i
  %mcu_mask.0.i = phi i32 [ %cond.i, %if.end7.i ], [ %cond17.i, %if.end14.i ]
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %mc_active_mask.i = getelementptr inbounds %struct.xgene_edac, ptr %39, i32 0, i32 14
  %40 = ptrtoint ptr %mc_active_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mc_active_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool20.not.i = icmp eq i32 %41, 0
  br i1 %tobool20.not.i, label %if.then21.i, label %if.end18.i.xgene_edac_mc_is_active.exit_crit_edge

if.end18.i.xgene_edac_mc_is_active.exit_crit_edge: ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_mc_is_active.exit

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %mc_active_mask.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %mcu_mask.0.i, ptr %mc_active_mask.i, align 4
  br label %xgene_edac_mc_is_active.exit

xgene_edac_mc_is_active.exit.thread:              ; preds = %if.else.i.xgene_edac_mc_is_active.exit.thread_crit_edge, %if.then2.i.xgene_edac_mc_is_active.exit.thread_crit_edge, %if.end25.xgene_edac_mc_is_active.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %err_group

xgene_edac_mc_is_active.exit:                     ; preds = %if.then21.i, %if.end18.i.xgene_edac_mc_is_active.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  %43 = shl nuw i32 1, %20
  %44 = and i32 %mcu_mask.0.i, %43
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool28.not = icmp eq i32 %44, 0
  br i1 %tobool28.not, label %xgene_edac_mc_is_active.exit.err_group_crit_edge, label %if.end30

xgene_edac_mc_is_active.exit.err_group_crit_edge: ; preds = %xgene_edac_mc_is_active.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_group

if.end30:                                         ; preds = %xgene_edac_mc_is_active.exit
  %45 = ptrtoint ptr %layers to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 3, ptr %layers, align 4
  %size = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 1
  %46 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %size, align 4
  %is_virt_csrow = getelementptr inbounds %struct.edac_mc_layer, ptr %layers, i32 0, i32 2
  %47 = ptrtoint ptr %is_virt_csrow to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %is_virt_csrow, align 4
  %arrayidx33 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1
  %48 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1, ptr %arrayidx33, align 4
  %size36 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 1
  %49 = ptrtoint ptr %size36 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 2, ptr %size36, align 4
  %is_virt_csrow38 = getelementptr inbounds [2 x %struct.edac_mc_layer], ptr %layers, i32 0, i32 1, i32 2
  %50 = ptrtoint ptr %is_virt_csrow38 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %is_virt_csrow38, align 4
  %51 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %3, align 4
  %call40 = call ptr @edac_mc_alloc(i32 noundef %52, i32 noundef 2, ptr noundef nonnull %layers, i32 noundef 28) #7
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end30.err_group_crit_edge, label %if.end43

if.end30.err_group_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_group

if.end43:                                         ; preds = %if.end30
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 26
  %53 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pvt_info, align 8
  %55 = call ptr @memcpy(ptr %54, ptr %tmp_ctx, i32 28)
  %name = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %54, i32 0, i32 1
  %56 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @.str.376, ptr %name, align 4
  %mci44 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %54, i32 0, i32 2
  %57 = ptrtoint ptr %mci44 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call40, ptr %mci44, align 4
  %pdev = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 22
  %58 = ptrtoint ptr %pdev to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call40, ptr %pdev, align 8
  %59 = load ptr, ptr %name, align 4
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 24
  %60 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %ctl_name, align 8
  %61 = load ptr, ptr %name, align 4
  %dev_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 25
  %62 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %dev_name, align 4
  %mtype_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 4
  %63 = ptrtoint ptr %mtype_cap to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 109312, ptr %mtype_cap, align 8
  %edac_ctl_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 5
  %64 = ptrtoint ptr %edac_ctl_cap to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %edac_ctl_cap, align 4
  %edac_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 6
  %65 = ptrtoint ptr %edac_cap to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 32, ptr %edac_cap, align 8
  %mod_name = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 23
  %66 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @.str.377, ptr %mod_name, align 4
  %ctl_page_to_phys = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 12
  %67 = ptrtoint ptr %ctl_page_to_phys to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %ctl_page_to_phys, align 8
  %scrub_cap = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 7
  %68 = ptrtoint ptr %scrub_cap to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 128, ptr %scrub_cap, align 4
  %scrub_mode = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 8
  %69 = ptrtoint ptr %scrub_mode to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 7, ptr %scrub_mode, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %70 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp48 = icmp eq i32 %70, 0
  br i1 %cmp48, label %if.then49, label %if.end43.if.end50_crit_edge

if.end43.if.end50_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

if.then49:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %edac_check = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 11
  %71 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @xgene_edac_mc_check, ptr %edac_check, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then49, %if.end43.if.end50_crit_edge
  %call51 = call i32 @edac_mc_add_mc_with_groups(ptr noundef nonnull %call40, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.379) #10
  call void @edac_mc_free(ptr noundef nonnull %call40) #7
  br label %err_group

if.end58:                                         ; preds = %if.end50
  %debugfs.i = getelementptr inbounds %struct.mem_ctl_info, ptr %call40, i32 0, i32 37
  %74 = ptrtoint ptr %debugfs.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %debugfs.i, align 8
  %tobool.not.i106 = icmp eq ptr %75, null
  br i1 %tobool.not.i106, label %if.end58.xgene_edac_mc_create_debugfs_node.exit_crit_edge, label %if.end.i108

if.end58.xgene_edac_mc_create_debugfs_node.exit_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_mc_create_debugfs_node.exit

if.end.i108:                                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %call.i107 = call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.384, i16 noundef zeroext 128, ptr noundef nonnull %75, ptr noundef nonnull %call40, ptr noundef nonnull @xgene_edac_mc_debug_inject_fops) #7
  br label %xgene_edac_mc_create_debugfs_node.exit

xgene_edac_mc_create_debugfs_node.exit:           ; preds = %if.end.i108, %if.end58.xgene_edac_mc_create_debugfs_node.exit_crit_edge
  %mcus = getelementptr inbounds %struct.xgene_edac, ptr %edac, i32 0, i32 9
  %76 = ptrtoint ptr %mcus to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mcus, align 4
  %call.i.i109 = call zeroext i1 @__list_add_valid(ptr noundef %54, ptr noundef %mcus, ptr noundef %77) #7
  br i1 %call.i.i109, label %if.end.i.i, label %xgene_edac_mc_create_debugfs_node.exit.list_add.exit_crit_edge

xgene_edac_mc_create_debugfs_node.exit.list_add.exit_crit_edge: ; preds = %xgene_edac_mc_create_debugfs_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %xgene_edac_mc_create_debugfs_node.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %54, ptr %prev1.i.i, align 4
  %79 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %77, ptr %54, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %80 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %mcus, ptr %prev3.i.i, align 4
  %81 = ptrtoint ptr %mcus to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %54, ptr %mcus, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %xgene_edac_mc_create_debugfs_node.exit.list_add.exit_crit_edge
  call fastcc void @xgene_edac_mc_irq_ctl(ptr noundef nonnull %call40, i1 noundef zeroext true)
  %82 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %edac, align 4
  call void @devres_remove_group(ptr noundef %83, ptr noundef nonnull @xgene_edac_mc_add) #7
  %84 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %85, ptr noundef nonnull @.str.382) #10
  br label %cleanup

err_group:                                        ; preds = %do.end56, %if.end30.err_group_crit_edge, %xgene_edac_mc_is_active.exit.err_group_crit_edge, %xgene_edac_mc_is_active.exit.thread, %do.end23, %do.end13, %do.end
  %rc.0 = phi i32 [ %call2, %do.end ], [ %16, %do.end13 ], [ -19, %do.end23 ], [ -22, %do.end56 ], [ -19, %xgene_edac_mc_is_active.exit.err_group_crit_edge ], [ -12, %if.end30.err_group_crit_edge ], [ -19, %xgene_edac_mc_is_active.exit.thread ]
  %86 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %edac, align 4
  %call65 = call i32 @devres_release_group(ptr noundef %87, ptr noundef nonnull @xgene_edac_mc_add) #7
  br label %cleanup

cleanup:                                          ; preds = %err_group, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_group ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tmp_ctx) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %layers) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_pmd_add(ptr noundef %edac, ptr noundef %np, i32 noundef %version) #4 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  %edac_name = alloca [10 x i8], align 1
  %pmd = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %edac_name) #7
  %1 = call ptr @memset(ptr %edac_name, i32 255, i32 10)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pmd) #7
  %2 = ptrtoint ptr %pmd to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %pmd, align 4, !annotation !693
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #7
  %3 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %val, align 4, !annotation !693
  %4 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edac, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %5, ptr noundef nonnull @xgene_edac_pmd_add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.385, ptr noundef nonnull %pmd, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.386) #10
  br label %err_group

if.end5:                                          ; preds = %if.end
  %efuse_map = getelementptr inbounds %struct.xgene_edac, ptr %edac, i32 0, i32 4
  %8 = ptrtoint ptr %efuse_map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %efuse_map, align 4
  %call6 = call i32 @regmap_read(ptr noundef %9, i32 noundef 0, ptr noundef nonnull %val) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.err_group_crit_edge

if.end5.err_group_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_group

if.end9:                                          ; preds = %if.end5
  %10 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %val, align 4
  %12 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pmd, align 4
  %14 = shl nuw i32 1, %13
  %15 = and i32 %14, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool11.not.not = icmp eq i32 %15, 0
  br i1 %tobool11.not.not, label %if.end13, label %if.end9.err_group_crit_edge

if.end9.err_group_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_group

if.end13:                                         ; preds = %if.end9
  %call14 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %edac_name, i32 noundef 10, ptr noundef nonnull @.str.388, i32 noundef %13)
  %call16 = call i32 @edac_device_alloc_index() #7
  %call17 = call ptr @edac_device_alloc_ctl_info(i32 noundef 960, ptr noundef nonnull %edac_name, i32 noundef 1, ptr noundef nonnull @.str.389, i32 noundef 1, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef %call16) #7
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end13.err_group_crit_edge, label %if.end20

if.end13.err_group_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_group

if.end20:                                         ; preds = %if.end13
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 17
  %16 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pvt_info, align 4
  %name = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @.str.390, ptr %name, align 8
  %19 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pmd, align 4
  %pmd21 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 6
  %21 = ptrtoint ptr %pmd21 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %pmd21, align 8
  %edac22 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 3
  %22 = ptrtoint ptr %edac22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %edac, ptr %edac22, align 4
  %edac_dev23 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 4
  %23 = ptrtoint ptr %edac_dev23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call17, ptr %edac_dev23, align 8
  %ddev = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %edac, align 4
  %26 = call ptr @memcpy(ptr %ddev, ptr %25, i32 928)
  %version25 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 7
  %27 = ptrtoint ptr %version25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %version, ptr %version25, align 4
  %dev27 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 13
  %28 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ddev, ptr %dev27, align 4
  %29 = load ptr, ptr %name, align 8
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 15
  %30 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %ctl_name, align 4
  %31 = load ptr, ptr %name, align 8
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 16
  %32 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %dev_name, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 14
  %33 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.377, ptr %mod_name, align 4
  %call30 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp = icmp slt i32 %call30, 0
  %34 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %edac, align 4
  br i1 %cmp, label %do.end34, label %if.end36

do.end34:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.392) #10
  br label %err_free

if.end36:                                         ; preds = %if.end20
  %call38 = call ptr @devm_ioremap_resource(ptr noundef %35, ptr noundef nonnull %res) #7
  %pmd_csr = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %17, i32 0, i32 5
  %36 = ptrtoint ptr %pmd_csr to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call38, ptr %pmd_csr, align 4
  %cmp.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end44, label %if.end48

do.end44:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.395) #10
  %39 = ptrtoint ptr %pmd_csr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pmd_csr, align 4
  %41 = ptrtoint ptr %40 to i32
  br label %err_free

if.end48:                                         ; preds = %if.end36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %42 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp49 = icmp eq i32 %42, 0
  br i1 %cmp49, label %if.then50, label %if.end48.if.end51_crit_edge

if.end48.if.end51_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %edac_check = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 12
  %43 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xgene_edac_pmd_check, ptr %edac_check, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end48.if.end51_crit_edge
  call fastcc void @xgene_edac_pmd_create_debugfs_nodes(ptr noundef nonnull %call17)
  %call52 = call i32 @edac_device_add_device(ptr noundef nonnull %call17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp sgt i32 %call52, 0
  br i1 %cmp53, label %do.end57, label %if.end59

do.end57:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.398) #10
  br label %err_free

if.end59:                                         ; preds = %if.end51
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %46 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %46)
  %cmp60 = icmp eq i32 %46, 2
  br i1 %cmp60, label %if.then61, label %if.end59.if.end62_crit_edge

if.end59.if.end62_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then61:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call17, i32 0, i32 10
  %47 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 514, ptr %op_state, align 4
  br label %if.end62

if.end62:                                         ; preds = %if.then61, %if.end59.if.end62_crit_edge
  %pmds = getelementptr inbounds %struct.xgene_edac, ptr %edac, i32 0, i32 10
  %48 = ptrtoint ptr %pmds to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pmds, align 4
  %call.i.i118 = call zeroext i1 @__list_add_valid(ptr noundef %17, ptr noundef %pmds, ptr noundef %49) #7
  br i1 %call.i.i118, label %if.end.i.i, label %if.end62.list_add.exit_crit_edge

if.end62.list_add.exit_crit_edge:                 ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %17, ptr %prev1.i.i, align 4
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %17, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %pmds, ptr %prev3.i.i, align 4
  %53 = ptrtoint ptr %pmds to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %17, ptr %pmds, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end62.list_add.exit_crit_edge
  call fastcc void @xgene_edac_pmd_hw_ctl(ptr noundef nonnull %call17, i1 noundef zeroext true)
  %54 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %edac, align 4
  call void @devres_remove_group(ptr noundef %55, ptr noundef nonnull @xgene_edac_pmd_add) #7
  %56 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %edac, align 4
  %58 = ptrtoint ptr %pmd21 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pmd21, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %57, ptr noundef nonnull @.str.401, i32 noundef %59) #10
  br label %cleanup

err_free:                                         ; preds = %do.end57, %do.end44, %do.end34
  %rc.0 = phi i32 [ %call30, %do.end34 ], [ %41, %do.end44 ], [ -12, %do.end57 ]
  call void @edac_device_free_ctl_info(ptr noundef nonnull %call17) #7
  br label %err_group

err_group:                                        ; preds = %err_free, %if.end13.err_group_crit_edge, %if.end9.err_group_crit_edge, %if.end5.err_group_crit_edge, %do.end
  %rc.1 = phi i32 [ -19, %do.end ], [ %call6, %if.end5.err_group_crit_edge ], [ %rc.0, %err_free ], [ -19, %if.end9.err_group_crit_edge ], [ -12, %if.end13.err_group_crit_edge ]
  %60 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edac, align 4
  %call70 = call i32 @devres_release_group(ptr noundef %61, ptr noundef nonnull @xgene_edac_pmd_add) #7
  br label %cleanup

cleanup:                                          ; preds = %err_group, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.1, %err_group ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pmd) #7
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %edac_name) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_l3_add(ptr noundef %edac, ptr noundef %np, i32 noundef %version) #4 align 64 {
entry:
  %name.i = alloca [10 x i8], align 1
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %1 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edac, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %2, ptr noundef nonnull @xgene_edac_l3_add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %3 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edac, align 4
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.406) #10
  br label %err_release_group

if.end4:                                          ; preds = %if.end
  %call6 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %res) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.409) #10
  %7 = ptrtoint ptr %call6 to i32
  br label %err_release_group

if.end14:                                         ; preds = %if.end4
  %call15 = call i32 @edac_device_alloc_index() #7
  %call16 = call ptr @edac_device_alloc_ctl_info(i32 noundef 960, ptr noundef nonnull @.str.411, i32 noundef 1, ptr noundef nonnull @.str.411, i32 noundef 1, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %call15) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.err_release_group_crit_edge, label %if.end19

if.end14.err_release_group_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_group

if.end19:                                         ; preds = %if.end14
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 17
  %8 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pvt_info, align 4
  %dev_csr20 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dev_csr20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %dev_csr20, align 8
  %name = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.412, ptr %name, align 8
  %edac_idx21 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %edac_idx21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call15, ptr %edac_idx21, align 4
  %edac22 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %edac22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %edac, ptr %edac22, align 4
  %edac_dev23 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %edac_dev23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %edac_dev23, align 8
  %ddev = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edac, align 4
  %17 = call ptr @memcpy(ptr %ddev, ptr %16, i32 928)
  %version25 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %version25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %version, ptr %version25, align 4
  %dev27 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 13
  %19 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ddev, ptr %dev27, align 4
  %20 = load ptr, ptr %name, align 8
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 15
  %21 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ctl_name, align 4
  %22 = load ptr, ptr %name, align 8
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 16
  %23 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev_name, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 14
  %24 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.377, ptr %mod_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %25 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30 = icmp eq i32 %25, 0
  br i1 %cmp30, label %if.then31, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %edac_check = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 12
  %26 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xgene_edac_l3_check, ptr %edac_check, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end19.if.end32_crit_edge
  %27 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pvt_info, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name.i) #7
  %edac.i = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %28, i32 0, i32 3
  %29 = call ptr @memset(ptr %name.i, i32 255, i32 10)
  %30 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %edac.i, align 4
  %dfs.i = getelementptr inbounds %struct.xgene_edac, ptr %31, i32 0, i32 8
  %32 = ptrtoint ptr %dfs.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dfs.i, align 4
  %tobool.not.i = icmp eq ptr %33, null
  br i1 %tobool.not.i, label %if.end32.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge, label %if.end.i

if.end32.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge: ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_l3_create_debugfs_nodes.exit

if.end.i:                                         ; preds = %if.end32
  %edac_idx.i = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %28, i32 0, i32 5
  %34 = ptrtoint ptr %edac_idx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %edac_idx.i, align 4
  %call.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 10, ptr noundef nonnull @.str.419, i32 noundef %35) #7
  %36 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %edac.i, align 4
  %dfs3.i = getelementptr inbounds %struct.xgene_edac, ptr %37, i32 0, i32 8
  %38 = ptrtoint ptr %dfs3.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dfs3.i, align 4
  %call4.i = call ptr @edac_debugfs_create_dir_at(ptr noundef nonnull %name.i, ptr noundef %39) #7
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge, label %if.end7.i

if.end.i.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_l3_create_debugfs_nodes.exit

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.420, i16 noundef zeroext 128, ptr noundef nonnull %call4.i, ptr noundef nonnull %call16, ptr noundef nonnull @xgene_edac_l3_debug_inject_fops) #7
  br label %xgene_edac_l3_create_debugfs_nodes.exit

xgene_edac_l3_create_debugfs_nodes.exit:          ; preds = %if.end7.i, %if.end.i.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge, %if.end32.xgene_edac_l3_create_debugfs_nodes.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name.i) #7
  %call33 = call i32 @edac_device_add_device(ptr noundef nonnull %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %xgene_edac_l3_create_debugfs_nodes.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.414) #10
  call void @edac_device_free_ctl_info(ptr noundef nonnull %call16) #7
  br label %err_release_group

if.end40:                                         ; preds = %xgene_edac_l3_create_debugfs_nodes.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %42 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp41 = icmp eq i32 %42, 2
  br i1 %cmp41, label %if.then42, label %if.end40.if.end43_crit_edge

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 10
  %43 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 514, ptr %op_state, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %l3s = getelementptr inbounds %struct.xgene_edac, ptr %edac, i32 0, i32 11
  %44 = ptrtoint ptr %l3s to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %l3s, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %l3s, ptr noundef %45) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add.exit_crit_edge

if.end43.list_add.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %9, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %l3s, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %l3s to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %9, ptr %l3s, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end43.list_add.exit_crit_edge
  call fastcc void @xgene_edac_l3_hw_init(ptr noundef nonnull %call16, i1 noundef zeroext true)
  %50 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %edac, align 4
  call void @devres_remove_group(ptr noundef %51, ptr noundef nonnull @xgene_edac_l3_add) #7
  %52 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %53, ptr noundef nonnull @.str.417) #10
  br label %cleanup

err_release_group:                                ; preds = %do.end38, %if.end14.err_release_group_crit_edge, %do.end11, %do.end
  %rc.0 = phi i32 [ %call1, %do.end ], [ %7, %do.end11 ], [ -12, %do.end38 ], [ -12, %if.end14.err_release_group_crit_edge ]
  %54 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %edac, align 4
  %call50 = call i32 @devres_release_group(ptr noundef %55, ptr noundef nonnull @xgene_edac_l3_add) #7
  br label %cleanup

cleanup:                                          ; preds = %err_release_group, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_release_group ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_soc_add(ptr noundef %edac, ptr noundef %np, i32 noundef %version) #4 align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %1 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edac, align 4
  %call = tail call ptr @devres_open_group(ptr noundef %2, ptr noundef nonnull @xgene_edac_soc_add, i32 noundef 3264) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call i32 @of_address_to_resource(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %res) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  %3 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edac, align 4
  br i1 %cmp, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.421) #10
  br label %err_release_group

if.end4:                                          ; preds = %if.end
  %call6 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef nonnull %res) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end11, label %if.end14

do.end11:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.424) #10
  %7 = ptrtoint ptr %call6 to i32
  br label %err_release_group

if.end14:                                         ; preds = %if.end4
  %call15 = call i32 @edac_device_alloc_index() #7
  %call16 = call ptr @edac_device_alloc_ctl_info(i32 noundef 960, ptr noundef nonnull @.str.426, i32 noundef 1, ptr noundef nonnull @.str.426, i32 noundef 1, i32 noundef 2, ptr noundef null, i32 noundef 0, i32 noundef %call15) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end14.err_release_group_crit_edge, label %if.end19

if.end14.err_release_group_crit_edge:             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_release_group

if.end19:                                         ; preds = %if.end14
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 17
  %8 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pvt_info, align 4
  %dev_csr20 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %dev_csr20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call6, ptr %dev_csr20, align 8
  %name = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 2
  %11 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @.str.427, ptr %name, align 8
  %edac_idx21 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 5
  %12 = ptrtoint ptr %edac_idx21 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call15, ptr %edac_idx21, align 4
  %edac22 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 3
  %13 = ptrtoint ptr %edac22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %edac, ptr %edac22, align 4
  %edac_dev23 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 4
  %14 = ptrtoint ptr %edac_dev23 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call16, ptr %edac_dev23, align 8
  %ddev = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 1
  %15 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edac, align 4
  %17 = call ptr @memcpy(ptr %ddev, ptr %16, i32 928)
  %version25 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %version25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %version, ptr %version25, align 4
  %dev27 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 13
  %19 = ptrtoint ptr %dev27 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %ddev, ptr %dev27, align 4
  %20 = load ptr, ptr %name, align 8
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 15
  %21 = ptrtoint ptr %ctl_name to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %ctl_name, align 4
  %22 = load ptr, ptr %name, align 8
  %dev_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 16
  %23 = ptrtoint ptr %dev_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %dev_name, align 4
  %mod_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 14
  %24 = ptrtoint ptr %mod_name to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.377, ptr %mod_name, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %25 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp30 = icmp eq i32 %25, 0
  br i1 %cmp30, label %if.then31, label %if.end19.if.end32_crit_edge

if.end19.if.end32_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then31:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %edac_check = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 12
  %26 = ptrtoint ptr %edac_check to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @xgene_edac_soc_check, ptr %edac_check, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then31, %if.end19.if.end32_crit_edge
  %call33 = call i32 @edac_device_add_device(ptr noundef nonnull %call16) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp sgt i32 %call33, 0
  br i1 %cmp34, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.414) #10
  call void @edac_device_free_ctl_info(ptr noundef nonnull %call16) #7
  br label %err_release_group

if.end40:                                         ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %29 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %cmp41 = icmp eq i32 %29, 2
  br i1 %cmp41, label %if.then42, label %if.end40.if.end43_crit_edge

if.end40.if.end43_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %call16, i32 0, i32 10
  %30 = ptrtoint ptr %op_state to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 514, ptr %op_state, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %if.end40.if.end43_crit_edge
  %socs = getelementptr inbounds %struct.xgene_edac, ptr %edac, i32 0, i32 12
  %31 = ptrtoint ptr %socs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %socs, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %9, ptr noundef %socs, ptr noundef %32) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end43.list_add.exit_crit_edge

if.end43.list_add.exit_crit_edge:                 ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %9, ptr %prev1.i.i, align 4
  %34 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %9, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %35 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %socs, ptr %prev3.i.i, align 4
  %36 = ptrtoint ptr %socs to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %9, ptr %socs, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end43.list_add.exit_crit_edge
  call fastcc void @xgene_edac_soc_hw_init(ptr noundef nonnull %call16, i1 noundef zeroext true)
  %37 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %edac, align 4
  call void @devres_remove_group(ptr noundef %38, ptr noundef nonnull @xgene_edac_soc_add) #7
  %39 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %edac, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %40, ptr noundef nonnull @.str.431) #10
  br label %cleanup

err_release_group:                                ; preds = %do.end38, %if.end14.err_release_group_crit_edge, %do.end11, %do.end
  %rc.0 = phi i32 [ %call1, %do.end ], [ %7, %do.end11 ], [ -12, %do.end38 ], [ -12, %if.end14.err_release_group_crit_edge ]
  %41 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %edac, align 4
  %call50 = call i32 @devres_release_group(ptr noundef %42, ptr noundef nonnull @xgene_edac_soc_add) #7
  br label %cleanup

cleanup:                                          ; preds = %err_release_group, %list_add.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %err_release_group ], [ 0, %list_add.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_edac_mc_check(ptr noundef %mci) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  %edac = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edac, align 4
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcp_csr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %7 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edac, align 4
  %pcp_csr.i165 = getelementptr inbounds %struct.xgene_edac, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %pcp_csr.i165 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcp_csr.i165, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %12 = and i32 %6, 269484032
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool6.not = icmp eq i32 %14, 0
  %or.cond166 = select i1 %13, i1 %tobool6.not, i1 false
  br i1 %or.cond166, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %mcu_csr = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 4
  %mc_idx = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 13
  %ctl_name = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 24
  br label %for.body

for.body:                                         ; preds = %do.body58.for.body_crit_edge, %for.cond.preheader
  %rank.0167 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %do.body58.for.body_crit_edge ]
  %15 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mcu_csr, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 788
  %mul = shl nuw nsw i32 %rank.0167, 6
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %mul
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !691
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !694
  %and9 = and i32 %18, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %for.body.if.end14_crit_edge, label %do.end

for.body.if.end14_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mc_idx, align 4
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %20, i32 noundef %rank.0167) #10
  %21 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 1, ptr noundef %mci, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %22, ptr noundef nonnull @.str.47) #7
  br label %if.end14

if.end14:                                         ; preds = %do.end, %for.body.if.end14_crit_edge
  %and15 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.do.body58_crit_edge, label %if.then17

if.end14.do.body58_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mcu_csr, align 4
  %add.ptr21 = getelementptr i8, ptr %24, i32 796
  %add.ptr23 = getelementptr i8, ptr %add.ptr21, i32 %mul
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !691
  %26 = lshr i32 %25, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !695
  %27 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mcu_csr, align 4
  %add.ptr30 = getelementptr i8, ptr %28, i32 800
  %add.ptr32 = getelementptr i8, ptr %add.ptr30, i32 %mul
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr32) #7, !srcloc !691
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !696
  %31 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mcu_csr, align 4
  %add.ptr39 = getelementptr i8, ptr %32, i32 804
  %add.ptr41 = getelementptr i8, ptr %add.ptr39, i32 %mul
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !697
  %34 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mc_idx, align 4
  %and50 = and i32 %26, 7
  %and51 = and i32 %30, 4095
  %shr53 = lshr i32 %30, 16
  %36 = and i32 %33, -65536
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %35, i32 noundef %rank.0167, i32 noundef %and50, i32 noundef %and51, i32 noundef %shr53, i32 noundef %37) #10
  %38 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ctl_name, align 8
  tail call void @edac_mc_handle_error(i32 noundef 0, ptr noundef %mci, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef -1, ptr noundef %39, ptr noundef nonnull @.str.47) #7
  br label %do.body58

do.body58:                                        ; preds = %if.then17, %if.end14.do.body58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !698
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mcu_csr, align 4
  %add.ptr62 = getelementptr i8, ptr %41, i32 796
  %add.ptr64 = getelementptr i8, ptr %add.ptr62, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 0) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !699
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %mcu_csr, align 4
  %add.ptr69 = getelementptr i8, ptr %43, i32 800
  %add.ptr71 = getelementptr i8, ptr %add.ptr69, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 0) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !700
  tail call void @arm_heavy_mb() #7
  %44 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mcu_csr, align 4
  %add.ptr76 = getelementptr i8, ptr %45, i32 804
  %add.ptr78 = getelementptr i8, ptr %add.ptr76, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr78, i32 0) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !701
  tail call void @arm_heavy_mb() #7
  %46 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %mcu_csr, align 4
  %add.ptr83 = getelementptr i8, ptr %47, i32 788
  %add.ptr85 = getelementptr i8, ptr %add.ptr83, i32 %mul
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr85, i32 %17) #7, !srcloc !690
  %inc = add nuw nsw i32 %rank.0167, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %do.body58.for.body_crit_edge

do.body58.for.body_crit_edge:                     ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %do.body58
  %48 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mcu_csr, align 4
  %add.ptr89 = getelementptr i8, ptr %49, i32 276
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !691
  %51 = tail call i32 @llvm.bswap.i32(i32 %50)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !702
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool93.not = icmp eq i32 %50, 0
  br i1 %tobool93.not, label %for.end.cleanup_crit_edge, label %if.then94

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then94:                                        ; preds = %for.end
  %and95 = and i32 %51, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.then94.if.end104_crit_edge, label %do.end100

if.then94.if.end104_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end100:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mc_idx, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, i32 noundef %53) #10
  br label %if.end104

if.end104:                                        ; preds = %do.end100, %if.then94.if.end104_crit_edge
  %and105 = and i32 %51, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.do.body115_crit_edge, label %do.end110

if.end104.do.body115_crit_edge:                   ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body115

do.end110:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %mc_idx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mc_idx, align 4
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, i32 noundef %55) #10
  br label %do.body115

do.body115:                                       ; preds = %do.end110, %if.end104.do.body115_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !703
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %mcu_csr, align 4
  %add.ptr119 = getelementptr i8, ptr %57, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119, i32 %50) #7, !srcloc !690
  br label %cleanup

cleanup:                                          ; preds = %do.body115, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_edac_pmd_check(ptr noundef %edac_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %edac = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edac, align 4
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcp_csr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !691
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %pmd = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pmd, align 8
  %shl = shl nuw i32 1, %9
  %and = and i32 %shl, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %dev.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %ctl_name.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %xgene_edac_pmd_l1_check.exit.for.body_crit_edge, %for.cond.preheader
  %cmp = phi i1 [ true, %for.cond.preheader ], [ false, %xgene_edac_pmd_l1_check.exit.for.body_crit_edge ]
  %i.018 = phi i32 [ 0, %for.cond.preheader ], [ 1, %xgene_edac_pmd_l1_check.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pvt_info, align 4
  %pmd_csr.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %pmd_csr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pmd_csr.i, align 4
  %mul.i = shl nuw nsw i32 %i.018, 20
  %add.ptr.i = getelementptr i8, ptr %13, i32 983040
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %mul.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr1.i, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !691
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.body.chk_lsu.i_crit_edge, label %do.end.i

for.body.chk_lsu.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_lsu.i

do.end.i:                                         ; preds = %for.body
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  %pmd.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %11, i32 0, i32 6
  %18 = ptrtoint ptr %pmd.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pmd.i, align 8
  %mul4.i = shl i32 %19, 1
  %add.i = or i32 %mul4.i, %i.018
  %shr.i = lshr i32 %15, 24
  %and5.i = lshr i32 %15, 16
  %shr6.i = and i32 %and5.i, 63
  %and7.i = lshr i32 %15, 8
  %shr8.i = and i32 %and7.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.57, i32 noundef %add.i, i32 noundef %15, i32 noundef %shr.i, i32 noundef %shr6.i, i32 noundef %shr8.i) #10
  %and9.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %do.end.i.if.end16.i_crit_edge, label %do.end14.i

do.end.i.if.end16.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end14.i:                                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.60) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end14.i, %do.end.i.if.end16.i_crit_edge
  %and17.i = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end24.i_crit_edge, label %do.end22.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.63) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end22.i, %if.end16.i.if.end24.i_crit_edge
  %and25.i = lshr i32 %15, 4
  %shr26.i = and i32 %and25.i, 7
  %switch.tableidx = add nsw i32 %shr26.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %24 = icmp ult i32 %switch.tableidx, 6
  br i1 %24, label %switch.lookup, label %if.end24.i.do.body51.i_crit_edge

if.end24.i.do.body51.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51.i

switch.lookup:                                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.xgene_edac_pmd_check, i32 0, i32 %switch.tableidx
  %25 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull %switch.load) #10
  br label %do.body51.i

do.body51.i:                                      ; preds = %switch.lookup, %if.end24.i.do.body51.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !705
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %14) #7, !srcloc !690
  %and55.i = and i32 %15, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i)
  %tobool56.not.i = icmp eq i32 %and55.i, 0
  br i1 %tobool56.not.i, label %do.body51.i.chk_lsu.i_crit_edge, label %if.then57.i

do.body51.i.chk_lsu.i_crit_edge:                  ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_lsu.i

if.then57.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %29) #7
  br label %chk_lsu.i

chk_lsu.i:                                        ; preds = %if.then57.i, %do.body51.i.chk_lsu.i_crit_edge, %for.body.chk_lsu.i_crit_edge
  %add.ptr61.i = getelementptr i8, ptr %add.ptr1.i, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr61.i) #7, !srcloc !691
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !706
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool65.not.i = icmp eq i32 %30, 0
  br i1 %tobool65.not.i, label %chk_lsu.i.chk_mmu.i_crit_edge, label %do.end70.i

chk_lsu.i.chk_mmu.i_crit_edge:                    ; preds = %chk_lsu.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_mmu.i

do.end70.i:                                       ; preds = %chk_lsu.i
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %pmd72.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %11, i32 0, i32 6
  %34 = ptrtoint ptr %pmd72.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pmd72.i, align 8
  %mul73.i = shl i32 %35, 1
  %add74.i = or i32 %mul73.i, %i.018
  %shr76.i = lshr i32 %31, 24
  %and77.i = lshr i32 %31, 16
  %shr78.i = and i32 %and77.i, 63
  %and79.i = lshr i32 %31, 8
  %shr80.i = and i32 %and79.i, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.81, i32 noundef %add74.i, i32 noundef %31, i32 noundef %shr76.i, i32 noundef %shr78.i, i32 noundef %shr80.i) #10
  %and81.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %do.end70.i.if.end88.i_crit_edge, label %do.end86.i

do.end70.i.if.end88.i_crit_edge:                  ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88.i

do.end86.i:                                       ; preds = %do.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.60) #10
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end86.i, %do.end70.i.if.end88.i_crit_edge
  %and89.i = and i32 %31, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end88.i.if.end96.i_crit_edge, label %do.end94.i

if.end88.i.if.end96.i_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96.i

do.end94.i:                                       ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.63) #10
  br label %if.end96.i

if.end96.i:                                       ; preds = %do.end94.i, %if.end88.i.if.end96.i_crit_edge
  %and97.i = lshr i32 %31, 4
  %shr98.i = and i32 %and97.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr98.i)
  %40 = icmp ult i32 %shr98.i, 6
  br i1 %40, label %switch.lookup20, label %if.end96.i.do.body130.i_crit_edge

if.end96.i.do.body130.i_crit_edge:                ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body130.i

switch.lookup20:                                  ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep21 = getelementptr inbounds [6 x ptr], ptr @switch.table.xgene_edac_pmd_check.433, i32 0, i32 %shr98.i
  %41 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load22 = load ptr, ptr %switch.gep21, align 4
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull %switch.load22) #10
  br label %do.body130.i

do.body130.i:                                     ; preds = %switch.lookup20, %if.end96.i.do.body130.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !707
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr61.i, i32 %30) #7, !srcloc !690
  %and134.i = and i32 %31, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134.i)
  %tobool135.not.i = icmp eq i32 %and134.i, 0
  br i1 %tobool135.not.i, label %do.body130.i.chk_mmu.i_crit_edge, label %if.then136.i

do.body130.i.chk_mmu.i_crit_edge:                 ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_mmu.i

if.then136.i:                                     ; preds = %do.body130.i
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %45) #7
  br label %chk_mmu.i

chk_mmu.i:                                        ; preds = %if.then136.i, %do.body130.i.chk_mmu.i_crit_edge, %chk_lsu.i.chk_mmu.i_crit_edge
  %add.ptr141.i = getelementptr i8, ptr %add.ptr1.i, i32 20
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141.i) #7, !srcloc !691
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !708
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool145.not.i = icmp eq i32 %46, 0
  br i1 %tobool145.not.i, label %chk_mmu.i.xgene_edac_pmd_l1_check.exit_crit_edge, label %do.end150.i

chk_mmu.i.xgene_edac_pmd_l1_check.exit_crit_edge: ; preds = %chk_mmu.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_pmd_l1_check.exit

do.end150.i:                                      ; preds = %chk_mmu.i
  %48 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i, align 4
  %pmd152.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %11, i32 0, i32 6
  %50 = ptrtoint ptr %pmd152.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pmd152.i, align 8
  %mul153.i = shl i32 %51, 1
  %add154.i = or i32 %mul153.i, %i.018
  %shr156.i = lshr i32 %47, 24
  %and157.i = lshr i32 %47, 16
  %shr158.i = and i32 %and157.i, 127
  %and159.i = lshr i32 %47, 8
  %shr160.i = and i32 %and159.i, 255
  %and161.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i)
  %tobool162.not.i = icmp eq i32 %and161.i, 0
  %cond.i = select i1 %tobool162.not.i, ptr @.str.109, ptr @.str.108
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.106, i32 noundef %add154.i, i32 noundef %47, i32 noundef %shr156.i, i32 noundef %shr158.i, i32 noundef %shr160.i, ptr noundef nonnull %cond.i) #10
  %and163.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163.i)
  %tobool164.not.i = icmp eq i32 %and163.i, 0
  br i1 %tobool164.not.i, label %do.end150.i.if.end170.i_crit_edge, label %do.end168.i

do.end150.i.if.end170.i_crit_edge:                ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end170.i

do.end168.i:                                      ; preds = %do.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %53, ptr noundef nonnull @.str.60) #10
  br label %if.end170.i

if.end170.i:                                      ; preds = %do.end168.i, %do.end150.i.if.end170.i_crit_edge
  %and171.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and171.i)
  %tobool172.not.i = icmp eq i32 %and171.i, 0
  br i1 %tobool172.not.i, label %if.end170.i.if.end178.i_crit_edge, label %do.end176.i

if.end170.i.if.end178.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end178.i

do.end176.i:                                      ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.63) #10
  br label %if.end178.i

if.end178.i:                                      ; preds = %do.end176.i, %if.end170.i.if.end178.i_crit_edge
  %and179.i = lshr i32 %47, 4
  %shr180.i = and i32 %and179.i, 7
  %switch.gep24 = getelementptr inbounds [8 x ptr], ptr @switch.table.xgene_edac_pmd_check.434, i32 0, i32 %shr180.i
  %56 = ptrtoint ptr %switch.gep24 to i32
  call void @__asan_load4_noabort(i32 %56)
  %switch.load25 = load ptr, ptr %switch.gep24, align 4
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull %switch.load25) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !709
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr141.i, i32 %46) #7, !srcloc !690
  %59 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %60) #7
  br label %xgene_edac_pmd_l1_check.exit

xgene_edac_pmd_l1_check.exit:                     ; preds = %if.end178.i, %chk_mmu.i.xgene_edac_pmd_l1_check.exit_crit_edge
  br i1 %cmp, label %xgene_edac_pmd_l1_check.exit.for.body_crit_edge, label %for.end

xgene_edac_pmd_l1_check.exit.for.body_crit_edge:  ; preds = %xgene_edac_pmd_l1_check.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %xgene_edac_pmd_l1_check.exit
  %61 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pvt_info, align 4
  %pmd_csr.i9 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %pmd_csr.i9 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %pmd_csr.i9, align 4
  %add.ptr1.i10 = getelementptr i8, ptr %64, i32 917508
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i10) #7, !srcloc !691
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !710
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.not.i11 = icmp eq i32 %65, 0
  br i1 %tobool.not.i11, label %for.end.chk_l2c.i_crit_edge, label %if.end.i

for.end.chk_l2c.i_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_l2c.i

if.end.i:                                         ; preds = %for.end
  %add.ptr5.i = getelementptr i8, ptr %64, i32 917512
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !691
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !711
  %add.ptr11.i = getelementptr i8, ptr %64, i32 917516
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #7, !srcloc !691
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !712
  %71 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i, align 4
  %pmd.i13 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %62, i32 0, i32 6
  %73 = ptrtoint ptr %pmd.i13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %pmd.i13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %72, ptr noundef nonnull @.str.138, i32 noundef %74, i32 noundef %66, i32 noundef %70, i32 noundef %68) #10
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  %shr.i14 = lshr i32 %66, 24
  %and19.i = lshr i32 %66, 18
  %shr20.i = and i32 %and19.i, 63
  %and21.i = lshr i32 %66, 17
  %shr22.i = and i32 %and21.i, 1
  %and23.i = lshr i32 %66, 13
  %shr24.i = and i32 %and23.i, 7
  %and25.i15 = lshr i32 %66, 10
  %shr26.i16 = and i32 %and25.i15, 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.141, i32 noundef %shr.i14, i32 noundef %shr20.i, i32 noundef %shr22.i, i32 noundef %shr24.i, i32 noundef %shr26.i16) #10
  %and27.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end.i.if.end34.i_crit_edge, label %do.end32.i

if.end.i.if.end34.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34.i

do.end32.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.60) #10
  br label %if.end34.i

if.end34.i:                                       ; preds = %do.end32.i, %if.end.i.if.end34.i_crit_edge
  %and35.i = and i32 %66, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.i)
  %tobool36.not.i = icmp eq i32 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end42.i_crit_edge, label %do.end40.i

if.end34.i.if.end42.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.63) #10
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end40.i, %if.end34.i.if.end42.i_crit_edge
  %and43.i = and i32 %66, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end50.i_crit_edge, label %do.end48.i

if.end42.i.if.end50.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end48.i:                                       ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.148) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end48.i, %if.end42.i.if.end50.i_crit_edge
  %and51.i = and i32 %66, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end50.i.if.end58.i_crit_edge, label %do.end56.i

if.end50.i.if.end58.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58.i

do.end56.i:                                       ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.151) #10
  br label %if.end58.i

if.end58.i:                                       ; preds = %do.end56.i, %if.end50.i.if.end58.i_crit_edge
  %and59.i = lshr i32 %66, 8
  %shr60.i = and i32 %and59.i, 3
  %switch.gep27 = getelementptr inbounds [4 x ptr], ptr @switch.table.xgene_edac_pmd_check.435, i32 0, i32 %shr60.i
  %85 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %85)
  %switch.load28 = load ptr, ptr %switch.gep27, align 4
  %86 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull %switch.load28) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !713
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i10, i32 %65) #7, !srcloc !690
  %and84.i = and i32 %66, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84.i)
  %tobool85.not.i = icmp eq i32 %and84.i, 0
  br i1 %tobool85.not.i, label %if.end58.i.if.end87.i_crit_edge, label %if.then86.i

if.end58.i.if.end87.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87.i

if.then86.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %89) #7
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then86.i, %if.end58.i.if.end87.i_crit_edge
  %and88.i = and i32 %66, 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end87.i.chk_l2c.i_crit_edge, label %if.then90.i

if.end87.i.chk_l2c.i_crit_edge:                   ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_l2c.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %91) #7
  br label %chk_l2c.i

chk_l2c.i:                                        ; preds = %if.then90.i, %if.end87.i.chk_l2c.i_crit_edge, %for.end.chk_l2c.i_crit_edge
  %92 = ptrtoint ptr %pmd_csr.i9 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pmd_csr.i9, align 4
  %add.ptr97.i = getelementptr i8, ptr %93, i32 851988
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr97.i) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !714
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool101.not.i = icmp eq i32 %94, 0
  br i1 %tobool101.not.i, label %chk_l2c.i.cleanup_crit_edge, label %if.then102.i

chk_l2c.i.cleanup_crit_edge:                      ; preds = %chk_l2c.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then102.i:                                     ; preds = %chk_l2c.i
  call void @__sanitizer_cov_trace_pc() #9
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  %add.ptr105.i = getelementptr i8, ptr %93, i32 851992
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr105.i) #7, !srcloc !691
  %97 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !715
  %add.ptr111.i = getelementptr i8, ptr %93, i32 851996
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr111.i) #7, !srcloc !691
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !716
  %100 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev.i, align 4
  %pmd119.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %62, i32 0, i32 6
  %102 = ptrtoint ptr %pmd119.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pmd119.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.166, i32 noundef %103, i32 noundef %95, i32 noundef %99, i32 noundef %97) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !717
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr97.i, i32 %94) #7, !srcloc !690
  br label %cleanup

cleanup:                                          ; preds = %if.then102.i, %chk_l2c.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_edac_l3_check(ptr noundef %edac_dev) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %dev_csr = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_csr, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 40
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !691
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !718
  %and = and i32 %5, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and2 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %do.end

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.168) #10
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.end.if.end5_crit_edge
  %and6 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end5.if.end13_crit_edge, label %do.end11

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev12 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.171) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end11, %if.end5.if.end13_crit_edge
  %10 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_csr, align 8
  %add.ptr17 = getelementptr i8, ptr %11, i32 48
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #7, !srcloc !691
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !719
  %14 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev_csr, align 8
  %add.ptr24 = getelementptr i8, ptr %15, i32 52
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !691
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !720
  %18 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_csr, align 8
  %add.ptr31 = getelementptr i8, ptr %19, i32 56
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #7, !srcloc !691
  %21 = lshr i32 %20, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !721
  %and35 = and i32 %5, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end13.if.end42_crit_edge, label %do.end40

if.end13.if.end42_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.end40:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %dev41 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %22 = ptrtoint ptr %dev41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.174) #10
  br label %if.end42

if.end42:                                         ; preds = %do.end40, %if.end13.if.end42_crit_edge
  %and43 = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  br i1 %tobool44.not, label %if.end42.if.end50_crit_edge, label %do.end48

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50

do.end48:                                         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #9
  %dev49 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %24 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.177) #10
  br label %if.end50

if.end50:                                         ; preds = %do.end48, %if.end42.if.end50_crit_edge
  %and51 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  br i1 %tobool52.not, label %if.end50.if.end58_crit_edge, label %do.end56

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end58

do.end56:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  %dev57 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %26 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.180) #10
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.end50.if.end58_crit_edge
  %and59 = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  %dev72 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %28 = ptrtoint ptr %dev72 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev72, align 4
  %shr74 = lshr i32 %13, 23
  br i1 %tobool60.not, label %do.end71, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %and67 = lshr i32 %13, 8
  %shr68 = and i32 %and67, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.183, i32 noundef %shr74, i32 noundef %shr68) #10
  br label %do.end84

do.end71:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %and75 = lshr i32 %13, 17
  %shr76 = and i32 %and75, 63
  %and77 = lshr i32 %13, 13
  %shr78 = and i32 %and77, 15
  %and79 = lshr i32 %13, 4
  %shr80 = and i32 %and79, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.186, i32 noundef %shr74, i32 noundef %shr76, i32 noundef %shr78, i32 noundef %shr80) #10
  br label %do.end84

do.end84:                                         ; preds = %do.end71, %do.end64
  %dev85 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %30 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev85, align 4
  %and86 = shl i32 %13, 6
  %shl = and i32 %and86, 960
  %shr87 = lshr i32 %17, 26
  %or = or i32 %shr87, %shl
  %shl89 = shl i32 %17, 6
  %and90 = and i32 %21, 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.189, i32 noundef %or, i32 noundef %shl89, i32 noundef %and90) #10
  %32 = ptrtoint ptr %dev85 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev85, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.192, i32 noundef %5) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !722
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_csr, align 8
  %add.ptr99 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr99, i32 0) #7, !srcloc !690
  %version = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 7
  %36 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp = icmp slt i32 %37, 2
  br i1 %cmp, label %land.lhs.true, label %do.end84.if.end102_crit_edge

do.end84.if.end102_crit_edge:                     ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

land.lhs.true:                                    ; preds = %do.end84
  br i1 %tobool60.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %land.lhs.true
  %shr.i = lshr i32 %13, 23
  %38 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values.436)
  switch i32 %shr.i, label %if.then.i.if.end102_crit_edge [
    i32 316, label %if.then.i.cleanup.sink.split_crit_edge
    i32 180, label %if.then.i.cleanup.sink.split_crit_edge156
    i32 7, label %if.then.i.cleanup.sink.split_crit_edge157
    i32 13, label %if.then.i.cleanup.sink.split_crit_edge158
    i32 14, label %if.then.i.cleanup.sink.split_crit_edge159
    i32 25, label %if.then.i.cleanup.sink.split_crit_edge160
    i32 26, label %if.then.i.cleanup.sink.split_crit_edge161
    i32 28, label %if.then.i.cleanup.sink.split_crit_edge162
    i32 78, label %if.then.i.cleanup.sink.split_crit_edge163
    i32 65, label %if.then.i.cleanup.sink.split_crit_edge164
  ]

if.then.i.cleanup.sink.split_crit_edge164:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge163:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge162:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge161:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge160:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge159:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge158:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge157:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge156:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.if.end102_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.else.i:                                        ; preds = %land.lhs.true
  %39 = and i32 %13, 8257536
  call void @__sanitizer_cov_trace_const_cmp4(i32 1179648, i32 %39)
  %cmp.i = icmp eq i32 %39, 1179648
  br i1 %cmp.i, label %if.else.i.cleanup.sink.split_crit_edge, label %if.else.i.if.end102_crit_edge

if.else.i.if.end102_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end102:                                        ; preds = %if.else.i.if.end102_crit_edge, %if.then.i.if.end102_crit_edge, %do.end84.if.end102_crit_edge
  br i1 %tobool7.not, label %if.end102.if.end107_crit_edge, label %if.then105

if.end102.if.end107_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end107

if.then105:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_name106 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %40 = ptrtoint ptr %ctl_name106 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctl_name106, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %41) #7
  br label %if.end107

if.end107:                                        ; preds = %if.then105, %if.end102.if.end107_crit_edge
  br i1 %tobool3.not, label %if.end107.cleanup_crit_edge, label %if.end107.cleanup.sink.split_crit_edge

if.end107.cleanup.sink.split_crit_edge:           ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end107.cleanup.sink.split_crit_edge, %if.else.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge156, %if.then.i.cleanup.sink.split_crit_edge157, %if.then.i.cleanup.sink.split_crit_edge158, %if.then.i.cleanup.sink.split_crit_edge159, %if.then.i.cleanup.sink.split_crit_edge160, %if.then.i.cleanup.sink.split_crit_edge161, %if.then.i.cleanup.sink.split_crit_edge162, %if.then.i.cleanup.sink.split_crit_edge163, %if.then.i.cleanup.sink.split_crit_edge164
  %ctl_name111 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %42 = ptrtoint ptr %ctl_name111 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ctl_name111, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %43) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end107.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgene_edac_soc_check(ptr noundef %edac_dev) #4 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %edac = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edac, align 4
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcp_csr.i, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #7, !srcloc !691
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %8 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edac, align 4
  %pcp_csr.i70 = getelementptr inbounds %struct.xgene_edac, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %pcp_csr.i70 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcp_csr.i70, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %13 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %edac, align 4
  %pcp_csr.i71 = getelementptr inbounds %struct.xgene_edac, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %pcp_csr.i71 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcp_csr.i71, align 4
  %add.ptr.i72 = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #7, !srcloc !691
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !692
  %and = and i32 %7, 3840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %19 = and i32 %12, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool4.not = icmp eq i32 %19, 0
  %or.cond = select i1 %tobool.not, i1 %tobool4.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool6.not = icmp eq i32 %17, 0
  %or.cond116 = select i1 %or.cond, i1 %tobool6.not, i1 false
  br i1 %or.cond116, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %and7 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.then9

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then9:                                         ; preds = %if.end
  %20 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pvt_info, align 4
  %dev_csr.i = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %21, i32 0, i32 6
  %22 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr.i73 = getelementptr i8, ptr %23, i32 80
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i73) #7, !srcloc !691
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !723
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i = icmp eq i32 %24, 0
  br i1 %tobool.not.i, label %if.then9.chk_iob_err.i_crit_edge, label %do.end.i

if.then9.chk_iob_err.i_crit_edge:                 ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_iob_err.i

do.end.i:                                         ; preds = %if.then9
  %dev.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.203) #10
  %and.i = and i32 %25, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %do.end.i.if.end8.i_crit_edge, label %do.end6.i

do.end.i.if.end8.i_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i

do.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.206) #10
  br label %if.end8.i

if.end8.i:                                        ; preds = %do.end6.i, %do.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %25, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end16.i_crit_edge, label %do.end14.i

if.end8.i.if.end16.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i

do.end14.i:                                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.209) #10
  br label %if.end16.i

if.end16.i:                                       ; preds = %do.end14.i, %if.end8.i.if.end16.i_crit_edge
  %and17.i = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end16.i.if.end24.i_crit_edge, label %do.end22.i

if.end16.i.if.end24.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i

do.end22.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.212) #10
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end22.i, %if.end16.i.if.end24.i_crit_edge
  %and25.i = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end24.i.if.end32.i_crit_edge, label %do.end30.i

if.end24.i.if.end32.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i

do.end30.i:                                       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.215) #10
  br label %if.end32.i

if.end32.i:                                       ; preds = %do.end30.i, %if.end24.i.if.end32.i_crit_edge
  %36 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr36.i = getelementptr i8, ptr %37, i32 88
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #7, !srcloc !691
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !724
  %40 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i, align 4
  %and44.i = and i32 %39, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %cond.i = select i1 %tobool45.not.i, ptr @.str.221, ptr @.str.220
  %and46.i = and i32 %39, 67108863
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.218, ptr noundef nonnull %cond.i, i32 noundef %and46.i, i32 noundef %39) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !725
  tail call void @arm_heavy_mb() #7
  %42 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr51.i = getelementptr i8, ptr %43, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51.i, i32 %24) #7, !srcloc !690
  br label %chk_iob_err.i

chk_iob_err.i:                                    ; preds = %if.end32.i, %if.then9.chk_iob_err.i_crit_edge
  %44 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr55.i = getelementptr i8, ptr %45, i32 2048
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr55.i) #7, !srcloc !691
  %47 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !726
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool59.not.i = icmp eq i32 %46, 0
  br i1 %tobool59.not.i, label %chk_iob_err.i.if.end10_crit_edge, label %if.end61.i

chk_iob_err.i.if.end10_crit_edge:                 ; preds = %chk_iob_err.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end61.i:                                       ; preds = %chk_iob_err.i
  %and62.i = and i32 %47, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62.i)
  %tobool63.not.i = icmp eq i32 %and62.i, 0
  br i1 %tobool63.not.i, label %if.end61.i.if.end93.i_crit_edge, label %if.then64.i

if.end61.i.if.end93.i_crit_edge:                  ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end93.i

if.then64.i:                                      ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr68.i = getelementptr i8, ptr %49, i32 2064
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68.i) #7, !srcloc !691
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !727
  %52 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr75.i = getelementptr i8, ptr %53, i32 2072
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr75.i) #7, !srcloc !691
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !728
  %dev82.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %56 = ptrtoint ptr %dev82.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev82.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.223, i32 noundef %51, i32 noundef %55) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !729
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr87.i = getelementptr i8, ptr %59, i32 2064
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87.i, i32 %50) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !730
  tail call void @arm_heavy_mb() #7
  %60 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr92.i = getelementptr i8, ptr %61, i32 2072
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr92.i, i32 %54) #7, !srcloc !690
  br label %if.end93.i

if.end93.i:                                       ; preds = %if.then64.i, %if.end61.i.if.end93.i_crit_edge
  %and94.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94.i)
  %tobool95.not.i = icmp eq i32 %and94.i, 0
  br i1 %tobool95.not.i, label %if.end93.i.if.end125.i_crit_edge, label %if.then96.i

if.end93.i.if.end125.i_crit_edge:                 ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.then96.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr100.i = getelementptr i8, ptr %63, i32 2080
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100.i) #7, !srcloc !691
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !731
  %66 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr107.i = getelementptr i8, ptr %67, i32 2088
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107.i) #7, !srcloc !691
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !732
  %dev114.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %70 = ptrtoint ptr %dev114.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev114.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.226, i32 noundef %65, i32 noundef %69) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !733
  tail call void @arm_heavy_mb() #7
  %72 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr119.i = getelementptr i8, ptr %73, i32 2080
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr119.i, i32 %64) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !734
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr124.i = getelementptr i8, ptr %75, i32 2088
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr124.i, i32 %68) #7, !srcloc !690
  br label %if.end125.i

if.end125.i:                                      ; preds = %if.then96.i, %if.end93.i.if.end125.i_crit_edge
  %and126.i = and i32 %47, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and126.i)
  %tobool127.not.i = icmp eq i32 %and126.i, 0
  br i1 %tobool127.not.i, label %if.end125.i.if.end129.i_crit_edge, label %if.then128.i

if.end125.i.if.end129.i_crit_edge:                ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end129.i

if.then128.i:                                     ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_name.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %76 = ptrtoint ptr %ctl_name.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ctl_name.i, align 4
  tail call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %77) #7
  br label %if.end129.i

if.end129.i:                                      ; preds = %if.then128.i, %if.end125.i.if.end129.i_crit_edge
  %and130.i = and i32 %47, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130.i)
  %tobool131.not.i = icmp eq i32 %and130.i, 0
  br i1 %tobool131.not.i, label %if.end129.i.if.end161.i_crit_edge, label %if.then132.i

if.end129.i.if.end161.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end161.i

if.then132.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr136.i = getelementptr i8, ptr %79, i32 2096
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr136.i) #7, !srcloc !691
  %81 = tail call i32 @llvm.bswap.i32(i32 %80) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !735
  %82 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr143.i = getelementptr i8, ptr %83, i32 2104
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr143.i) #7, !srcloc !691
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !736
  %dev150.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %86 = ptrtoint ptr %dev150.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev150.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %87, ptr noundef nonnull @.str.229, i32 noundef %81, i32 noundef %85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !737
  tail call void @arm_heavy_mb() #7
  %88 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr155.i = getelementptr i8, ptr %89, i32 2096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr155.i, i32 %80) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !738
  tail call void @arm_heavy_mb() #7
  %90 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr160.i = getelementptr i8, ptr %91, i32 2104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr160.i, i32 %84) #7, !srcloc !690
  br label %if.end161.i

if.end161.i:                                      ; preds = %if.then132.i, %if.end129.i.if.end161.i_crit_edge
  %and162.i = and i32 %47, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and162.i)
  %tobool163.not.i = icmp eq i32 %and162.i, 0
  br i1 %tobool163.not.i, label %if.end161.i.if.end193.i_crit_edge, label %if.then164.i

if.end161.i.if.end193.i_crit_edge:                ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end193.i

if.then164.i:                                     ; preds = %if.end161.i
  call void @__sanitizer_cov_trace_pc() #9
  %92 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr168.i = getelementptr i8, ptr %93, i32 2112
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr168.i) #7, !srcloc !691
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !739
  %96 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr175.i = getelementptr i8, ptr %97, i32 2120
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr175.i) #7, !srcloc !691
  %99 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !740
  %dev182.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %100 = ptrtoint ptr %dev182.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev182.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %101, ptr noundef nonnull @.str.232, i32 noundef %95, i32 noundef %99) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !741
  tail call void @arm_heavy_mb() #7
  %102 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr187.i = getelementptr i8, ptr %103, i32 2112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr187.i, i32 %94) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !742
  tail call void @arm_heavy_mb() #7
  %104 = ptrtoint ptr %dev_csr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %dev_csr.i, align 8
  %add.ptr192.i = getelementptr i8, ptr %105, i32 2120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr192.i, i32 %98) #7, !srcloc !690
  br label %if.end193.i

if.end193.i:                                      ; preds = %if.then164.i, %if.end161.i.if.end193.i_crit_edge
  %and194.i = and i32 %47, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i)
  %tobool195.not.i = icmp eq i32 %and194.i, 0
  br i1 %tobool195.not.i, label %if.end193.i.if.end10_crit_edge, label %if.then196.i

if.end193.i.if.end10_crit_edge:                   ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then196.i:                                     ; preds = %if.end193.i
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_name197.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %106 = ptrtoint ptr %ctl_name197.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ctl_name197.i, align 4
  tail call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %107) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then196.i, %if.end193.i.if.end10_crit_edge, %chk_iob_err.i.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %and11 = and i32 %7, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end14_crit_edge, label %if.then13

if.end10.if.end14_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then13:                                        ; preds = %if.end10
  %108 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pvt_info, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #7
  %110 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 -1, ptr %reg.i, align 4, !annotation !693
  %edac.i = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %109, i32 0, i32 3
  %111 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %edac.i, align 4
  %rb_map.i = getelementptr inbounds %struct.xgene_edac, ptr %112, i32 0, i32 5
  %113 = ptrtoint ptr %rb_map.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %rb_map.i, align 4
  %tobool.not.i75 = icmp eq ptr %114, null
  br i1 %tobool.not.i75, label %if.then13.rb_skip.i_crit_edge, label %if.end.i

if.then13.rb_skip.i_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %rb_skip.i

if.end.i:                                         ; preds = %if.then13
  %call.i = call i32 @regmap_read(ptr noundef nonnull %114, i32 noundef 0, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.xgene_edac_rb_report.exit_crit_edge

if.end.i.xgene_edac_rb_report.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_rb_report.exit

if.end5.i:                                        ; preds = %if.end.i
  %115 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %reg.i, align 4
  %and.i76 = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i76)
  %tobool6.not.i = icmp eq i32 %and.i76, 0
  br i1 %tobool6.not.i, label %if.end5.i.rb_skip.i_crit_edge, label %if.then7.i

if.end5.i.rb_skip.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rb_skip.i

if.then7.i:                                       ; preds = %if.end5.i
  %dev.i77 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %117 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.234) #10
  %119 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %edac.i, align 4
  %rb_map9.i = getelementptr inbounds %struct.xgene_edac, ptr %120, i32 0, i32 5
  %121 = ptrtoint ptr %rb_map9.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %rb_map9.i, align 4
  %call10.i = call i32 @regmap_read(ptr noundef %122, i32 noundef 8, ptr noundef nonnull %reg.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.then7.i.xgene_edac_rb_report.exit_crit_edge

if.then7.i.xgene_edac_rb_report.exit_crit_edge:   ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_rb_report.exit

if.end13.i:                                       ; preds = %if.then7.i
  %123 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %reg.i, align 4
  %and14.i = and i32 %124, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %and17.i78 = and i32 %124, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i78)
  %tobool18.not.i79 = icmp eq i32 %and17.i78, 0
  br i1 %tobool18.not.i79, label %if.end13.i.if.end26.i_crit_edge, label %do.end22.i80

if.end13.i.if.end26.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end22.i80:                                     ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  %125 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %dev.i77, align 4
  %cond25.i = select i1 %tobool15.not.i, ptr @.str.220, ptr @.str.221
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %126, ptr noundef nonnull @.str.237, ptr noundef nonnull %cond25.i) #10
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end22.i80, %if.end13.i.if.end26.i_crit_edge
  %127 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %reg.i, align 4
  %and27.i = and i32 %128, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  br i1 %tobool28.not.i, label %if.end26.i.if.end36.i_crit_edge, label %do.end32.i

if.end26.i.if.end36.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.end32.i:                                       ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  %129 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dev.i77, align 4
  %cond35.i = select i1 %tobool15.not.i, ptr @.str.220, ptr @.str.221
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %130, ptr noundef nonnull @.str.240, ptr noundef nonnull %cond35.i) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end32.i, %if.end26.i.if.end36.i_crit_edge
  %131 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %reg.i, align 4
  %and37.i = and i32 %132, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  br i1 %tobool38.not.i, label %if.end36.i.if.end46.i_crit_edge, label %do.end42.i

if.end36.i.if.end46.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end46.i

do.end42.i:                                       ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  %133 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dev.i77, align 4
  %cond45.i = select i1 %tobool15.not.i, ptr @.str.220, ptr @.str.221
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.243, ptr noundef nonnull %cond45.i) #10
  br label %if.end46.i

if.end46.i:                                       ; preds = %do.end42.i, %if.end36.i.if.end46.i_crit_edge
  %135 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %reg.i, align 4
  %and47.i = and i32 %136, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool48.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool48.not.i, label %if.end46.i.if.end56.i_crit_edge, label %do.end52.i

if.end46.i.if.end56.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i

do.end52.i:                                       ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #9
  %137 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev.i77, align 4
  %cond55.i = select i1 %tobool15.not.i, ptr @.str.220, ptr @.str.221
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.246, ptr noundef nonnull %cond55.i) #10
  br label %if.end56.i

if.end56.i:                                       ; preds = %do.end52.i, %if.end46.i.if.end56.i_crit_edge
  %139 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %edac.i, align 4
  %rb_map58.i = getelementptr inbounds %struct.xgene_edac, ptr %140, i32 0, i32 5
  %141 = ptrtoint ptr %rb_map58.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rb_map58.i, align 4
  %call59.i = call i32 @regmap_write(ptr noundef %142, i32 noundef 8, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end56.i.xgene_edac_rb_report.exit_crit_edge

if.end56.i.xgene_edac_rb_report.exit_crit_edge:   ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_rb_report.exit

if.end62.i:                                       ; preds = %if.end56.i
  %143 = ptrtoint ptr %edac.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %edac.i, align 4
  %rb_map64.i = getelementptr inbounds %struct.xgene_edac, ptr %144, i32 0, i32 5
  %145 = ptrtoint ptr %rb_map64.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %rb_map64.i, align 4
  %call65.i = call i32 @regmap_write(ptr noundef %146, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65.i)
  %tobool66.not.i = icmp eq i32 %call65.i, 0
  br i1 %tobool66.not.i, label %if.end62.i.rb_skip.i_crit_edge, label %if.end62.i.xgene_edac_rb_report.exit_crit_edge

if.end62.i.xgene_edac_rb_report.exit_crit_edge:   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_rb_report.exit

if.end62.i.rb_skip.i_crit_edge:                   ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rb_skip.i

rb_skip.i:                                        ; preds = %if.end62.i.rb_skip.i_crit_edge, %if.end5.i.rb_skip.i_crit_edge, %if.then13.rb_skip.i_crit_edge
  %dev_csr.i81 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %109, i32 0, i32 6
  %147 = ptrtoint ptr %dev_csr.i81 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %dev_csr.i81, align 8
  %add.ptr.i82 = getelementptr i8, ptr %148, i32 48
  %149 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #7, !srcloc !691
  %150 = call i32 @llvm.bswap.i32(i32 %149) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !743
  %151 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %150, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %149)
  %tobool72.not.i = icmp eq i32 %149, 0
  br i1 %tobool72.not.i, label %rb_skip.i.xgene_edac_rb_report.exit_crit_edge, label %do.end77.i

rb_skip.i.xgene_edac_rb_report.exit_crit_edge:    ; preds = %rb_skip.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_rb_report.exit

do.end77.i:                                       ; preds = %rb_skip.i
  %dev78.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %152 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.249) #10
  %154 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %reg.i, align 4
  %and79.i = and i32 %155, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i)
  %tobool80.not.i = icmp eq i32 %and79.i, 0
  br i1 %tobool80.not.i, label %do.end77.i.if.end86.i_crit_edge, label %do.end84.i

do.end77.i.if.end86.i_crit_edge:                  ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86.i

do.end84.i:                                       ; preds = %do.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  %156 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %157, ptr noundef nonnull @.str.252) #10
  br label %if.end86.i

if.end86.i:                                       ; preds = %do.end84.i, %do.end77.i.if.end86.i_crit_edge
  %158 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %reg.i, align 4
  %and87.i = and i32 %159, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %if.end86.i.if.end94.i_crit_edge, label %do.end92.i

if.end86.i.if.end94.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end94.i

do.end92.i:                                       ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %161, ptr noundef nonnull @.str.255) #10
  br label %if.end94.i

if.end94.i:                                       ; preds = %do.end92.i, %if.end86.i.if.end94.i_crit_edge
  %162 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %reg.i, align 4
  %and95.i = and i32 %163, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.if.end102.i_crit_edge, label %do.end100.i

if.end94.i.if.end102.i_crit_edge:                 ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102.i

do.end100.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #9
  %164 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %165, ptr noundef nonnull @.str.258) #10
  br label %if.end102.i

if.end102.i:                                      ; preds = %do.end100.i, %if.end94.i.if.end102.i_crit_edge
  %166 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %reg.i, align 4
  %and103.i = and i32 %167, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and103.i)
  %tobool104.not.i = icmp eq i32 %and103.i, 0
  br i1 %tobool104.not.i, label %if.end102.i.if.end110.i_crit_edge, label %do.end108.i

if.end102.i.if.end110.i_crit_edge:                ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110.i

do.end108.i:                                      ; preds = %if.end102.i
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.261) #10
  br label %if.end110.i

if.end110.i:                                      ; preds = %do.end108.i, %if.end102.i.if.end110.i_crit_edge
  %170 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %reg.i, align 4
  %and111.i = and i32 %171, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111.i)
  %tobool112.not.i = icmp eq i32 %and111.i, 0
  br i1 %tobool112.not.i, label %if.end110.i.if.end118.i_crit_edge, label %do.end116.i

if.end110.i.if.end118.i_crit_edge:                ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end118.i

do.end116.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #9
  %172 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %173, ptr noundef nonnull @.str.264) #10
  br label %if.end118.i

if.end118.i:                                      ; preds = %do.end116.i, %if.end110.i.if.end118.i_crit_edge
  %174 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %reg.i, align 4
  %and119.i = and i32 %175, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119.i)
  %tobool120.not.i = icmp eq i32 %and119.i, 0
  br i1 %tobool120.not.i, label %if.end118.i.if.end126.i_crit_edge, label %do.end124.i

if.end118.i.if.end126.i_crit_edge:                ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126.i

do.end124.i:                                      ; preds = %if.end118.i
  call void @__sanitizer_cov_trace_pc() #9
  %176 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %177, ptr noundef nonnull @.str.267) #10
  br label %if.end126.i

if.end126.i:                                      ; preds = %do.end124.i, %if.end118.i.if.end126.i_crit_edge
  %178 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %reg.i, align 4
  %and127.i = and i32 %179, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i)
  %tobool128.not.i = icmp eq i32 %and127.i, 0
  br i1 %tobool128.not.i, label %if.end126.i.if.end134.i_crit_edge, label %do.end132.i

if.end126.i.if.end134.i_crit_edge:                ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end134.i

do.end132.i:                                      ; preds = %if.end126.i
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %181, ptr noundef nonnull @.str.270) #10
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end132.i, %if.end126.i.if.end134.i_crit_edge
  %182 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %reg.i, align 4
  %and135.i = and i32 %183, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135.i)
  %tobool136.not.i = icmp eq i32 %and135.i, 0
  br i1 %tobool136.not.i, label %if.end134.i.if.end142.i_crit_edge, label %do.end140.i

if.end134.i.if.end142.i_crit_edge:                ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end142.i

do.end140.i:                                      ; preds = %if.end134.i
  call void @__sanitizer_cov_trace_pc() #9
  %184 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %185, ptr noundef nonnull @.str.273) #10
  br label %if.end142.i

if.end142.i:                                      ; preds = %do.end140.i, %if.end134.i.if.end142.i_crit_edge
  %186 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %reg.i, align 4
  %and143.i = and i32 %187, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and143.i)
  %tobool144.not.i = icmp eq i32 %and143.i, 0
  br i1 %tobool144.not.i, label %if.end142.i.if.end150.i_crit_edge, label %do.end148.i

if.end142.i.if.end150.i_crit_edge:                ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end150.i

do.end148.i:                                      ; preds = %if.end142.i
  call void @__sanitizer_cov_trace_pc() #9
  %188 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.276) #10
  br label %if.end150.i

if.end150.i:                                      ; preds = %do.end148.i, %if.end142.i.if.end150.i_crit_edge
  %190 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %reg.i, align 4
  %and151.i = and i32 %191, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151.i)
  %tobool152.not.i = icmp eq i32 %and151.i, 0
  br i1 %tobool152.not.i, label %if.end150.i.if.end158.i_crit_edge, label %do.end156.i

if.end150.i.if.end158.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end158.i

do.end156.i:                                      ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %193, ptr noundef nonnull @.str.279) #10
  br label %if.end158.i

if.end158.i:                                      ; preds = %do.end156.i, %if.end150.i.if.end158.i_crit_edge
  %194 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %reg.i, align 4
  %and159.i = and i32 %195, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and159.i)
  %tobool160.not.i = icmp eq i32 %and159.i, 0
  br i1 %tobool160.not.i, label %if.end158.i.if.end166.i_crit_edge, label %do.end164.i

if.end158.i.if.end166.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end166.i

do.end164.i:                                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #9
  %196 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %197, ptr noundef nonnull @.str.282) #10
  br label %if.end166.i

if.end166.i:                                      ; preds = %do.end164.i, %if.end158.i.if.end166.i_crit_edge
  %198 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %reg.i, align 4
  %and167.i = and i32 %199, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and167.i)
  %tobool168.not.i = icmp eq i32 %and167.i, 0
  br i1 %tobool168.not.i, label %if.end166.i.if.end174.i_crit_edge, label %do.end172.i

if.end166.i.if.end174.i_crit_edge:                ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end174.i

do.end172.i:                                      ; preds = %if.end166.i
  call void @__sanitizer_cov_trace_pc() #9
  %200 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.285) #10
  br label %if.end174.i

if.end174.i:                                      ; preds = %do.end172.i, %if.end166.i.if.end174.i_crit_edge
  %202 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %reg.i, align 4
  %and175.i = and i32 %203, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and175.i)
  %tobool176.not.i = icmp eq i32 %and175.i, 0
  br i1 %tobool176.not.i, label %if.end174.i.if.end182.i_crit_edge, label %do.end180.i

if.end174.i.if.end182.i_crit_edge:                ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182.i

do.end180.i:                                      ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #9
  %204 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %205, ptr noundef nonnull @.str.288) #10
  br label %if.end182.i

if.end182.i:                                      ; preds = %do.end180.i, %if.end174.i.if.end182.i_crit_edge
  %206 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %reg.i, align 4
  %and183.i = and i32 %207, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and183.i)
  %tobool184.not.i = icmp eq i32 %and183.i, 0
  br i1 %tobool184.not.i, label %if.end182.i.if.end190.i_crit_edge, label %do.end188.i

if.end182.i.if.end190.i_crit_edge:                ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end190.i

do.end188.i:                                      ; preds = %if.end182.i
  call void @__sanitizer_cov_trace_pc() #9
  %208 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %209, ptr noundef nonnull @.str.291) #10
  br label %if.end190.i

if.end190.i:                                      ; preds = %do.end188.i, %if.end182.i.if.end190.i_crit_edge
  %210 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %reg.i, align 4
  %and191.i = and i32 %211, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and191.i)
  %tobool192.not.i = icmp eq i32 %and191.i, 0
  br i1 %tobool192.not.i, label %if.end190.i.if.end198.i_crit_edge, label %do.end196.i

if.end190.i.if.end198.i_crit_edge:                ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end198.i

do.end196.i:                                      ; preds = %if.end190.i
  call void @__sanitizer_cov_trace_pc() #9
  %212 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %213, ptr noundef nonnull @.str.294) #10
  br label %if.end198.i

if.end198.i:                                      ; preds = %do.end196.i, %if.end190.i.if.end198.i_crit_edge
  %214 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %reg.i, align 4
  %and199.i = and i32 %215, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and199.i)
  %tobool200.not.i = icmp eq i32 %and199.i, 0
  br i1 %tobool200.not.i, label %if.end198.i.if.end206.i_crit_edge, label %do.end204.i

if.end198.i.if.end206.i_crit_edge:                ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end206.i

do.end204.i:                                      ; preds = %if.end198.i
  call void @__sanitizer_cov_trace_pc() #9
  %216 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %dev78.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %217, ptr noundef nonnull @.str.297) #10
  br label %if.end206.i

if.end206.i:                                      ; preds = %do.end204.i, %if.end198.i.if.end206.i_crit_edge
  %218 = ptrtoint ptr %dev_csr.i81 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %dev_csr.i81, align 8
  %add.ptr210.i = getelementptr i8, ptr %219, i32 56
  %220 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr210.i) #7, !srcloc !691
  %221 = call i32 @llvm.bswap.i32(i32 %220) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !744
  %222 = ptrtoint ptr %dev_csr.i81 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %dev_csr.i81, align 8
  %add.ptr217.i = getelementptr i8, ptr %223, i32 60
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr217.i) #7, !srcloc !691
  %225 = call i32 @llvm.bswap.i32(i32 %224) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !745
  %226 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %dev78.i, align 4
  %and225.i = and i32 %225, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i)
  %tobool226.not.i = icmp eq i32 %and225.i, 0
  %cond227.i = select i1 %tobool226.not.i, ptr @.str.221, ptr @.str.220
  %shr.i = lshr i32 %225, 22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %227, ptr noundef nonnull @.str.300, ptr noundef nonnull %cond227.i, i32 noundef %shr.i, i32 noundef %221, i32 noundef %225) #10
  %228 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %reg.i, align 4
  %and229.i = and i32 %229, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and229.i)
  %tobool230.not.i = icmp eq i32 %and229.i, 0
  br i1 %tobool230.not.i, label %if.end206.i.do.body244.i_crit_edge, label %do.end234.i

if.end206.i.do.body244.i_crit_edge:               ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body244.i

do.end234.i:                                      ; preds = %if.end206.i
  call void @__sanitizer_cov_trace_pc() #9
  %230 = ptrtoint ptr %dev78.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %dev78.i, align 4
  %232 = ptrtoint ptr %dev_csr.i81 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev_csr.i81, align 8
  %add.ptr239.i = getelementptr i8, ptr %233, i32 64
  %234 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr239.i) #7, !srcloc !691
  %235 = call i32 @llvm.bswap.i32(i32 %234) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !746
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %231, ptr noundef nonnull @.str.303, i32 noundef %235) #10
  br label %do.body244.i

do.body244.i:                                     ; preds = %do.end234.i, %if.end206.i.do.body244.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !747
  call void @arm_heavy_mb() #7
  %236 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %reg.i, align 4
  %238 = call i32 @llvm.bswap.i32(i32 %237) #7
  %239 = ptrtoint ptr %dev_csr.i81 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %dev_csr.i81, align 8
  %add.ptr248.i = getelementptr i8, ptr %240, i32 48
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr248.i, i32 %238) #7, !srcloc !690
  br label %xgene_edac_rb_report.exit

xgene_edac_rb_report.exit:                        ; preds = %do.body244.i, %rb_skip.i.xgene_edac_rb_report.exit_crit_edge, %if.end62.i.xgene_edac_rb_report.exit_crit_edge, %if.end56.i.xgene_edac_rb_report.exit_crit_edge, %if.then7.i.xgene_edac_rb_report.exit_crit_edge, %if.end.i.xgene_edac_rb_report.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #7
  br label %if.end14

if.end14:                                         ; preds = %xgene_edac_rb_report.exit, %if.end10.if.end14_crit_edge
  %and15 = and i32 %7, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end18_crit_edge, label %if.then17

if.end14.if.end18_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end14
  %241 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %pvt_info, align 4
  %dev_csr.i84 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %242, i32 0, i32 6
  %243 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr.i85 = getelementptr i8, ptr %244, i32 32
  %245 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i85) #7, !srcloc !691
  %246 = call i32 @llvm.bswap.i32(i32 %245) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !748
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %245)
  %tobool.not.i86 = icmp eq i32 %245, 0
  br i1 %tobool.not.i86, label %if.then17.chk_iob_axi0.i_crit_edge, label %do.end.i90

if.then17.chk_iob_axi0.i_crit_edge:               ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_iob_axi0.i

do.end.i90:                                       ; preds = %if.then17
  %dev.i87 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %247 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %248, ptr noundef nonnull @.str.305) #10
  %and.i88 = and i32 %246, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i88)
  %tobool2.not.i89 = icmp eq i32 %and.i88, 0
  br i1 %tobool2.not.i89, label %do.end.i90.if.end8.i94_crit_edge, label %do.end6.i91

do.end.i90.if.end8.i94_crit_edge:                 ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i94

do.end6.i91:                                      ; preds = %do.end.i90
  call void @__sanitizer_cov_trace_pc() #9
  %249 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %250, ptr noundef nonnull @.str.308) #10
  br label %if.end8.i94

if.end8.i94:                                      ; preds = %do.end6.i91, %do.end.i90.if.end8.i94_crit_edge
  %and9.i92 = and i32 %246, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i92)
  %tobool10.not.i93 = icmp eq i32 %and9.i92, 0
  br i1 %tobool10.not.i93, label %if.end8.i94.if.end16.i98_crit_edge, label %do.end14.i95

if.end8.i94.if.end16.i98_crit_edge:               ; preds = %if.end8.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16.i98

do.end14.i95:                                     ; preds = %if.end8.i94
  call void @__sanitizer_cov_trace_pc() #9
  %251 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %252, ptr noundef nonnull @.str.311) #10
  br label %if.end16.i98

if.end16.i98:                                     ; preds = %do.end14.i95, %if.end8.i94.if.end16.i98_crit_edge
  %and17.i96 = and i32 %246, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i96)
  %tobool18.not.i97 = icmp eq i32 %and17.i96, 0
  br i1 %tobool18.not.i97, label %if.end16.i98.if.end24.i102_crit_edge, label %do.end22.i99

if.end16.i98.if.end24.i102_crit_edge:             ; preds = %if.end16.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24.i102

do.end22.i99:                                     ; preds = %if.end16.i98
  call void @__sanitizer_cov_trace_pc() #9
  %253 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %254, ptr noundef nonnull @.str.314) #10
  br label %if.end24.i102

if.end24.i102:                                    ; preds = %do.end22.i99, %if.end16.i98.if.end24.i102_crit_edge
  %and25.i100 = and i32 %246, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i100)
  %tobool26.not.i101 = icmp eq i32 %and25.i100, 0
  br i1 %tobool26.not.i101, label %if.end24.i102.if.end32.i104_crit_edge, label %do.end30.i103

if.end24.i102.if.end32.i104_crit_edge:            ; preds = %if.end24.i102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32.i104

do.end30.i103:                                    ; preds = %if.end24.i102
  call void @__sanitizer_cov_trace_pc() #9
  %255 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %256, ptr noundef nonnull @.str.317) #10
  br label %if.end32.i104

if.end32.i104:                                    ; preds = %do.end30.i103, %if.end24.i102.if.end32.i104_crit_edge
  %and33.i = and i32 %246, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33.i)
  %tobool34.not.i = icmp eq i32 %and33.i, 0
  br i1 %tobool34.not.i, label %if.end32.i104.if.end40.i_crit_edge, label %do.end38.i

if.end32.i104.if.end40.i_crit_edge:               ; preds = %if.end32.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

do.end38.i:                                       ; preds = %if.end32.i104
  call void @__sanitizer_cov_trace_pc() #9
  %257 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %258, ptr noundef nonnull @.str.320) #10
  br label %if.end40.i

if.end40.i:                                       ; preds = %do.end38.i, %if.end32.i104.if.end40.i_crit_edge
  %and41.i = and i32 %246, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41.i)
  %tobool42.not.i = icmp eq i32 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end40.i.if.end48.i_crit_edge, label %do.end46.i

if.end40.i.if.end48.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

do.end46.i:                                       ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  %259 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.323) #10
  br label %if.end48.i

if.end48.i:                                       ; preds = %do.end46.i, %if.end40.i.if.end48.i_crit_edge
  %and49.i = and i32 %246, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %tobool50.not.i = icmp eq i32 %and49.i, 0
  br i1 %tobool50.not.i, label %if.end48.i.if.end56.i105_crit_edge, label %do.end54.i

if.end48.i.if.end56.i105_crit_edge:               ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56.i105

do.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  %261 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %262, ptr noundef nonnull @.str.326) #10
  br label %if.end56.i105

if.end56.i105:                                    ; preds = %do.end54.i, %if.end48.i.if.end56.i105_crit_edge
  %and57.i = and i32 %246, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i105.do.body65.i_crit_edge, label %do.end62.i

if.end56.i105.do.body65.i_crit_edge:              ; preds = %if.end56.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body65.i

do.end62.i:                                       ; preds = %if.end56.i105
  call void @__sanitizer_cov_trace_pc() #9
  %263 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %dev.i87, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %264, ptr noundef nonnull @.str.329) #10
  br label %do.body65.i

do.body65.i:                                      ; preds = %do.end62.i, %if.end56.i105.do.body65.i_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !749
  call void @arm_heavy_mb() #7
  %265 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr69.i = getelementptr i8, ptr %266, i32 32
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69.i, i32 %245) #7, !srcloc !690
  br label %chk_iob_axi0.i

chk_iob_axi0.i:                                   ; preds = %do.body65.i, %if.then17.chk_iob_axi0.i_crit_edge
  %267 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %dev_csr.i84, align 8
  %269 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %268) #7, !srcloc !691
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !750
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool77.not.i = icmp eq i32 %269, 0
  br i1 %tobool77.not.i, label %chk_iob_axi0.i.chk_iob_axi1.i_crit_edge, label %if.end79.i

chk_iob_axi0.i.chk_iob_axi1.i_crit_edge:          ; preds = %chk_iob_axi0.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chk_iob_axi1.i

if.end79.i:                                       ; preds = %chk_iob_axi0.i
  call void @__sanitizer_cov_trace_pc() #9
  %270 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr83.i = getelementptr i8, ptr %271, i32 8
  %272 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr83.i) #7, !srcloc !691
  %273 = call i32 @llvm.bswap.i32(i32 %272) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !751
  %274 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr90.i = getelementptr i8, ptr %275, i32 12
  %276 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr90.i) #7, !srcloc !691
  %277 = call i32 @llvm.bswap.i32(i32 %276) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !752
  %dev97.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %278 = ptrtoint ptr %dev97.i to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %dev97.i, align 4
  %280 = and i32 %269, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool99.not.i = icmp eq i32 %280, 0
  %cond.i106 = select i1 %tobool99.not.i, ptr @.str.47, ptr @.str.334
  %and100.i = and i32 %277, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100.i)
  %tobool101.not.i = icmp eq i32 %and100.i, 0
  %cond102.i = select i1 %tobool101.not.i, ptr @.str.221, ptr @.str.220
  %shr.i107 = lshr i32 %277, 22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %279, ptr noundef nonnull @.str.332, ptr noundef nonnull %cond.i106, ptr noundef nonnull %cond102.i, i32 noundef %shr.i107, i32 noundef %273, i32 noundef %277) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !753
  call void @arm_heavy_mb() #7
  %281 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load ptr, ptr %dev_csr.i84, align 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %269) #7, !srcloc !690
  br label %chk_iob_axi1.i

chk_iob_axi1.i:                                   ; preds = %if.end79.i, %chk_iob_axi0.i.chk_iob_axi1.i_crit_edge
  %283 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr112.i = getelementptr i8, ptr %284, i32 16
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr112.i) #7, !srcloc !691
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !754
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %tobool116.not.i = icmp eq i32 %285, 0
  br i1 %tobool116.not.i, label %chk_iob_axi1.i.if.end18_crit_edge, label %if.end118.i108

chk_iob_axi1.i.if.end18_crit_edge:                ; preds = %chk_iob_axi1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.end118.i108:                                   ; preds = %chk_iob_axi1.i
  call void @__sanitizer_cov_trace_pc() #9
  %286 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr122.i = getelementptr i8, ptr %287, i32 24
  %288 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr122.i) #7, !srcloc !691
  %289 = call i32 @llvm.bswap.i32(i32 %288) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !755
  %290 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr129.i = getelementptr i8, ptr %291, i32 28
  %292 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr129.i) #7, !srcloc !691
  %293 = call i32 @llvm.bswap.i32(i32 %292) #7
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !756
  %dev136.i = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %294 = ptrtoint ptr %dev136.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %dev136.i, align 4
  %296 = and i32 %285, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %296)
  %tobool138.not.i = icmp eq i32 %296, 0
  %cond139.i = select i1 %tobool138.not.i, ptr @.str.47, ptr @.str.334
  %and140.i = and i32 %293, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and140.i)
  %tobool141.not.i = icmp eq i32 %and140.i, 0
  %cond142.i = select i1 %tobool141.not.i, ptr @.str.221, ptr @.str.220
  %shr144.i = lshr i32 %293, 22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %295, ptr noundef nonnull @.str.336, ptr noundef nonnull %cond139.i, ptr noundef nonnull %cond142.i, i32 noundef %shr144.i, i32 noundef %289, i32 noundef %293) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !757
  call void @arm_heavy_mb() #7
  %297 = ptrtoint ptr %dev_csr.i84 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %dev_csr.i84, align 8
  %add.ptr149.i = getelementptr i8, ptr %298, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr149.i, i32 %285) #7, !srcloc !690
  br label %if.end18

if.end18:                                         ; preds = %if.end118.i108, %chk_iob_axi1.i.if.end18_crit_edge, %if.end14.if.end18_crit_edge
  br i1 %tobool4.not, label %if.end18.if.end22_crit_edge, label %do.end

if.end18.if.end22_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  %299 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %300, ptr noundef nonnull @.str.194) #10
  %ctl_name = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %301 = ptrtoint ptr %ctl_name to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load ptr, ptr %ctl_name, align 4
  call void @edac_device_handle_ce_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %302) #7
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.end18.if.end22_crit_edge
  br i1 %tobool6.not, label %if.end22.cleanup_crit_edge, label %if.end25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end22
  %version = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 7
  %303 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %version, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %304)
  %cmp = icmp eq i32 %304, 1
  %spec.select = select i1 %cmp, ptr @soc_mem_err_v1, ptr null
  %dev43 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 13
  br i1 %cmp, label %for.cond.preheader, label %do.end32

for.cond.preheader:                               ; preds = %if.end25
  %ctl_name44 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  br label %for.body

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %305 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %dev43, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %306, ptr noundef nonnull @.str.198, i32 noundef %18) #10
  %ctl_name34 = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 15
  %307 = ptrtoint ptr %ctl_name34 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %ctl_name34, align 4
  call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %308) #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0117 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0117
  %and37 = and i32 %shl, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %for.body.for.inc_crit_edge, label %do.end42

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end42:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %309 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %dev43, align 4
  %arrayidx = getelementptr ptr, ptr %spec.select, i32 %i.0117
  %311 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %arrayidx, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %310, ptr noundef nonnull @.str.201, ptr noundef %312) #10
  %313 = ptrtoint ptr %ctl_name44 to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load ptr, ptr %ctl_name44, align 4
  call void @edac_device_handle_ue_count(ptr noundef %edac_dev, i32 noundef 1, i32 noundef 0, i32 noundef 0, ptr noundef %314) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end42, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0117, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end32, %if.end22.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_handle_error(i32 noundef, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ce_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_handle_ue_count(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_alloc(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_mc_add_mc_with_groups(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_edac_mc_irq_ctl(ptr nocapture noundef readonly %mci, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %mci, i32 0, i32 26
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @edac_op_state to i32))
  %2 = load i32, ptr @edac_op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not = icmp eq i32 %2, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %edac = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edac, align 4
  %mc_lock = getelementptr inbounds %struct.xgene_edac, ptr %4, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mc_lock, i32 noundef 0) #7
  br i1 %enable, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.end
  %mcu_id = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %mcu_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %mcu_id, align 4
  %shl = shl nuw i32 1, %6
  %7 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edac, align 4
  %mc_registered_mask = getelementptr inbounds %struct.xgene_edac, ptr %8, i32 0, i32 15
  %9 = ptrtoint ptr %mc_registered_mask to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mc_registered_mask, align 4
  %or = or i32 %10, %shl
  store i32 %or, ptr %mc_registered_mask, align 4
  %11 = load ptr, ptr %edac, align 4
  %mc_registered_mask4 = getelementptr inbounds %struct.xgene_edac, ptr %11, i32 0, i32 15
  %12 = ptrtoint ptr %mc_registered_mask4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mc_registered_mask4, align 4
  %mc_active_mask = getelementptr inbounds %struct.xgene_edac, ptr %11, i32 0, i32 14
  %14 = ptrtoint ptr %mc_active_mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mc_active_mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp6 = icmp eq i32 %13, %15
  br i1 %cmp6, label %if.then7, label %if.then1.if.end10_crit_edge

if.then1.if.end10_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %lock.i = getelementptr inbounds %struct.xgene_edac, ptr %11, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %11, i32 0, i32 6
  %16 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !758
  %19 = and i32 %18, -269484033
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %22 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edac, align 4
  %lock.i56 = getelementptr inbounds %struct.xgene_edac, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i56) #7
  %pcp_csr.i57 = getelementptr inbounds %struct.xgene_edac, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pcp_csr.i57 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcp_csr.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i58) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !758
  %27 = and i32 %26, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %pcp_csr.i57 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcp_csr.i57, align 4
  %add.ptr3.i60 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i60, i32 %27) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i56) #7
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.then1.if.end10_crit_edge
  %mcu_csr = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mcu_csr, align 4
  %add.ptr = getelementptr i8, ptr %31, i32 272
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !760
  %33 = or i32 %32, 117571584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !761
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mcu_csr, align 4
  %add.ptr14 = getelementptr i8, ptr %35, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %33) #7, !srcloc !690
  br label %if.end34

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %mcu_csr17 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 4
  %36 = ptrtoint ptr %mcu_csr17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %mcu_csr17, align 4
  %add.ptr18 = getelementptr i8, ptr %37, i32 272
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !762
  %39 = and i32 %38, -117571585
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !763
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %mcu_csr17 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mcu_csr17, align 4
  %add.ptr26 = getelementptr i8, ptr %41, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %39) #7, !srcloc !690
  %42 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edac, align 4
  %lock.i61 = getelementptr inbounds %struct.xgene_edac, ptr %43, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i61) #7
  %pcp_csr.i62 = getelementptr inbounds %struct.xgene_edac, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %pcp_csr.i62 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pcp_csr.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %45, i32 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !764
  %47 = or i32 %46, 269484032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %48 = ptrtoint ptr %pcp_csr.i62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pcp_csr.i62, align 4
  %add.ptr3.i64 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i64, i32 %47) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i61) #7
  %50 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %edac, align 4
  %lock.i65 = getelementptr inbounds %struct.xgene_edac, ptr %51, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i65) #7
  %pcp_csr.i66 = getelementptr inbounds %struct.xgene_edac, ptr %51, i32 0, i32 6
  %52 = ptrtoint ptr %pcp_csr.i66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pcp_csr.i66, align 4
  %add.ptr.i67 = getelementptr i8, ptr %53, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !764
  %55 = or i32 %54, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %56 = ptrtoint ptr %pcp_csr.i66 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcp_csr.i66, align 4
  %add.ptr3.i69 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i69, i32 %55) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i65) #7
  %mcu_id29 = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %1, i32 0, i32 5
  %58 = ptrtoint ptr %mcu_id29 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mcu_id29, align 4
  %shl30 = shl nuw i32 1, %59
  %neg = xor i32 %shl30, -1
  %60 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %edac, align 4
  %mc_registered_mask32 = getelementptr inbounds %struct.xgene_edac, ptr %61, i32 0, i32 15
  %62 = ptrtoint ptr %mc_registered_mask32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mc_registered_mask32, align 4
  %and33 = and i32 %63, %neg
  store i32 %and33, ptr %mc_registered_mask32, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end10
  %64 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %edac, align 4
  %mc_lock36 = getelementptr inbounds %struct.xgene_edac, ptr %65, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %mc_lock36) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_remove_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_mc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_file_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_mc_err_inject_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.mem_ctl_info, ptr %1, i32 0, i32 26
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 8
  %mcu_csr = getelementptr inbounds %struct.xgene_edac_mc_ctx, ptr %3, i32 0, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mcu_csr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 792
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.1 = getelementptr i8, ptr %7, i32 856
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.1, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.2 = getelementptr i8, ptr %9, i32 920
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.2, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.3 = getelementptr i8, ptr %11, i32 984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.3, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.4 = getelementptr i8, ptr %13, i32 1048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.4, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %14 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.5 = getelementptr i8, ptr %15, i32 1112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.5, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.6 = getelementptr i8, ptr %17, i32 1176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.6, i32 251658240) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !765
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %mcu_csr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mcu_csr, align 4
  %add.ptr1.7 = getelementptr i8, ptr %19, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.7, i32 251658240) #7, !srcloc !690
  ret i32 %count
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_alloc_ctl_info(i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_alloc_index() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_edac_pmd_create_debugfs_nodes(ptr noundef %edac_dev) unnamed_addr #4 align 64 {
entry:
  %name = alloca [10 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %name) #7
  %edac = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %1, i32 0, i32 3
  %2 = call ptr @memset(ptr %name, i32 255, i32 10)
  %3 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edac, align 4
  %dfs = getelementptr inbounds %struct.xgene_edac, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %dfs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dfs, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %pmd = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pmd, align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 10, ptr noundef nonnull @.str.403, i32 noundef %8)
  %9 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edac, align 4
  %dfs3 = getelementptr inbounds %struct.xgene_edac, ptr %10, i32 0, i32 8
  %11 = ptrtoint ptr %dfs3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dfs3, align 4
  %call4 = call ptr @edac_debugfs_create_dir_at(ptr noundef nonnull %name, ptr noundef %12) #7
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.404, i16 noundef zeroext 128, ptr noundef nonnull %call4, ptr noundef %edac_dev, ptr noundef nonnull @xgene_edac_pmd_debug_inject_fops) #7
  %call9 = call ptr @edac_debugfs_create_file(ptr noundef nonnull @.str.405, i16 noundef zeroext 128, ptr noundef nonnull %call4, ptr noundef %edac_dev, ptr noundef getelementptr inbounds ([3 x %struct.file_operations], ptr @xgene_edac_pmd_debug_inject_fops, i32 0, i32 1)) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %name) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @edac_device_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_edac_pmd_hw_ctl(ptr nocapture noundef readonly %edac_dev, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 10
  %0 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %1)
  %cmp = icmp eq i32 %1, 514
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %edac = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edac, align 4
  %pmd = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %pmd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pmd, align 8
  %shl = shl nuw i32 1, %7
  %lock.i = getelementptr inbounds %struct.xgene_edac, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %enable, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %neg.i = xor i32 %shl, -1
  %and.i = and i32 %11, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %13 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %12) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %if.then7

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %11, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %16 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i22 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i22, i32 %15) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  br label %if.end9

if.end5:                                          ; preds = %entry
  br i1 %enable, label %if.end5.if.then7_crit_edge, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.end5.if.then7_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %if.end5.if.then7_crit_edge, %if.then1
  %18 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pvt_info, align 4
  %pmd_csr.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %19, i32 0, i32 5
  %20 = ptrtoint ptr %pmd_csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pmd_csr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %21, i32 917504
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !766
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 50790400) #7, !srcloc !690
  %version.i = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %19, i32 0, i32 7
  %22 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %version.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp.i = icmp sgt i32 %23, 1
  br i1 %cmp.i, label %do.body4.i, label %if.then7.xgene_edac_pmd_hw_cfg.exit_crit_edge

if.then7.xgene_edac_pmd_hw_cfg.exit_crit_edge:    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %xgene_edac_pmd_hw_cfg.exit

do.body4.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !767
  tail call void @arm_heavy_mb() #7
  %add.ptr7.i = getelementptr i8, ptr %21, i32 851984
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 419495936) #7, !srcloc !690
  br label %xgene_edac_pmd_hw_cfg.exit

xgene_edac_pmd_hw_cfg.exit:                       ; preds = %do.body4.i, %if.then7.xgene_edac_pmd_hw_cfg.exit_crit_edge
  %24 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pvt_info, align 4
  %pmd_csr.i24 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %pmd_csr.i24 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pmd_csr.i24, align 4
  %add.ptr1.i = getelementptr i8, ptr %27, i32 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !768
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 16973824) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !769
  tail call void @arm_heavy_mb() #7
  %add.ptr6.i = getelementptr i8, ptr %27, i32 983048
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 16973824) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !770
  tail call void @arm_heavy_mb() #7
  %add.ptr10.i = getelementptr i8, ptr %27, i32 983056
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i, i32 16842752) #7, !srcloc !690
  %28 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pvt_info, align 4
  %pmd_csr.i24.1 = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %pmd_csr.i24.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pmd_csr.i24.1, align 4
  %add.ptr1.i.1 = getelementptr i8, ptr %31, i32 2031616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !768
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.1, i32 16973824) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !769
  tail call void @arm_heavy_mb() #7
  %add.ptr6.i.1 = getelementptr i8, ptr %31, i32 2031624
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i.1, i32 16973824) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !770
  tail call void @arm_heavy_mb() #7
  %add.ptr10.i.1 = getelementptr i8, ptr %31, i32 2031632
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.i.1, i32 16842752) #7, !srcloc !690
  br label %if.end9

if.end9:                                          ; preds = %xgene_edac_pmd_hw_cfg.exit, %if.end5.if.end9_crit_edge, %if.else
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @edac_device_free_ctl_info(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_debugfs_create_dir_at(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_pmd_l1_inject_ctrl_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %pmd_csr = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pmd_csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !771
  tail call void @arm_heavy_mb() #7
  %add.ptr2 = getelementptr i8, ptr %5, i32 985092
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 83886080) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !772
  tail call void @arm_heavy_mb() #7
  %add.ptr6 = getelementptr i8, ptr %5, i32 985100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 83886080) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !773
  tail call void @arm_heavy_mb() #7
  %add.ptr10 = getelementptr i8, ptr %5, i32 985108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 83886080) #7, !srcloc !690
  %6 = ptrtoint ptr %pmd_csr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pmd_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !771
  tail call void @arm_heavy_mb() #7
  %add.ptr2.1 = getelementptr i8, ptr %7, i32 2033668
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.1, i32 83886080) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !772
  tail call void @arm_heavy_mb() #7
  %add.ptr6.1 = getelementptr i8, ptr %7, i32 2033676
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.1, i32 83886080) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !773
  tail call void @arm_heavy_mb() #7
  %add.ptr10.1 = getelementptr i8, ptr %7, i32 2033684
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10.1, i32 83886080) #7, !srcloc !690
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_pmd_l2_inject_ctrl_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  %pmd_csr = getelementptr inbounds %struct.xgene_edac_pmd_ctx, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %pmd_csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pmd_csr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !774
  tail call void @arm_heavy_mb() #7
  %add.ptr1 = getelementptr i8, ptr %5, i32 919556
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 251658240) #7, !srcloc !690
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_edac_l3_hw_init(ptr nocapture noundef readonly %edac_dev, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %dev_csr = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_csr, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !775
  %5 = or i32 %4, 50331648
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 10
  %7 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %8)
  %cmp = icmp eq i32 %8, 514
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  br i1 %enable, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %or3 = or i32 %6, 12
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %6, -13
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then2, %entry.do.body_crit_edge
  %val.0 = phi i32 [ %or3, %if.then2 ], [ %and, %if.else ], [ %6, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !776
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  %10 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_csr, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %9) #7, !srcloc !690
  %12 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %13)
  %cmp8 = icmp eq i32 %13, 514
  br i1 %cmp8, label %if.then9, label %do.body.if.end17_crit_edge

do.body.if.end17_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then9:                                         ; preds = %do.body
  %edac = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %edac, align 4
  %lock.i = getelementptr inbounds %struct.xgene_edac, ptr %15, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %enable, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %19 = and i32 %18, -536870913
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %19) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %22 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %edac, align 4
  %lock.i29 = getelementptr inbounds %struct.xgene_edac, ptr %23, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i29) #7
  %pcp_csr.i30 = getelementptr inbounds %struct.xgene_edac, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %pcp_csr.i30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pcp_csr.i30, align 4
  %add.ptr.i31 = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i31) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !758
  %27 = and i32 %26, -33554433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %28 = ptrtoint ptr %pcp_csr.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pcp_csr.i30, align 4
  %add.ptr3.i33 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i33, i32 %27) #7, !srcloc !690
  br label %if.end17.sink.split

if.else13:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %30 = or i32 %18, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i37 = getelementptr i8, ptr %32, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i37, i32 %30) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %33 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %edac, align 4
  %lock.i38 = getelementptr inbounds %struct.xgene_edac, ptr %34, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i38) #7
  %pcp_csr.i39 = getelementptr inbounds %struct.xgene_edac, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %pcp_csr.i39 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pcp_csr.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !764
  %38 = or i32 %37, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %39 = ptrtoint ptr %pcp_csr.i39 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pcp_csr.i39, align 4
  %add.ptr3.i42 = getelementptr i8, ptr %40, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i42, i32 %38) #7, !srcloc !690
  br label %if.end17.sink.split

if.end17.sink.split:                              ; preds = %if.else13, %if.then11
  %lock.i29.sink = phi ptr [ %lock.i29, %if.then11 ], [ %lock.i38, %if.else13 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i29.sink) #7
  br label %if.end17

if.end17:                                         ; preds = %if.end17.sink.split, %do.body.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgene_edac_l3_inject_ctrl_write(ptr nocapture noundef readonly %file, ptr nocapture noundef readnone %data, i32 noundef returned %count, ptr nocapture noundef readnone %ppos) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %1, i32 0, i32 17
  %2 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pvt_info, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !777
  tail call void @arm_heavy_mb() #7
  %dev_csr = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_csr, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !690
  ret i32 %count
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xgene_edac_soc_hw_init(ptr nocapture noundef readonly %edac_dev, i1 noundef zeroext %enable) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %pvt_info = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 17
  %0 = ptrtoint ptr %pvt_info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pvt_info, align 4
  %op_state = getelementptr inbounds %struct.edac_device_ctl_info, ptr %edac_dev, i32 0, i32 10
  %2 = ptrtoint ptr %op_state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %op_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 514, i32 %3)
  %cmp = icmp eq i32 %3, 514
  br i1 %cmp, label %if.then, label %entry.if.end23_crit_edge

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then:                                          ; preds = %entry
  %edac = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edac, align 4
  %lock.i = getelementptr inbounds %struct.xgene_edac, ptr %5, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i) #7
  %pcp_csr.i = getelementptr inbounds %struct.xgene_edac, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %enable, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %9 = and i32 %8, -983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %11, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %9) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %12 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edac, align 4
  %lock.i36 = getelementptr inbounds %struct.xgene_edac, ptr %13, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i36) #7
  %pcp_csr.i37 = getelementptr inbounds %struct.xgene_edac, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %pcp_csr.i37 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pcp_csr.i37, align 4
  %add.ptr.i38 = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !758
  %17 = and i32 %16, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !759
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %pcp_csr.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pcp_csr.i37, align 4
  %add.ptr3.i40 = getelementptr i8, ptr %19, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i40, i32 %17) #7, !srcloc !690
  br label %do.body

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %20 = or i32 %8, 983040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %pcp_csr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pcp_csr.i, align 4
  %add.ptr3.i44 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i44, i32 %20) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i) #7
  %23 = ptrtoint ptr %edac to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %edac, align 4
  %lock.i45 = getelementptr inbounds %struct.xgene_edac, ptr %24, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i45) #7
  %pcp_csr.i46 = getelementptr inbounds %struct.xgene_edac, ptr %24, i32 0, i32 6
  %25 = ptrtoint ptr %pcp_csr.i46 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcp_csr.i46, align 4
  %add.ptr.i47 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i47) #7, !srcloc !691
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !764
  %28 = or i32 %27, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %29 = ptrtoint ptr %pcp_csr.i46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pcp_csr.i46, align 4
  %add.ptr3.i49 = getelementptr i8, ptr %30, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i49, i32 %28) #7, !srcloc !690
  br label %do.body

do.body:                                          ; preds = %if.else, %if.then1
  %lock.i36.sink = phi ptr [ %lock.i36, %if.then1 ], [ %lock.i45, %if.else ]
  tail call void @_raw_spin_unlock(ptr noundef %lock.i36.sink) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !778
  tail call void @arm_heavy_mb() #7
  %not.enable = xor i1 %enable, true
  %cond = sext i1 %not.enable to i32
  %31 = tail call i32 @llvm.bswap.i32(i32 %cond)
  %dev_csr = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev_csr, align 8
  %add.ptr = getelementptr i8, ptr %33, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %31) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !779
  tail call void @arm_heavy_mb() #7
  %34 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev_csr, align 8
  %add.ptr12 = getelementptr i8, ptr %35, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %31) #7, !srcloc !690
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !780
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %dev_csr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev_csr, align 8
  %add.ptr19 = getelementptr i8, ptr %37, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %31) #7, !srcloc !690
  %edac20 = getelementptr inbounds %struct.xgene_edac_dev_ctx, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %edac20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %edac20, align 4
  %lock.i50 = getelementptr inbounds %struct.xgene_edac, ptr %39, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %lock.i50) #7
  %pcp_csr.i51 = getelementptr inbounds %struct.xgene_edac, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %pcp_csr.i51 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pcp_csr.i51, align 4
  %add.ptr.i52 = getelementptr i8, ptr %41, i32 20
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i52) #7, !srcloc !691
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !764
  %or.i53 = or i32 %43, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !689
  tail call void @arm_heavy_mb() #7
  %44 = tail call i32 @llvm.bswap.i32(i32 %or.i53) #7
  %45 = ptrtoint ptr %pcp_csr.i51 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pcp_csr.i51, align 4
  %add.ptr3.i54 = getelementptr i8, ptr %46, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i54, i32 %44) #7, !srcloc !690
  tail call void @_raw_spin_unlock(ptr noundef %lock.i50) #7
  br label %if.end23

if.end23:                                         ; preds = %do.body, %entry.if.end23_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_mc_del_mc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @edac_device_del_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 345)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 345)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !20, !21, !22, !24, !26, !28, !29, !31, !32, !34, !36, !37, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !95, !96, !97, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !183, !184, !186, !187, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !227, !229, !230, !231, !233, !234, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !270, !272, !273, !274, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288, !289, !290, !292, !293, !294, !296, !297, !298, !300, !301, !302, !304, !305, !306, !307, !308, !310, !311, !312, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !332, !333, !335, !336, !337, !339, !340, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !364, !366, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !384, !386, !387, !388, !390, !391, !392, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !424, !426, !427, !428, !430, !431, !432, !434, !435, !436, !438, !439, !440, !442, !443, !444, !446, !447, !448, !450, !451, !452, !454, !455, !456, !458, !459, !460, !461, !463, !464, !465, !467, !468, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !487, !488, !489, !491, !492, !493, !495, !496, !497, !498, !500, !501, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !565, !566, !567, !569, !570, !571, !573, !575, !576, !577, !579, !581, !583, !584, !585, !587, !588, !589, !591, !593, !595, !597, !598, !599, !600, !602, !604, !606, !608, !609, !610, !612, !613, !614, !616, !617, !618, !620, !621, !622, !624, !626, !628, !630, !632, !633, !634, !635, !637, !638, !639, !641, !643, !645, !646, !647, !649, !650, !651, !653, !655, !657, !659, !660, !661, !662, !664, !665, !666, !668, !670, !672, !673, !675, !676, !677, !679}
!llvm.module.flags = !{!680, !681, !682, !683, !684, !685, !686, !687}
!llvm.ident = !{!688}

!0 = !{ptr @__initcall__kmod_xgene_edac__236_2029_xgene_edac_init6, !1, !"__initcall__kmod_xgene_edac__236_2029_xgene_edac_init6", i1 false, i1 false}
!1 = !{!"../drivers/edac/xgene_edac.c", i32 2029, i32 1}
!2 = !{ptr @__exitcall_xgene_edac_exit, !3, !"__exitcall_xgene_edac_exit", i1 false, i1 false}
!3 = !{!"../drivers/edac/xgene_edac.c", i32 2035, i32 1}
!4 = !{ptr @__UNIQUE_ID_file237, !5, !"__UNIQUE_ID_file237", i1 false, i1 false}
!5 = !{!"../drivers/edac/xgene_edac.c", i32 2037, i32 1}
!6 = !{ptr @__UNIQUE_ID_license238, !5, !"__UNIQUE_ID_license238", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author239, !8, !"__UNIQUE_ID_author239", i1 false, i1 false}
!8 = !{!"../drivers/edac/xgene_edac.c", i32 2038, i32 1}
!9 = !{ptr @__UNIQUE_ID_description240, !10, !"__UNIQUE_ID_description240", i1 false, i1 false}
!10 = !{!"../drivers/edac/xgene_edac.c", i32 2039, i32 1}
!11 = !{ptr @__param_edac_op_state, !12, !"__param_edac_op_state", i1 false, i1 false}
!12 = !{!"../drivers/edac/xgene_edac.c", i32 2040, i32 1}
!13 = !{ptr @__UNIQUE_ID_edac_op_statetype241, !12, !"__UNIQUE_ID_edac_op_statetype241", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_edac_op_state242, !15, !"__UNIQUE_ID_edac_op_state242", i1 false, i1 false}
!15 = !{!"../drivers/edac/xgene_edac.c", i32 2041, i32 1}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/edac/xgene_edac.c", i32 2019, i32 3}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @xgene_edac_init._entry, !17, !"_entry", i1 false, i1 false}
!21 = !{ptr @xgene_edac_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/edac/xgene_edac.c", i32 1998, i32 11}
!24 = !{ptr @xgene_edac_driver, !25, !"xgene_edac_driver", i1 false, i1 false}
!25 = !{!"../drivers/edac/xgene_edac.c", i32 1994, i32 31}
!26 = !{ptr @xgene_edac_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/edac/xgene_edac.c", i32 1861, i32 2}
!28 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xgene_edac_probe.__key.5, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/edac/xgene_edac.c", i32 1862, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/edac/xgene_edac.c", i32 1865, i32 8}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/edac/xgene_edac.c", i32 1867, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @xgene_edac_probe._entry, !35, !"_entry", i1 false, i1 false}
!40 = !{ptr @xgene_edac_probe._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/edac/xgene_edac.c", i32 1873, i32 9}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/edac/xgene_edac.c", i32 1875, i32 3}
!45 = !{ptr @xgene_edac_probe._entry.13, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @xgene_edac_probe._entry_ptr.15, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/edac/xgene_edac.c", i32 1881, i32 9}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/edac/xgene_edac.c", i32 1883, i32 3}
!51 = !{ptr @xgene_edac_probe._entry.17, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @xgene_edac_probe._entry_ptr.19, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/edac/xgene_edac.c", i32 1888, i32 10}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/edac/xgene_edac.c", i32 1890, i32 3}
!57 = !{ptr @xgene_edac_probe._entry.21, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @xgene_edac_probe._entry_ptr.23, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/edac/xgene_edac.c", i32 1900, i32 14}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/edac/xgene_edac.c", i32 1902, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @xgene_edac_probe._entry.25, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @xgene_edac_probe._entry_ptr.28, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/edac/xgene_edac.c", i32 1909, i32 3}
!68 = !{ptr @xgene_edac_probe._entry.29, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @xgene_edac_probe._entry_ptr.31, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/edac/xgene_edac.c", i32 1921, i32 5}
!72 = !{ptr @xgene_edac_probe._entry.32, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @xgene_edac_probe._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/edac/xgene_edac.c", i32 1929, i32 5}
!76 = !{ptr @xgene_edac_probe._entry.35, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @xgene_edac_probe._entry_ptr.37, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/edac/xgene_edac.c", i32 1941, i32 38}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/edac/xgene_edac.c", i32 1943, i32 38}
!82 = !{ptr @.str.40, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/edac/xgene_edac.c", i32 1945, i32 38}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/edac/xgene_edac.c", i32 1947, i32 38}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/edac/xgene_edac.c", i32 1949, i32 38}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/edac/xgene_edac.c", i32 1951, i32 38}
!90 = !{ptr @.str.44, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/edac/xgene_edac.c", i32 1953, i32 38}
!92 = !{ptr @.str.45, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/edac/xgene_edac.c", i32 199, i32 4}
!94 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @xgene_edac_mc_check._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @xgene_edac_mc_check._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/edac/xgene_edac.c", i32 203, i32 42}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/edac/xgene_edac.c", i32 214, i32 4}
!101 = !{ptr @xgene_edac_mc_check._entry.48, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @xgene_edac_mc_check._entry_ptr.50, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/edac/xgene_edac.c", i32 237, i32 4}
!105 = !{ptr @xgene_edac_mc_check._entry.51, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @xgene_edac_mc_check._entry_ptr.53, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/edac/xgene_edac.c", i32 240, i32 4}
!109 = !{ptr @xgene_edac_mc_check._entry.54, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @xgene_edac_mc_check._entry_ptr.56, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.57, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/edac/xgene_edac.c", i32 531, i32 2}
!113 = !{ptr @.str.58, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @xgene_edac_pmd_l1_check._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.60, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/edac/xgene_edac.c", i32 538, i32 3}
!118 = !{ptr @xgene_edac_pmd_l1_check._entry.59, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.61, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.63, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/edac/xgene_edac.c", i32 540, i32 3}
!122 = !{ptr @xgene_edac_pmd_l1_check._entry.62, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.64, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.66, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/edac/xgene_edac.c", i32 543, i32 3}
!126 = !{ptr @xgene_edac_pmd_l1_check._entry.65, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.67, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.69, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/edac/xgene_edac.c", i32 546, i32 3}
!130 = !{ptr @xgene_edac_pmd_l1_check._entry.68, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.70, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.72, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/edac/xgene_edac.c", i32 549, i32 3}
!134 = !{ptr @xgene_edac_pmd_l1_check._entry.71, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.73, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.75, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/edac/xgene_edac.c", i32 553, i32 3}
!138 = !{ptr @xgene_edac_pmd_l1_check._entry.74, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.76, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.78, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/edac/xgene_edac.c", i32 556, i32 3}
!142 = !{ptr @xgene_edac_pmd_l1_check._entry.77, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.81, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/edac/xgene_edac.c", i32 571, i32 2}
!146 = !{ptr @xgene_edac_pmd_l1_check._entry.80, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.82, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @xgene_edac_pmd_l1_check._entry.83, !149, !"_entry", i1 false, i1 false}
!149 = !{!"../drivers/edac/xgene_edac.c", i32 578, i32 3}
!150 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.84, !149, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @xgene_edac_pmd_l1_check._entry.85, !152, !"_entry", i1 false, i1 false}
!152 = !{!"../drivers/edac/xgene_edac.c", i32 580, i32 3}
!153 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.86, !152, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.88, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/edac/xgene_edac.c", i32 583, i32 3}
!156 = !{ptr @xgene_edac_pmd_l1_check._entry.87, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.89, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.91, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/edac/xgene_edac.c", i32 586, i32 3}
!160 = !{ptr @xgene_edac_pmd_l1_check._entry.90, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.92, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.94, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/edac/xgene_edac.c", i32 589, i32 3}
!164 = !{ptr @xgene_edac_pmd_l1_check._entry.93, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.95, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.97, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/edac/xgene_edac.c", i32 592, i32 3}
!168 = !{ptr @xgene_edac_pmd_l1_check._entry.96, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.98, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.100, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/edac/xgene_edac.c", i32 595, i32 3}
!172 = !{ptr @xgene_edac_pmd_l1_check._entry.99, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.101, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.103, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/edac/xgene_edac.c", i32 599, i32 3}
!176 = !{ptr @xgene_edac_pmd_l1_check._entry.102, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.104, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.106, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/edac/xgene_edac.c", i32 615, i32 2}
!180 = !{ptr @xgene_edac_pmd_l1_check._entry.105, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.107, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.108, !179, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.109, !179, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @xgene_edac_pmd_l1_check._entry.110, !185, !"_entry", i1 false, i1 false}
!185 = !{!"../drivers/edac/xgene_edac.c", i32 623, i32 3}
!186 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.111, !185, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @xgene_edac_pmd_l1_check._entry.112, !188, !"_entry", i1 false, i1 false}
!188 = !{!"../drivers/edac/xgene_edac.c", i32 625, i32 3}
!189 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.113, !188, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.115, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/edac/xgene_edac.c", i32 628, i32 3}
!192 = !{ptr @xgene_edac_pmd_l1_check._entry.114, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.116, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.118, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/edac/xgene_edac.c", i32 631, i32 3}
!196 = !{ptr @xgene_edac_pmd_l1_check._entry.117, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.119, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.121, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/edac/xgene_edac.c", i32 634, i32 3}
!200 = !{ptr @xgene_edac_pmd_l1_check._entry.120, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.122, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.124, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/edac/xgene_edac.c", i32 637, i32 3}
!204 = !{ptr @xgene_edac_pmd_l1_check._entry.123, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.125, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.127, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/edac/xgene_edac.c", i32 640, i32 3}
!208 = !{ptr @xgene_edac_pmd_l1_check._entry.126, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.128, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.130, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/edac/xgene_edac.c", i32 643, i32 3}
!212 = !{ptr @xgene_edac_pmd_l1_check._entry.129, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.131, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.133, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/edac/xgene_edac.c", i32 646, i32 3}
!216 = !{ptr @xgene_edac_pmd_l1_check._entry.132, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.134, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.136, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/edac/xgene_edac.c", i32 649, i32 3}
!220 = !{ptr @xgene_edac_pmd_l1_check._entry.135, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @xgene_edac_pmd_l1_check._entry_ptr.137, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.138, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/edac/xgene_edac.c", i32 675, i32 2}
!224 = !{ptr @.str.139, !223, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @xgene_edac_pmd_l2_check._entry, !223, !"_entry", i1 false, i1 false}
!226 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr, !223, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.141, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/edac/xgene_edac.c", i32 678, i32 2}
!229 = !{ptr @xgene_edac_pmd_l2_check._entry.140, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.142, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @xgene_edac_pmd_l2_check._entry.143, !232, !"_entry", i1 false, i1 false}
!232 = !{!"../drivers/edac/xgene_edac.c", i32 687, i32 3}
!233 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.144, !232, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @xgene_edac_pmd_l2_check._entry.145, !235, !"_entry", i1 false, i1 false}
!235 = !{!"../drivers/edac/xgene_edac.c", i32 689, i32 3}
!236 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.146, !235, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.148, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/edac/xgene_edac.c", i32 691, i32 3}
!239 = !{ptr @xgene_edac_pmd_l2_check._entry.147, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.149, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.151, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/edac/xgene_edac.c", i32 693, i32 3}
!243 = !{ptr @xgene_edac_pmd_l2_check._entry.150, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.152, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.154, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/edac/xgene_edac.c", i32 697, i32 3}
!247 = !{ptr @xgene_edac_pmd_l2_check._entry.153, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.155, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.157, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/edac/xgene_edac.c", i32 700, i32 3}
!251 = !{ptr @xgene_edac_pmd_l2_check._entry.156, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.158, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.160, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/edac/xgene_edac.c", i32 703, i32 3}
!255 = !{ptr @xgene_edac_pmd_l2_check._entry.159, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.161, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.163, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/edac/xgene_edac.c", i32 706, i32 3}
!259 = !{ptr @xgene_edac_pmd_l2_check._entry.162, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.164, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.166, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/edac/xgene_edac.c", i32 727, i32 3}
!263 = !{ptr @xgene_edac_pmd_l2_check._entry.165, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @xgene_edac_pmd_l2_check._entry_ptr.167, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.168, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/edac/xgene_edac.c", i32 1066, i32 3}
!267 = !{ptr @.str.169, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @xgene_edac_l3_check._entry, !266, !"_entry", i1 false, i1 false}
!269 = !{ptr @xgene_edac_l3_check._entry_ptr, !266, !"_entry_ptr", i1 false, i1 false}
!270 = !{ptr @.str.171, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/edac/xgene_edac.c", i32 1068, i32 3}
!272 = !{ptr @xgene_edac_l3_check._entry.170, !271, !"_entry", i1 false, i1 false}
!273 = !{ptr @xgene_edac_l3_check._entry_ptr.172, !271, !"_entry_ptr", i1 false, i1 false}
!274 = !{ptr @.str.174, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/edac/xgene_edac.c", i32 1074, i32 3}
!276 = !{ptr @xgene_edac_l3_check._entry.173, !275, !"_entry", i1 false, i1 false}
!277 = !{ptr @xgene_edac_l3_check._entry_ptr.175, !275, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.177, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/edac/xgene_edac.c", i32 1076, i32 3}
!280 = !{ptr @xgene_edac_l3_check._entry.176, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @xgene_edac_l3_check._entry_ptr.178, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.180, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/edac/xgene_edac.c", i32 1079, i32 3}
!284 = !{ptr @xgene_edac_l3_check._entry.179, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @xgene_edac_l3_check._entry_ptr.181, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @.str.183, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/edac/xgene_edac.c", i32 1081, i32 3}
!288 = !{ptr @xgene_edac_l3_check._entry.182, !287, !"_entry", i1 false, i1 false}
!289 = !{ptr @xgene_edac_l3_check._entry_ptr.184, !287, !"_entry_ptr", i1 false, i1 false}
!290 = !{ptr @.str.186, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/edac/xgene_edac.c", i32 1085, i32 3}
!292 = !{ptr @xgene_edac_l3_check._entry.185, !291, !"_entry", i1 false, i1 false}
!293 = !{ptr @xgene_edac_l3_check._entry_ptr.187, !291, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.189, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/edac/xgene_edac.c", i32 1093, i32 2}
!296 = !{ptr @xgene_edac_l3_check._entry.188, !295, !"_entry", i1 false, i1 false}
!297 = !{ptr @xgene_edac_l3_check._entry_ptr.190, !295, !"_entry_ptr", i1 false, i1 false}
!298 = !{ptr @.str.192, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/edac/xgene_edac.c", i32 1096, i32 2}
!300 = !{ptr @xgene_edac_l3_check._entry.191, !299, !"_entry", i1 false, i1 false}
!301 = !{ptr @xgene_edac_l3_check._entry_ptr.193, !299, !"_entry_ptr", i1 false, i1 false}
!302 = !{ptr @.str.194, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/edac/xgene_edac.c", i32 1661, i32 3}
!304 = !{ptr @.str.195, !303, !"<string literal>", i1 false, i1 false}
!305 = !{ptr @.str.196, !303, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @xgene_edac_soc_check._entry, !303, !"_entry", i1 false, i1 false}
!307 = !{ptr @xgene_edac_soc_check._entry_ptr, !303, !"_entry_ptr", i1 false, i1 false}
!308 = !{ptr @.str.198, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/edac/xgene_edac.c", i32 1671, i32 3}
!310 = !{ptr @xgene_edac_soc_check._entry.197, !309, !"_entry", i1 false, i1 false}
!311 = !{ptr @xgene_edac_soc_check._entry_ptr.199, !309, !"_entry_ptr", i1 false, i1 false}
!312 = !{ptr @.str.201, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/edac/xgene_edac.c", i32 1678, i32 4}
!314 = !{ptr @xgene_edac_soc_check._entry.200, !313, !"_entry", i1 false, i1 false}
!315 = !{ptr @xgene_edac_soc_check._entry_ptr.202, !313, !"_entry_ptr", i1 false, i1 false}
!316 = !{ptr @.str.203, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/edac/xgene_edac.c", i32 1400, i32 2}
!318 = !{ptr @.str.204, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @xgene_edac_iob_gic_report._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @xgene_edac_iob_gic_report._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.206, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/edac/xgene_edac.c", i32 1402, i32 3}
!323 = !{ptr @xgene_edac_iob_gic_report._entry.205, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.207, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.209, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/edac/xgene_edac.c", i32 1404, i32 3}
!327 = !{ptr @xgene_edac_iob_gic_report._entry.208, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.210, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @.str.212, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/edac/xgene_edac.c", i32 1406, i32 3}
!331 = !{ptr @xgene_edac_iob_gic_report._entry.211, !330, !"_entry", i1 false, i1 false}
!332 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.213, !330, !"_entry_ptr", i1 false, i1 false}
!333 = !{ptr @.str.215, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/edac/xgene_edac.c", i32 1408, i32 3}
!335 = !{ptr @xgene_edac_iob_gic_report._entry.214, !334, !"_entry", i1 false, i1 false}
!336 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.216, !334, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.218, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/edac/xgene_edac.c", i32 1410, i32 2}
!339 = !{ptr @xgene_edac_iob_gic_report._entry.217, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.219, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.220, !338, !"<string literal>", i1 false, i1 false}
!342 = !{ptr @.str.221, !338, !"<string literal>", i1 false, i1 false}
!343 = !{ptr @.str.223, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/edac/xgene_edac.c", i32 1423, i32 3}
!345 = !{ptr @xgene_edac_iob_gic_report._entry.222, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.224, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.226, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/edac/xgene_edac.c", i32 1432, i32 3}
!349 = !{ptr @xgene_edac_iob_gic_report._entry.225, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.227, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.229, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/edac/xgene_edac.c", i32 1444, i32 3}
!353 = !{ptr @xgene_edac_iob_gic_report._entry.228, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.230, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.232, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/edac/xgene_edac.c", i32 1453, i32 3}
!357 = !{ptr @xgene_edac_iob_gic_report._entry.231, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @xgene_edac_iob_gic_report._entry_ptr.233, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.234, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/edac/xgene_edac.c", i32 1486, i32 3}
!361 = !{ptr @.str.235, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @xgene_edac_rb_report._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @xgene_edac_rb_report._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.237, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/edac/xgene_edac.c", i32 1491, i32 4}
!366 = !{ptr @xgene_edac_rb_report._entry.236, !365, !"_entry", i1 false, i1 false}
!367 = !{ptr @xgene_edac_rb_report._entry_ptr.238, !365, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.240, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/edac/xgene_edac.c", i32 1495, i32 4}
!370 = !{ptr @xgene_edac_rb_report._entry.239, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @xgene_edac_rb_report._entry_ptr.241, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.243, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/edac/xgene_edac.c", i32 1499, i32 4}
!374 = !{ptr @xgene_edac_rb_report._entry.242, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @xgene_edac_rb_report._entry_ptr.244, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.246, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/edac/xgene_edac.c", i32 1503, i32 4}
!378 = !{ptr @xgene_edac_rb_report._entry.245, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @xgene_edac_rb_report._entry_ptr.247, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.249, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/edac/xgene_edac.c", i32 1518, i32 2}
!382 = !{ptr @xgene_edac_rb_report._entry.248, !381, !"_entry", i1 false, i1 false}
!383 = !{ptr @xgene_edac_rb_report._entry_ptr.250, !381, !"_entry_ptr", i1 false, i1 false}
!384 = !{ptr @.str.252, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/edac/xgene_edac.c", i32 1520, i32 3}
!386 = !{ptr @xgene_edac_rb_report._entry.251, !385, !"_entry", i1 false, i1 false}
!387 = !{ptr @xgene_edac_rb_report._entry_ptr.253, !385, !"_entry_ptr", i1 false, i1 false}
!388 = !{ptr @.str.255, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/edac/xgene_edac.c", i32 1522, i32 3}
!390 = !{ptr @xgene_edac_rb_report._entry.254, !389, !"_entry", i1 false, i1 false}
!391 = !{ptr @xgene_edac_rb_report._entry_ptr.256, !389, !"_entry_ptr", i1 false, i1 false}
!392 = !{ptr @.str.258, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/edac/xgene_edac.c", i32 1525, i32 3}
!394 = !{ptr @xgene_edac_rb_report._entry.257, !393, !"_entry", i1 false, i1 false}
!395 = !{ptr @xgene_edac_rb_report._entry_ptr.259, !393, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.261, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/edac/xgene_edac.c", i32 1527, i32 3}
!398 = !{ptr @xgene_edac_rb_report._entry.260, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @xgene_edac_rb_report._entry_ptr.262, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.264, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/edac/xgene_edac.c", i32 1530, i32 3}
!402 = !{ptr @xgene_edac_rb_report._entry.263, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @xgene_edac_rb_report._entry_ptr.265, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.267, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/edac/xgene_edac.c", i32 1532, i32 3}
!406 = !{ptr @xgene_edac_rb_report._entry.266, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @xgene_edac_rb_report._entry_ptr.268, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.270, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/edac/xgene_edac.c", i32 1535, i32 3}
!410 = !{ptr @xgene_edac_rb_report._entry.269, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @xgene_edac_rb_report._entry_ptr.271, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.273, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/edac/xgene_edac.c", i32 1537, i32 3}
!414 = !{ptr @xgene_edac_rb_report._entry.272, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @xgene_edac_rb_report._entry_ptr.274, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.276, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/edac/xgene_edac.c", i32 1539, i32 3}
!418 = !{ptr @xgene_edac_rb_report._entry.275, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @xgene_edac_rb_report._entry_ptr.277, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @.str.279, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/edac/xgene_edac.c", i32 1541, i32 3}
!422 = !{ptr @xgene_edac_rb_report._entry.278, !421, !"_entry", i1 false, i1 false}
!423 = !{ptr @xgene_edac_rb_report._entry_ptr.280, !421, !"_entry_ptr", i1 false, i1 false}
!424 = !{ptr @.str.282, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/edac/xgene_edac.c", i32 1543, i32 3}
!426 = !{ptr @xgene_edac_rb_report._entry.281, !425, !"_entry", i1 false, i1 false}
!427 = !{ptr @xgene_edac_rb_report._entry_ptr.283, !425, !"_entry_ptr", i1 false, i1 false}
!428 = !{ptr @.str.285, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/edac/xgene_edac.c", i32 1546, i32 3}
!430 = !{ptr @xgene_edac_rb_report._entry.284, !429, !"_entry", i1 false, i1 false}
!431 = !{ptr @xgene_edac_rb_report._entry_ptr.286, !429, !"_entry_ptr", i1 false, i1 false}
!432 = !{ptr @.str.288, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/edac/xgene_edac.c", i32 1549, i32 3}
!434 = !{ptr @xgene_edac_rb_report._entry.287, !433, !"_entry", i1 false, i1 false}
!435 = !{ptr @xgene_edac_rb_report._entry_ptr.289, !433, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @.str.291, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/edac/xgene_edac.c", i32 1552, i32 3}
!438 = !{ptr @xgene_edac_rb_report._entry.290, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @xgene_edac_rb_report._entry_ptr.292, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.294, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/edac/xgene_edac.c", i32 1555, i32 3}
!442 = !{ptr @xgene_edac_rb_report._entry.293, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @xgene_edac_rb_report._entry_ptr.295, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.297, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/edac/xgene_edac.c", i32 1558, i32 3}
!446 = !{ptr @xgene_edac_rb_report._entry.296, !445, !"_entry", i1 false, i1 false}
!447 = !{ptr @xgene_edac_rb_report._entry_ptr.298, !445, !"_entry_ptr", i1 false, i1 false}
!448 = !{ptr @.str.300, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/edac/xgene_edac.c", i32 1563, i32 2}
!450 = !{ptr @xgene_edac_rb_report._entry.299, !449, !"_entry", i1 false, i1 false}
!451 = !{ptr @xgene_edac_rb_report._entry_ptr.301, !449, !"_entry_ptr", i1 false, i1 false}
!452 = !{ptr @.str.303, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/edac/xgene_edac.c", i32 1567, i32 3}
!454 = !{ptr @xgene_edac_rb_report._entry.302, !453, !"_entry", i1 false, i1 false}
!455 = !{ptr @xgene_edac_rb_report._entry_ptr.304, !453, !"_entry_ptr", i1 false, i1 false}
!456 = !{ptr @.str.305, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/edac/xgene_edac.c", i32 1583, i32 2}
!458 = !{ptr @.str.306, !457, !"<string literal>", i1 false, i1 false}
!459 = !{ptr @xgene_edac_pa_report._entry, !457, !"_entry", i1 false, i1 false}
!460 = !{ptr @xgene_edac_pa_report._entry_ptr, !457, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.308, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/edac/xgene_edac.c", i32 1585, i32 3}
!463 = !{ptr @xgene_edac_pa_report._entry.307, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @xgene_edac_pa_report._entry_ptr.309, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.311, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/edac/xgene_edac.c", i32 1587, i32 3}
!467 = !{ptr @xgene_edac_pa_report._entry.310, !466, !"_entry", i1 false, i1 false}
!468 = !{ptr @xgene_edac_pa_report._entry_ptr.312, !466, !"_entry_ptr", i1 false, i1 false}
!469 = !{ptr @.str.314, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/edac/xgene_edac.c", i32 1590, i32 3}
!471 = !{ptr @xgene_edac_pa_report._entry.313, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @xgene_edac_pa_report._entry_ptr.315, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.317, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/edac/xgene_edac.c", i32 1592, i32 3}
!475 = !{ptr @xgene_edac_pa_report._entry.316, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @xgene_edac_pa_report._entry_ptr.318, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.320, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/edac/xgene_edac.c", i32 1595, i32 3}
!479 = !{ptr @xgene_edac_pa_report._entry.319, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @xgene_edac_pa_report._entry_ptr.321, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.323, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/edac/xgene_edac.c", i32 1597, i32 3}
!483 = !{ptr @xgene_edac_pa_report._entry.322, !482, !"_entry", i1 false, i1 false}
!484 = !{ptr @xgene_edac_pa_report._entry_ptr.324, !482, !"_entry_ptr", i1 false, i1 false}
!485 = !{ptr @.str.326, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/edac/xgene_edac.c", i32 1599, i32 3}
!487 = !{ptr @xgene_edac_pa_report._entry.325, !486, !"_entry", i1 false, i1 false}
!488 = !{ptr @xgene_edac_pa_report._entry_ptr.327, !486, !"_entry_ptr", i1 false, i1 false}
!489 = !{ptr @.str.329, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/edac/xgene_edac.c", i32 1601, i32 3}
!491 = !{ptr @xgene_edac_pa_report._entry.328, !490, !"_entry", i1 false, i1 false}
!492 = !{ptr @xgene_edac_pa_report._entry_ptr.330, !490, !"_entry_ptr", i1 false, i1 false}
!493 = !{ptr @.str.332, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/edac/xgene_edac.c", i32 1612, i32 2}
!495 = !{ptr @xgene_edac_pa_report._entry.331, !494, !"_entry", i1 false, i1 false}
!496 = !{ptr @xgene_edac_pa_report._entry_ptr.333, !494, !"_entry_ptr", i1 false, i1 false}
!497 = !{ptr @.str.334, !494, !"<string literal>", i1 false, i1 false}
!498 = !{ptr @.str.336, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/edac/xgene_edac.c", i32 1626, i32 2}
!500 = !{ptr @xgene_edac_pa_report._entry.335, !499, !"_entry", i1 false, i1 false}
!501 = !{ptr @xgene_edac_pa_report._entry_ptr.337, !499, !"_entry_ptr", i1 false, i1 false}
!502 = !{ptr @.str.338, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/edac/xgene_edac.c", i32 1354, i32 2}
!504 = !{ptr @.str.339, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/edac/xgene_edac.c", i32 1355, i32 2}
!506 = !{ptr @.str.340, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/edac/xgene_edac.c", i32 1356, i32 2}
!508 = !{ptr @.str.341, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/edac/xgene_edac.c", i32 1357, i32 2}
!510 = !{ptr @.str.342, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/edac/xgene_edac.c", i32 1358, i32 2}
!512 = !{ptr @.str.343, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/edac/xgene_edac.c", i32 1359, i32 2}
!514 = !{ptr @.str.344, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/edac/xgene_edac.c", i32 1360, i32 2}
!516 = !{ptr @.str.345, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/edac/xgene_edac.c", i32 1361, i32 2}
!518 = !{ptr @.str.346, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/edac/xgene_edac.c", i32 1362, i32 2}
!520 = !{ptr @.str.347, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/edac/xgene_edac.c", i32 1363, i32 2}
!522 = !{ptr @.str.348, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/edac/xgene_edac.c", i32 1364, i32 2}
!524 = !{ptr @.str.349, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/edac/xgene_edac.c", i32 1365, i32 2}
!526 = !{ptr @.str.350, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/edac/xgene_edac.c", i32 1366, i32 2}
!528 = !{ptr @.str.351, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/edac/xgene_edac.c", i32 1367, i32 2}
!530 = !{ptr @.str.352, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/edac/xgene_edac.c", i32 1368, i32 2}
!532 = !{ptr @.str.353, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/edac/xgene_edac.c", i32 1369, i32 2}
!534 = !{ptr @.str.354, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/edac/xgene_edac.c", i32 1370, i32 2}
!536 = !{ptr @.str.355, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/edac/xgene_edac.c", i32 1371, i32 2}
!538 = !{ptr @.str.356, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/edac/xgene_edac.c", i32 1372, i32 2}
!540 = !{ptr @.str.357, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/edac/xgene_edac.c", i32 1373, i32 2}
!542 = !{ptr @.str.358, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/edac/xgene_edac.c", i32 1374, i32 2}
!544 = !{ptr @.str.359, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/edac/xgene_edac.c", i32 1375, i32 2}
!546 = !{ptr @.str.360, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/edac/xgene_edac.c", i32 1376, i32 2}
!548 = !{ptr @.str.361, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/edac/xgene_edac.c", i32 1377, i32 2}
!550 = !{ptr @.str.362, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/edac/xgene_edac.c", i32 1378, i32 2}
!552 = !{ptr @.str.363, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/edac/xgene_edac.c", i32 1379, i32 2}
!554 = !{ptr @.str.364, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/edac/xgene_edac.c", i32 1380, i32 2}
!556 = !{ptr @.str.365, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/edac/xgene_edac.c", i32 1381, i32 2}
!558 = !{ptr @.str.366, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/edac/xgene_edac.c", i32 1382, i32 2}
!560 = !{ptr @soc_mem_err_v1, !561, !"soc_mem_err_v1", i1 false, i1 false}
!561 = !{!"../drivers/edac/xgene_edac.c", i32 1353, i32 27}
!562 = !{ptr @.str.367, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/edac/xgene_edac.c", i32 359, i32 3}
!564 = !{ptr @.str.368, !563, !"<string literal>", i1 false, i1 false}
!565 = !{ptr @xgene_edac_mc_add._entry, !563, !"_entry", i1 false, i1 false}
!566 = !{ptr @xgene_edac_mc_add._entry_ptr, !563, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.370, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/edac/xgene_edac.c", i32 364, i32 3}
!569 = !{ptr @xgene_edac_mc_add._entry.369, !568, !"_entry", i1 false, i1 false}
!570 = !{ptr @xgene_edac_mc_add._entry_ptr.371, !568, !"_entry_ptr", i1 false, i1 false}
!571 = !{ptr @.str.372, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/edac/xgene_edac.c", i32 370, i32 31}
!573 = !{ptr @.str.374, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/edac/xgene_edac.c", i32 371, i32 3}
!575 = !{ptr @xgene_edac_mc_add._entry.373, !574, !"_entry", i1 false, i1 false}
!576 = !{ptr @xgene_edac_mc_add._entry_ptr.375, !574, !"_entry_ptr", i1 false, i1 false}
!577 = !{ptr @.str.376, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/edac/xgene_edac.c", i32 395, i32 14}
!579 = !{ptr @.str.377, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/edac/xgene_edac.c", i32 405, i32 18}
!581 = !{ptr @.str.379, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/edac/xgene_edac.c", i32 414, i32 3}
!583 = !{ptr @xgene_edac_mc_add._entry.378, !582, !"_entry", i1 false, i1 false}
!584 = !{ptr @xgene_edac_mc_add._entry_ptr.380, !582, !"_entry_ptr", i1 false, i1 false}
!585 = !{ptr @.str.382, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/edac/xgene_edac.c", i32 427, i32 2}
!587 = !{ptr @xgene_edac_mc_add._entry.381, !586, !"_entry", i1 false, i1 false}
!588 = !{ptr @xgene_edac_mc_add._entry_ptr.383, !586, !"_entry_ptr", i1 false, i1 false}
!589 = !{ptr @.str.384, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/edac/xgene_edac.c", i32 170, i32 27}
!591 = !{ptr @xgene_edac_mc_debug_inject_fops, !592, !"xgene_edac_mc_debug_inject_fops", i1 false, i1 false}
!592 = !{!"../drivers/edac/xgene_edac.c", i32 156, i32 37}
!593 = !{ptr @.str.385, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/edac/xgene_edac.c", i32 901, i32 31}
!595 = !{ptr @.str.386, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/edac/xgene_edac.c", i32 902, i32 3}
!597 = !{ptr @.str.387, !596, !"<string literal>", i1 false, i1 false}
!598 = !{ptr @xgene_edac_pmd_add._entry, !596, !"_entry", i1 false, i1 false}
!599 = !{ptr @xgene_edac_pmd_add._entry_ptr, !596, !"_entry_ptr", i1 false, i1 false}
!600 = !{ptr @.str.388, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/edac/xgene_edac.c", i32 914, i32 41}
!602 = !{ptr @.str.389, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/edac/xgene_edac.c", i32 916, i32 26}
!604 = !{ptr @.str.390, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/edac/xgene_edac.c", i32 924, i32 14}
!606 = !{ptr @.str.392, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/edac/xgene_edac.c", i32 937, i32 3}
!608 = !{ptr @xgene_edac_pmd_add._entry.391, !607, !"_entry", i1 false, i1 false}
!609 = !{ptr @xgene_edac_pmd_add._entry_ptr.393, !607, !"_entry_ptr", i1 false, i1 false}
!610 = !{ptr @.str.395, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/edac/xgene_edac.c", i32 942, i32 3}
!612 = !{ptr @xgene_edac_pmd_add._entry.394, !611, !"_entry", i1 false, i1 false}
!613 = !{ptr @xgene_edac_pmd_add._entry_ptr.396, !611, !"_entry_ptr", i1 false, i1 false}
!614 = !{ptr @.str.398, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/edac/xgene_edac.c", i32 955, i32 3}
!616 = !{ptr @xgene_edac_pmd_add._entry.397, !615, !"_entry", i1 false, i1 false}
!617 = !{ptr @xgene_edac_pmd_add._entry_ptr.399, !615, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.401, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/edac/xgene_edac.c", i32 969, i32 2}
!620 = !{ptr @xgene_edac_pmd_add._entry.400, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @xgene_edac_pmd_add._entry_ptr.402, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.403, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/edac/xgene_edac.c", i32 870, i32 31}
!624 = !{ptr @.str.404, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/edac/xgene_edac.c", i32 875, i32 27}
!626 = !{ptr @.str.405, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/edac/xgene_edac.c", i32 877, i32 27}
!628 = !{ptr @xgene_edac_pmd_debug_inject_fops, !629, !"xgene_edac_pmd_debug_inject_fops", i1 false, i1 false}
!629 = !{!"../drivers/edac/xgene_edac.c", i32 848, i32 37}
!630 = !{ptr @.str.406, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/edac/xgene_edac.c", i32 1198, i32 3}
!632 = !{ptr @.str.407, !631, !"<string literal>", i1 false, i1 false}
!633 = !{ptr @xgene_edac_l3_add._entry, !631, !"_entry", i1 false, i1 false}
!634 = !{ptr @xgene_edac_l3_add._entry_ptr, !631, !"_entry_ptr", i1 false, i1 false}
!635 = !{ptr @.str.409, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/edac/xgene_edac.c", i32 1203, i32 3}
!637 = !{ptr @xgene_edac_l3_add._entry.408, !636, !"_entry", i1 false, i1 false}
!638 = !{ptr @xgene_edac_l3_add._entry_ptr.410, !636, !"_entry_ptr", i1 false, i1 false}
!639 = !{ptr @.str.411, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/edac/xgene_edac.c", i32 1211, i32 12}
!641 = !{ptr @.str.412, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/edac/xgene_edac.c", i32 1220, i32 14}
!643 = !{ptr @.str.414, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/edac/xgene_edac.c", i32 1238, i32 3}
!645 = !{ptr @xgene_edac_l3_add._entry.413, !644, !"_entry", i1 false, i1 false}
!646 = !{ptr @xgene_edac_l3_add._entry_ptr.415, !644, !"_entry_ptr", i1 false, i1 false}
!647 = !{ptr @.str.417, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/edac/xgene_edac.c", i32 1252, i32 2}
!649 = !{ptr @xgene_edac_l3_add._entry.416, !648, !"_entry", i1 false, i1 false}
!650 = !{ptr @xgene_edac_l3_add._entry_ptr.418, !648, !"_entry_ptr", i1 false, i1 false}
!651 = !{ptr @.str.419, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/edac/xgene_edac.c", i32 1174, i32 31}
!653 = !{ptr @.str.420, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/edac/xgene_edac.c", i32 1179, i32 22}
!655 = !{ptr @xgene_edac_l3_debug_inject_fops, !656, !"xgene_edac_l3_debug_inject_fops", i1 false, i1 false}
!656 = !{!"../drivers/edac/xgene_edac.c", i32 1158, i32 37}
!657 = !{ptr @.str.421, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/edac/xgene_edac.c", i32 1738, i32 3}
!659 = !{ptr @.str.422, !658, !"<string literal>", i1 false, i1 false}
!660 = !{ptr @xgene_edac_soc_add._entry, !658, !"_entry", i1 false, i1 false}
!661 = !{ptr @xgene_edac_soc_add._entry_ptr, !658, !"_entry_ptr", i1 false, i1 false}
!662 = !{ptr @.str.424, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/edac/xgene_edac.c", i32 1743, i32 3}
!664 = !{ptr @xgene_edac_soc_add._entry.423, !663, !"_entry", i1 false, i1 false}
!665 = !{ptr @xgene_edac_soc_add._entry_ptr.425, !663, !"_entry_ptr", i1 false, i1 false}
!666 = !{ptr @.str.426, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/edac/xgene_edac.c", i32 1751, i32 12}
!668 = !{ptr @.str.427, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/edac/xgene_edac.c", i32 1760, i32 14}
!670 = !{ptr @xgene_edac_soc_add._entry.428, !671, !"_entry", i1 false, i1 false}
!671 = !{!"../drivers/edac/xgene_edac.c", i32 1776, i32 3}
!672 = !{ptr @xgene_edac_soc_add._entry_ptr.429, !671, !"_entry_ptr", i1 false, i1 false}
!673 = !{ptr @.str.431, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/edac/xgene_edac.c", i32 1790, i32 2}
!675 = !{ptr @xgene_edac_soc_add._entry.430, !674, !"_entry", i1 false, i1 false}
!676 = !{ptr @xgene_edac_soc_add._entry_ptr.432, !674, !"_entry_ptr", i1 false, i1 false}
!677 = !{ptr @xgene_edac_of_match, !678, !"xgene_edac_of_match", i1 false, i1 false}
!678 = !{!"../drivers/edac/xgene_edac.c", i32 1988, i32 34}
!679 = !{ptr @__param_str_edac_op_state, !12, !"__param_str_edac_op_state", i1 false, i1 false}
!680 = !{i32 1, !"wchar_size", i32 2}
!681 = !{i32 1, !"min_enum_size", i32 4}
!682 = !{i32 8, !"branch-target-enforcement", i32 0}
!683 = !{i32 8, !"sign-return-address", i32 0}
!684 = !{i32 8, !"sign-return-address-all", i32 0}
!685 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!686 = !{i32 7, !"uwtable", i32 1}
!687 = !{i32 7, !"frame-pointer", i32 2}
!688 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!689 = !{i64 2154752109}
!690 = !{i64 5707837}
!691 = !{i64 5708255}
!692 = !{i64 2154750512}
!693 = !{!"auto-init"}
!694 = !{i64 2154754883}
!695 = !{i64 2154757548}
!696 = !{i64 2154758138}
!697 = !{i64 2154758748}
!698 = !{i64 2154761526}
!699 = !{i64 2154761963}
!700 = !{i64 2154762409}
!701 = !{i64 2154762855}
!702 = !{i64 2154763557}
!703 = !{i64 2154767461}
!704 = !{i64 2154781040}
!705 = !{i64 2154795191}
!706 = !{i64 2154796003}
!707 = !{i64 2154811744}
!708 = !{i64 2154812556}
!709 = !{i64 2154831881}
!710 = !{i64 2154832540}
!711 = !{i64 2154833017}
!712 = !{i64 2154833494}
!713 = !{i64 2154851486}
!714 = !{i64 2154852473}
!715 = !{i64 2154852950}
!716 = !{i64 2154853427}
!717 = !{i64 2154855519}
!718 = !{i64 2154871511}
!719 = !{i64 2154879635}
!720 = !{i64 2154880164}
!721 = !{i64 2154880693}
!722 = !{i64 2154894373}
!723 = !{i64 2154904992}
!724 = !{i64 2154913937}
!725 = !{i64 2154916092}
!726 = !{i64 2154916780}
!727 = !{i64 2154917371}
!728 = !{i64 2154917880}
!729 = !{i64 2154920051}
!730 = !{i64 2154920487}
!731 = !{i64 2154921281}
!732 = !{i64 2154921790}
!733 = !{i64 2154924042}
!734 = !{i64 2154924478}
!735 = !{i64 2154925436}
!736 = !{i64 2154925945}
!737 = !{i64 2154928134}
!738 = !{i64 2154928570}
!739 = !{i64 2154929364}
!740 = !{i64 2154929873}
!741 = !{i64 2154932143}
!742 = !{i64 2154932579}
!743 = !{i64 2154942887}
!744 = !{i64 2154974017}
!745 = !{i64 2154974526}
!746 = !{i64 2154978954}
!747 = !{i64 2154979179}
!748 = !{i64 2154979867}
!749 = !{i64 2154996021}
!750 = !{i64 2154996709}
!751 = !{i64 2154997218}
!752 = !{i64 2154997727}
!753 = !{i64 2155000381}
!754 = !{i64 2155001069}
!755 = !{i64 2155001578}
!756 = !{i64 2155002087}
!757 = !{i64 2155004741}
!758 = !{i64 2154751006}
!759 = !{i64 2154751222}
!760 = !{i64 2154768460}
!761 = !{i64 2154769013}
!762 = !{i64 2154769701}
!763 = !{i64 2154770254}
!764 = !{i64 2154751893}
!765 = !{i64 2154752971}
!766 = !{i64 2154857297}
!767 = !{i64 2154857713}
!768 = !{i64 2154856027}
!769 = !{i64 2154856443}
!770 = !{i64 2154856859}
!771 = !{i64 2154858555}
!772 = !{i64 2154859333}
!773 = !{i64 2154860111}
!774 = !{i64 2154861119}
!775 = !{i64 2154895243}
!776 = !{i64 2154895974}
!777 = !{i64 2154896759}
!778 = !{i64 2155012037}
!779 = !{i64 2155012529}
!780 = !{i64 2155013021}
