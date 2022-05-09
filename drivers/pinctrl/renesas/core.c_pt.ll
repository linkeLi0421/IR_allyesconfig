; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/renesas/core.c_pt.bc'
source_filename = "../drivers/pinctrl/renesas/core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.soc_device_attribute = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc_soc_info = type { ptr, ptr, %struct.pinmux_range, %struct.pinmux_range, ptr, i32, %struct.pinmux_range, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.pinmux_range = type { i16, i16, i16 }
%struct.psci_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.sh_pfc = type { ptr, ptr, %struct.spinlock, i32, ptr, i32, ptr, ptr, i32, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sh_pfc_pin_range = type { i16, i16 }
%struct.sh_pfc_window = type { i32, ptr, i32 }
%struct.pinmux_cfg_reg = type { i32, i8, i8, i16, ptr, ptr }
%struct.sh_pfc_pin = type { ptr, i32, i16, i16 }
%struct.sh_pfc_function = type { ptr, ptr, i32 }
%struct.sh_pfc_pin_group = type { ptr, ptr, ptr, i32 }
%struct.pinmux_drive_reg = type { i32, [8 x %struct.pinmux_drive_reg_field] }
%struct.pinmux_drive_reg_field = type { i16, i8, i8 }
%struct.pinmux_bias_reg = type { i32, i32, [32 x i16] }
%struct.pinmux_ioctrl_reg = type { i32 }
%struct.pinmux_data_reg = type { i32, i8, ptr }
%struct.pinmux_func = type { i16, ptr }
%struct.anon.44 = type { i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_core__185_1261_sh_pfc_init2 = internal global ptr @sh_pfc_init, section ".initcall2.init", align 4
@sh_pfc_mark_to_enum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 311, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"cannot locate data/mark enum_id for mark %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_pfc_mark_to_enum\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/pinctrl/renesas/core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sh_pfc_mark_to_enum._entry_ptr = internal global ptr @sh_pfc_mark_to_enum._entry, section ".printk_index", align 4
@sh_pfc_write_config_reg.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 58, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sh_pfc_write_config_reg\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"write_reg addr = %x, value = 0x%x, field = %u, r_width = %u, f_width = %u\0A\00", [53 x i8] zeroinitializer }, align 32
@sh_pfc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sh_pfc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.76, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sh_pfc_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_pfc_pm, ptr null, ptr null }, ptr @sh_pfc_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sh_pfc_regs = internal unnamed_addr global ptr null, section ".init.data", align 4
@sh_pfc_enums = internal unnamed_addr global ptr null, section ".init.data", align 4
@sh_pfc_check_driver._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 1084, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014sh_pfc: Checking builtin pinmux tables\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_pfc_check_driver\00", [44 x i8] zeroinitializer }, align 32
@sh_pfc_check_driver._entry_ptr = internal global ptr @sh_pfc_check_driver._entry, section ".printk_index", align 4
@sh_pfc_check_driver._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 1095, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014sh_pfc: Detected %u errors and %u warnings\0A\00", [50 x i8] zeroinitializer }, align 32
@sh_pfc_check_driver._entry_ptr.12 = internal global ptr @sh_pfc_check_driver._entry.10, section ".printk_index", align 4
@sh_pfc_errors = internal unnamed_addr global i32 0, section ".init.data", align 4
@sh_pfc_warnings = internal unnamed_addr global i32 0, section ".init.data", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sh_pfc_check_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 937, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016sh_pfc: Checking %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_pfc_check_info\00", [46 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr = internal global ptr @sh_pfc_check_info._entry, section ".printk_index", align 4
@sh_pfc_num_regs = internal unnamed_addr global i32 0, section ".init.data", align 4
@sh_pfc_num_enums = internal unnamed_addr global i32 0, section ".init.data", align 4
@sh_pfc_check_info._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.14, ptr @.str.2, i32 946, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\013%s: empty pin %u\0A\00", [44 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.17 = internal global ptr @sh_pfc_check_info._entry.15, section ".printk_index", align 4
@sh_pfc_check_info._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.14, ptr @.str.2, i32 954, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s: pin %s: name conflict\0A\00", [35 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.20 = internal global ptr @sh_pfc_check_info._entry.18, section ".printk_index", align 4
@sh_pfc_check_info._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.14, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: pin %s/%s: pin %u conflict\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.23 = internal global ptr @sh_pfc_check_info._entry.21, section ".printk_index", align 4
@sh_pfc_check_info._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.14, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: pin %s/%s: enum_id %u conflict\0A\00", [58 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.26 = internal global ptr @sh_pfc_check_info._entry.24, section ".printk_index", align 4
@sh_pfc_check_info._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.14, ptr @.str.2, i32 976, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013%s: empty function %u\0A\00", [39 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.29 = internal global ptr @sh_pfc_check_info._entry.27, section ".printk_index", align 4
@sh_pfc_check_info._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.14, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: function %s: name conflict\0A\00", [62 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.32 = internal global ptr @sh_pfc_check_info._entry.30, section ".printk_index", align 4
@sh_pfc_check_info._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.14, ptr @.str.2, i32 995, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: function %s: group %s not found\0A\00", [57 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.35 = internal global ptr @sh_pfc_check_info._entry.33, section ".printk_index", align 4
@sh_pfc_check_info._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.14, ptr @.str.2, i32 1003, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013%s: empty group %u\0A\00", [42 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.38 = internal global ptr @sh_pfc_check_info._entry.36, section ".printk_index", align 4
@sh_pfc_check_info._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.2, i32 1009, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013%s: group %s: name conflict\0A\00", [33 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.41 = internal global ptr @sh_pfc_check_info._entry.39, section ".printk_index", align 4
@sh_pfc_check_info._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.14, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s: orphan group %s\0A\00", [41 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.44 = internal global ptr @sh_pfc_check_info._entry.42, section ".printk_index", align 4
@sh_pfc_check_info._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.14, ptr @.str.2, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: group %s referenced by %u functions\0A\00", [53 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.47 = internal global ptr @sh_pfc_check_info._entry.45, section ".printk_index", align 4
@sh_pfc_check_info._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.14, ptr @.str.2, i32 1051, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: empty function gpio %u\0A\00", [34 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.50 = internal global ptr @sh_pfc_check_info._entry.48, section ".printk_index", align 4
@sh_pfc_check_info._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.14, ptr @.str.2, i32 1057, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: func_gpio %s: name conflict\0A\00", [61 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.53 = internal global ptr @sh_pfc_check_info._entry.51, section ".printk_index", align 4
@sh_pfc_check_info._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.14, ptr @.str.2, i32 1061, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: %s enum_id %u conflict\0A\00", [34 x i8] zeroinitializer }, align 32
@sh_pfc_check_info._entry_ptr.56 = internal global ptr @sh_pfc_check_info._entry.54, section ".printk_index", align 4
@sh_pfc_check_cfg_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.2, i32 876, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014%s: reg 0x%x: reserved field [%u:%u] can be split to reduce table size\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sh_pfc_check_cfg_reg\00", [43 x i8] zeroinitializer }, align 32
@sh_pfc_check_cfg_reg._entry_ptr = internal global ptr @sh_pfc_check_cfg_reg._entry, section ".printk_index", align 4
@sh_pfc_check_cfg_reg._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.58, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s: reg 0x%x: var_field_width declares %u instead of %u bits\0A\00", [32 x i8] zeroinitializer }, align 32
@sh_pfc_check_cfg_reg._entry_ptr.61 = internal global ptr @sh_pfc_check_cfg_reg._entry.59, section ".printk_index", align 4
@sh_pfc_check_cfg_reg._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.58, ptr @.str.2, i32 887, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s: reg 0x%x: enum_ids[] has %u instead of %u values\0A\00", [40 x i8] zeroinitializer }, align 32
@sh_pfc_check_cfg_reg._entry_ptr.64 = internal global ptr @sh_pfc_check_cfg_reg._entry.62, section ".printk_index", align 4
@sh_pfc_check_pin._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013%s: reg 0x%x: pin %u not found\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_pfc_check_pin\00", [47 x i8] zeroinitializer }, align 32
@sh_pfc_check_pin._entry_ptr = internal global ptr @sh_pfc_check_pin._entry, section ".printk_index", align 4
@sh_pfc_check_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.68, ptr @.str.2, i32 796, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: reg 0x%x: bits 0x%x conflict\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sh_pfc_check_reg\00", [47 x i8] zeroinitializer }, align 32
@sh_pfc_check_reg._entry_ptr = internal global ptr @sh_pfc_check_reg._entry, section ".printk_index", align 4
@sh_pfc_check_reg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sh_pfc_check_reg._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: Please increase SH_PFC_MAX_REGS\0A\00", [57 x i8] zeroinitializer }, align 32
@sh_pfc_check_reg._entry_ptr.71 = internal global ptr @sh_pfc_check_reg._entry.69, section ".printk_index", align 4
@sh_pfc_check_reg_enums._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.73, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s: reg 0x%x enum_id %u conflict\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sh_pfc_check_reg_enums\00", [41 x i8] zeroinitializer }, align 32
@sh_pfc_check_reg_enums._entry_ptr = internal global ptr @sh_pfc_check_reg_enums._entry, section ".printk_index", align 4
@sh_pfc_check_enum.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sh_pfc_check_enum._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.75, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014%s: Please increase SH_PFC_MAX_ENUMS\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sh_pfc_check_enum\00", [46 x i8] zeroinitializer }, align 32
@sh_pfc_check_enum._entry_ptr = internal global ptr @sh_pfc_check_enum._entry, section ".printk_index", align 4
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sh-pfc\00", [25 x i8] zeroinitializer }, align 32
@sh_pfc_of_table = internal constant { [31 x %struct.of_device_id], [1508 x i8] } { [31 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-emev2\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @emev2_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a73a4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a73a4_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7740\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7740_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7742\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7742_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7743\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7743_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7744\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7744_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7745\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7745_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77470\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77470_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a774a1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774a1_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a774b1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774b1_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a774c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774c0_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a774e1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a774e1_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7778\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7778_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7779\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7779_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7790\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7790_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7791\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7791_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7792\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7792_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7793\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7793_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7794\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a7794_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77951_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7795\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77950_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a7796\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77960_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77961\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77961_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77965\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77965_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77970\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77970_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77980\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77980_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77990\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77990_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a77995\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a77995_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @r8a779a0_pinmux_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,pfc-sh73a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sh73a0_pinmux_info }, %struct.of_device_id zeroinitializer], [1508 x i8] zeroinitializer }, align 32
@sh_pfc_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr @sh_pfc_suspend_noirq, ptr @sh_pfc_resume_noirq, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sh_pfc_id_table = internal constant { [13 x %struct.platform_device_id], [72 x i8] } { [13 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"pfc-sh7203\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7203_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7264\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7264_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7269\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7269_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7720\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7720_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7722\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7722_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7723\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7723_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7724\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7724_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7734\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7734_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7757\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7757_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7785\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7785_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-sh7786\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @sh7786_pinmux_info to i32) }, %struct.platform_device_id { [20 x i8] c"pfc-shx3\00\00\00\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @shx3_pinmux_info to i32) }, %struct.platform_device_id zeroinitializer], [72 x i8] zeroinitializer }, align 32
@sh_pfc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&pfc->lock\00", [21 x i8] zeroinitializer }, align 32
@sh_pfc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.2, i32 1195, ptr @.str.80, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"failed to init GPIO chip, ignoring...\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sh_pfc_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@sh_pfc_probe._entry_ptr = internal global ptr @sh_pfc_probe._entry, section ".printk_index", align 4
@sh_pfc_probe._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.79, ptr @.str.2, i32 1201, ptr @.str.83, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s support registered\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sh_pfc_probe._entry_ptr.84 = internal global ptr @sh_pfc_probe._entry.81, section ".printk_index", align 4
@sh_pfc_quirk_match.quirks = internal constant { [2 x %struct.soc_device_attribute], [40 x i8] } { [2 x %struct.soc_device_attribute] [%struct.soc_device_attribute { ptr null, ptr null, ptr @.str.85, ptr null, ptr @.str.86, ptr @r8a77950_pinmux_info, ptr null }, %struct.soc_device_attribute zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ES1.*\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"r8a7795\00", [24 x i8] zeroinitializer }, align 32
@r8a77950_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@psci_ops = external dso_local local_unnamed_addr global %struct.psci_operations, align 4
@sh_pfc_suspend_init.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 0, i8 -79, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sh_pfc_suspend_init\00", [44 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Allocated space to save %u regs\0A\00", [63 x i8] zeroinitializer }, align 32
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@emev2_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a73a4_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7740_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7742_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7743_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7744_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7745_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77470_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a774a1_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a774b1_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a774c0_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a774e1_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7778_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7779_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7790_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7791_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7792_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7793_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a7794_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77951_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77960_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77961_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77965_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77970_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77980_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77990_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a77995_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@r8a779a0_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh73a0_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7203_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7264_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7269_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7720_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7722_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7723_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7724_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7734_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7757_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7785_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@sh7786_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@shx3_pinmux_info = external dso_local constant %struct.sh_pfc_soc_info, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.90 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.91 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.94 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 310, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 231, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"sh_pfc_driver\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1246, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1084, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1094, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 937, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 946, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 953, i32 5 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 957, i32 5 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 961, i32 5 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 976, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 981, i32 5 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 994, i32 5 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1003, i32 4 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1008, i32 5 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1012, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1014, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1051, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1056, i32 5 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1060, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 875, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 882, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 886, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 856, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 795, i32 4 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 803, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 837, i32 4 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 822, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1250, i32 11 }
@___asan_gen_.299 = private unnamed_addr constant [16 x i8] c"sh_pfc_of_table\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 459, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant [10 x i8] c"sh_pfc_pm\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 733, i32 32 }
@___asan_gen_.305 = private unnamed_addr constant [16 x i8] c"sh_pfc_id_table\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1206, i32 40 }
@___asan_gen_.308 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1154, i32 2 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1195, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1201, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant [7 x i8] c"quirks\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1111, i32 43 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1113, i32 37 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 1113, i32 14 }
@___asan_gen_.347 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.348 = private constant [34 x i8] c"../drivers/pinctrl/renesas/core.c\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.348, i32 711, i32 2 }
@llvm.compiler.used = appending global [114 x ptr] [ptr @__initcall__kmod_core__185_1261_sh_pfc_init2, ptr @sh_pfc_check_cfg_reg._entry, ptr @sh_pfc_check_cfg_reg._entry.59, ptr @sh_pfc_check_cfg_reg._entry.62, ptr @sh_pfc_check_cfg_reg._entry_ptr, ptr @sh_pfc_check_cfg_reg._entry_ptr.61, ptr @sh_pfc_check_cfg_reg._entry_ptr.64, ptr @sh_pfc_check_driver._entry, ptr @sh_pfc_check_driver._entry.10, ptr @sh_pfc_check_driver._entry_ptr, ptr @sh_pfc_check_driver._entry_ptr.12, ptr @sh_pfc_check_enum._entry, ptr @sh_pfc_check_enum._entry_ptr, ptr @sh_pfc_check_info._entry, ptr @sh_pfc_check_info._entry.15, ptr @sh_pfc_check_info._entry.18, ptr @sh_pfc_check_info._entry.21, ptr @sh_pfc_check_info._entry.24, ptr @sh_pfc_check_info._entry.27, ptr @sh_pfc_check_info._entry.30, ptr @sh_pfc_check_info._entry.33, ptr @sh_pfc_check_info._entry.36, ptr @sh_pfc_check_info._entry.39, ptr @sh_pfc_check_info._entry.42, ptr @sh_pfc_check_info._entry.45, ptr @sh_pfc_check_info._entry.48, ptr @sh_pfc_check_info._entry.51, ptr @sh_pfc_check_info._entry.54, ptr @sh_pfc_check_info._entry_ptr, ptr @sh_pfc_check_info._entry_ptr.17, ptr @sh_pfc_check_info._entry_ptr.20, ptr @sh_pfc_check_info._entry_ptr.23, ptr @sh_pfc_check_info._entry_ptr.26, ptr @sh_pfc_check_info._entry_ptr.29, ptr @sh_pfc_check_info._entry_ptr.32, ptr @sh_pfc_check_info._entry_ptr.35, ptr @sh_pfc_check_info._entry_ptr.38, ptr @sh_pfc_check_info._entry_ptr.41, ptr @sh_pfc_check_info._entry_ptr.44, ptr @sh_pfc_check_info._entry_ptr.47, ptr @sh_pfc_check_info._entry_ptr.50, ptr @sh_pfc_check_info._entry_ptr.53, ptr @sh_pfc_check_info._entry_ptr.56, ptr @sh_pfc_check_pin._entry, ptr @sh_pfc_check_pin._entry_ptr, ptr @sh_pfc_check_reg._entry, ptr @sh_pfc_check_reg._entry.69, ptr @sh_pfc_check_reg._entry_ptr, ptr @sh_pfc_check_reg._entry_ptr.71, ptr @sh_pfc_check_reg_enums._entry, ptr @sh_pfc_check_reg_enums._entry_ptr, ptr @sh_pfc_mark_to_enum._entry, ptr @sh_pfc_mark_to_enum._entry_ptr, ptr @sh_pfc_probe._entry, ptr @sh_pfc_probe._entry.81, ptr @sh_pfc_probe._entry_ptr, ptr @sh_pfc_probe._entry_ptr.84, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sh_pfc_driver, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.60, ptr @.str.63, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @sh_pfc_of_table, ptr @sh_pfc_pm, ptr @sh_pfc_id_table, ptr @sh_pfc_probe.__key, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.83, ptr @sh_pfc_quirk_match.quirks, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88], section "llvm.metadata"
@0 = internal global [85 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_mark_to_enum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_driver._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_driver._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_info._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_cfg_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_cfg_reg._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_cfg_reg._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_pin._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_reg._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_reg_enums._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_check_enum._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_of_table to i32), i32 6076, i32 7584, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_id_table to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_probe._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sh_pfc_quirk_match.quirks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_get_pin_index(ptr nocapture noundef readonly %pfc, i32 noundef %pin) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_ranges = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 8
  %0 = ptrtoint ptr %nr_ranges to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_ranges, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp33.not = icmp eq i32 %1, 0
  br i1 %cmp33.not, label %entry.cleanup15_crit_edge, label %for.body.lr.ph

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

for.body.lr.ph:                                   ; preds = %entry
  %ranges = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 7
  %2 = ptrtoint ptr %ranges to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ranges, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.035 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %offset.034 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.sh_pfc_pin_range, ptr %3, i32 %i.035
  %end = getelementptr %struct.sh_pfc_pin_range, ptr %3, i32 %i.035, i32 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %end, align 2
  %conv = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp1.not = icmp ult i32 %conv, %pin
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %conv11 = zext i16 %7 to i32
  br i1 %cmp1.not, label %for.inc, label %cleanup

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %conv11.le = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv11.le, i32 %pin)
  %cmp4.not = icmp ugt i32 %conv11.le, %pin
  %add = add i32 %offset.034, %pin
  %sub = sub i32 %add, %conv11.le
  %cond = select i1 %cmp4.not, i32 -1, i32 %sub
  br label %cleanup15

for.inc:                                          ; preds = %for.body
  %sub12 = add i32 %offset.034, 1
  %add13 = add i32 %sub12, %conv
  %add14 = sub i32 %add13, %conv11
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %1
  br i1 %exitcond.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %cleanup, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ %cond, %cleanup ], [ -22, %entry.cleanup15_crit_edge ], [ -22, %for.inc.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_read_raw_reg(ptr noundef %mapped_reg, i32 noundef %reg_width) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg_width, label %do.body [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb4
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %mapped_reg) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %conv = zext i8 %1 to i32
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %mapped_reg) #9, !srcloc !181
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %conv3 = zext i16 %3 to i32
  br label %return

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mapped_reg) #9, !srcloc !183
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  br label %return

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #9, !srcloc !185
  unreachable

return:                                           ; preds = %sw.bb4, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ %5, %sw.bb4 ], [ %conv3, %sw.bb1 ], [ %conv, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sh_pfc_write_raw_reg(ptr noundef %mapped_reg, i32 noundef %reg_width, i32 noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg_width to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %reg_width, label %do.body [
    i32 8, label %sw.bb
    i32 16, label %sw.bb1
    i32 32, label %sw.bb3
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv = trunc i32 %data to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %mapped_reg, i8 %conv) #9, !srcloc !187
  br label %do.end5

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %conv2 = trunc i32 %data to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %1 = tail call i16 @llvm.bswap.i16(i16 %conv2) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %mapped_reg, i16 %1) #9, !srcloc !189
  br label %do.end5

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %2 = tail call i32 @llvm.bswap.i32(i32 %data) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %mapped_reg, i32 %2) #9, !srcloc !191
  br label %do.end5

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

do.end5:                                          ; preds = %sw.bb3, %sw.bb1, %sw.bb
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_read(ptr nocapture noundef readonly %pfc, i32 noundef %reg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %0 = ptrtoint ptr %num_windows.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i, label %entry.do.body.i_crit_edge, label %for.body.lr.ph.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %entry
  %windows.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %2 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %windows.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp1.i = icmp ugt i32 %5, %reg
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body.i
  %size.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i, i32 2
  %6 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i, align 4
  %add.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reg)
  %cmp3.not.i = icmp ugt i32 %add.i, %reg
  br i1 %cmp3.not.i, label %sh_pfc_phys_to_virt.exit, label %if.end.i.for.inc.i_crit_edge

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %1
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_phys_to_virt.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %virt.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i, i32 1
  %8 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i, align 4
  %sub.i = sub i32 %reg, %5
  %add.ptr7.i = getelementptr i8, ptr %9, i32 %sub.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #9, !srcloc !183
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sh_pfc_write(ptr nocapture noundef readonly %pfc, i32 noundef %reg, i32 noundef %data) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info.i, align 4
  %unlock_reg.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 22
  %2 = ptrtoint ptr %unlock_reg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %unlock_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.sh_pfc_unlock_reg.exit_crit_edge, label %if.end.i

entry.sh_pfc_unlock_reg.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_unlock_reg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp slt i32 %3, 0
  %neg.i = xor i32 %3, -1
  %and.i = and i32 %neg.i, %reg
  %unlock.0.i = select i1 %cmp.i, i32 %3, i32 %and.i
  %num_windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %4 = ptrtoint ptr %num_windows.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_windows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp24.not.i.i = icmp eq i32 %5, 0
  br i1 %cmp24.not.i.i, label %if.end.i.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.i.do.body.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end.i
  %windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %6 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %windows.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.sh_pfc_window, ptr %7, i32 %i.025.i.i
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %unlock.0.i, i32 %9)
  %cmp1.i.i = icmp ult i32 %unlock.0.i, %9
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %size.i.i = getelementptr %struct.sh_pfc_window, ptr %7, i32 %i.025.i.i, i32 2
  %10 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %11, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %unlock.0.i)
  %cmp3.not.i.i = icmp ugt i32 %add.i.i, %unlock.0.i
  br i1 %cmp3.not.i.i, label %sh_pfc_phys_to_virt.exit.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %5
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %if.end.i.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_phys_to_virt.exit.i:                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %virt.i.i = getelementptr %struct.sh_pfc_window, ptr %7, i32 %i.025.i.i, i32 1
  %12 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt.i.i, align 4
  %sub.i.i = sub i32 %unlock.0.i, %9
  %add.ptr7.i.i = getelementptr i8, ptr %13, i32 %sub.i.i
  %neg9.i = xor i32 %data, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %14 = tail call i32 @llvm.bswap.i32(i32 %neg9.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %14) #9, !srcloc !191
  br label %sh_pfc_unlock_reg.exit

sh_pfc_unlock_reg.exit:                           ; preds = %sh_pfc_phys_to_virt.exit.i, %entry.sh_pfc_unlock_reg.exit_crit_edge
  %num_windows.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %15 = ptrtoint ptr %num_windows.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_windows.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp24.not.i = icmp eq i32 %16, 0
  br i1 %cmp24.not.i, label %sh_pfc_unlock_reg.exit.do.body.i_crit_edge, label %for.body.lr.ph.i

sh_pfc_unlock_reg.exit.do.body.i_crit_edge:       ; preds = %sh_pfc_unlock_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

for.body.lr.ph.i:                                 ; preds = %sh_pfc_unlock_reg.exit
  %windows.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %17 = ptrtoint ptr %windows.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %windows.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.025.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %add.ptr.i = getelementptr %struct.sh_pfc_window, ptr %18, i32 %i.025.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %reg)
  %cmp1.i = icmp ugt i32 %20, %reg
  br i1 %cmp1.i, label %for.body.i.for.inc.i_crit_edge, label %if.end.i4

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.end.i4:                                        ; preds = %for.body.i
  %size.i = getelementptr %struct.sh_pfc_window, ptr %18, i32 %i.025.i, i32 2
  %21 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %size.i, align 4
  %add.i = add i32 %22, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %reg)
  %cmp3.not.i = icmp ugt i32 %add.i, %reg
  br i1 %cmp3.not.i, label %sh_pfc_phys_to_virt.exit, label %if.end.i4.for.inc.i_crit_edge

if.end.i4.for.inc.i_crit_edge:                    ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i4.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.025.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %16
  br i1 %exitcond.not.i, label %for.inc.i.do.body.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.do.body.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %for.inc.i.do.body.i_crit_edge, %sh_pfc_unlock_reg.exit.do.body.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_phys_to_virt.exit:                         ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #11
  %virt.i = getelementptr %struct.sh_pfc_window, ptr %18, i32 %i.025.i, i32 1
  %23 = ptrtoint ptr %virt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt.i, align 4
  %sub.i = sub i32 %reg, %20
  %add.ptr7.i = getelementptr i8, ptr %24, i32 %sub.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %25 = tail call i32 @llvm.bswap.i32(i32 %data) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 %25) #9, !srcloc !191
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sh_pfc_config_mux(ptr nocapture noundef readonly %pfc, i32 noundef %mark, i32 noundef %pinmux_type) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %pinmux_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %pinmux_type, label %entry.cleanup41_crit_edge [
    i32 2, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge141
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
  ]

entry.sw.epilog_crit_edge141:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info, align 4
  %output = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %2, i32 0, i32 3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %info3 = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %3 = ptrtoint ptr %info3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %info3, align 4
  %input = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %4, i32 0, i32 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge141
  %range.0 = phi ptr [ %input, %sw.bb2 ], [ %output, %sw.bb1 ], [ null, %entry.sw.epilog_crit_edge ], [ null, %entry.sw.epilog_crit_edge141 ]
  %conv = trunc i32 %mark to i16
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %end.i59 = getelementptr inbounds %struct.pinmux_range, ptr %range.0, i32 0, i32 1
  %force = getelementptr inbounds %struct.pinmux_range, ptr %range.0, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %sw.epilog
  %pos.0 = phi i32 [ 0, %sw.epilog ], [ %add8.i.pn, %while.cond.backedge ]
  %5 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %info.i, align 4
  %pinmux_data.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %pinmux_data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pinmux_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.0)
  %tobool.not.i = icmp eq i32 %pos.0, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %while.cond.sh_pfc_mark_to_enum.exit_crit_edge

while.cond.sh_pfc_mark_to_enum.exit_crit_edge:    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_mark_to_enum.exit

for.cond.preheader.i:                             ; preds = %while.cond
  %pinmux_data_size.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %6, i32 0, i32 21
  %9 = ptrtoint ptr %pinmux_data_size.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pinmux_data_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp27.not.i = icmp eq i32 %10, 0
  br i1 %cmp27.not.i, label %for.cond.preheader.i.sh_pfc_mark_to_enum.exit.thread_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.sh_pfc_mark_to_enum.exit.thread_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_mark_to_enum.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %k.028.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx3.i = getelementptr i16, ptr %8, i32 %k.028.i
  %11 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx3.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %12, i16 %conv)
  %cmp5.i = icmp eq i16 %12, %conv
  br i1 %cmp5.i, label %for.body.i.sh_pfc_mark_to_enum.exit_crit_edge, label %for.inc.i

for.body.i.sh_pfc_mark_to_enum.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_mark_to_enum.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %k.028.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.inc.i.sh_pfc_mark_to_enum.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.inc.i.sh_pfc_mark_to_enum.exit.thread_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_mark_to_enum.exit.thread

sh_pfc_mark_to_enum.exit.thread:                  ; preds = %for.inc.i.sh_pfc_mark_to_enum.exit.thread_crit_edge, %for.cond.preheader.i.sh_pfc_mark_to_enum.exit.thread_crit_edge
  %13 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pfc, align 4
  %conv12.i = and i32 %mark, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str, i32 noundef %conv12.i) #12
  br label %cleanup41

sh_pfc_mark_to_enum.exit:                         ; preds = %for.body.i.sh_pfc_mark_to_enum.exit_crit_edge, %while.cond.sh_pfc_mark_to_enum.exit_crit_edge
  %add8.i.pn.in = phi i32 [ %pos.0, %while.cond.sh_pfc_mark_to_enum.exit_crit_edge ], [ %k.028.i, %for.body.i.sh_pfc_mark_to_enum.exit_crit_edge ]
  %add8.i.pn = add i32 %add8.i.pn.in, 1
  %enum_id.0.in = getelementptr i16, ptr %8, i32 %add8.i.pn
  %15 = ptrtoint ptr %enum_id.0.in to i32
  call void @__asan_load2_noabort(i32 %15)
  %enum_id.0 = load i16, ptr %enum_id.0.in, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add8.i.pn)
  %cmp = icmp slt i32 %add8.i.pn, 0
  br i1 %cmp, label %sh_pfc_mark_to_enum.exit.cleanup41_crit_edge, label %if.end

sh_pfc_mark_to_enum.exit.cleanup41_crit_edge:     ; preds = %sh_pfc_mark_to_enum.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end:                                           ; preds = %sh_pfc_mark_to_enum.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %enum_id.0)
  %tobool.not = icmp eq i16 %enum_id.0, 0
  br i1 %tobool.not, label %if.end.cleanup41_crit_edge, label %if.end6

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end6:                                          ; preds = %if.end
  %16 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %info.i, align 4
  %function = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %function to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %function, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %enum_id.0)
  %cmp.i = icmp ugt i16 %19, %enum_id.0
  br i1 %cmp.i, label %if.end6.if.then10_crit_edge, label %sh_pfc_enum_in_range.exit

if.end6.if.then10_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

sh_pfc_enum_in_range.exit:                        ; preds = %if.end6
  %end.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %17, i32 0, i32 6, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %end.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %21, i16 %enum_id.0)
  %cmp5.i56.not = icmp ult i16 %21, %enum_id.0
  br i1 %cmp5.i56.not, label %sh_pfc_enum_in_range.exit.if.then10_crit_edge, label %sh_pfc_enum_in_range.exit.if.end30_crit_edge

sh_pfc_enum_in_range.exit.if.end30_crit_edge:     ; preds = %sh_pfc_enum_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

sh_pfc_enum_in_range.exit.if.then10_crit_edge:    ; preds = %sh_pfc_enum_in_range.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then10

if.then10:                                        ; preds = %sh_pfc_enum_in_range.exit.if.then10_crit_edge, %if.end6.if.then10_crit_edge
  %22 = zext i32 %pinmux_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %pinmux_type, label %if.then16 [
    i32 1, label %if.then10.if.end30_crit_edge
    i32 2, label %if.then10.while.cond.backedge_crit_edge
  ]

if.then10.while.cond.backedge_crit_edge:          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.then10.if.end30_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

while.cond.backedge:                              ; preds = %if.end35, %land.lhs.true.while.cond.backedge_crit_edge, %sh_pfc_enum_in_range.exit64.while.cond.backedge_crit_edge, %if.then16.while.cond.backedge_crit_edge, %if.then10.while.cond.backedge_crit_edge
  br label %while.cond

if.then16:                                        ; preds = %if.then10
  %23 = ptrtoint ptr %range.0 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %range.0, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %enum_id.0)
  %cmp.i58 = icmp ugt i16 %24, %enum_id.0
  br i1 %cmp.i58, label %if.then16.while.cond.backedge_crit_edge, label %sh_pfc_enum_in_range.exit64

if.then16.while.cond.backedge_crit_edge:          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

sh_pfc_enum_in_range.exit64:                      ; preds = %if.then16
  %25 = ptrtoint ptr %end.i59 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %end.i59, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %enum_id.0)
  %cmp5.i60.not = icmp ult i16 %26, %enum_id.0
  br i1 %cmp5.i60.not, label %sh_pfc_enum_in_range.exit64.while.cond.backedge_crit_edge, label %land.lhs.true

sh_pfc_enum_in_range.exit64.while.cond.backedge_crit_edge: ; preds = %sh_pfc_enum_in_range.exit64
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

land.lhs.true:                                    ; preds = %sh_pfc_enum_in_range.exit64
  %27 = ptrtoint ptr %force to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %force, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %enum_id.0, i16 %28)
  %cmp21 = icmp eq i16 %enum_id.0, %28
  br i1 %cmp21, label %land.lhs.true.while.cond.backedge_crit_edge, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

land.lhs.true.while.cond.backedge_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.backedge

if.end30:                                         ; preds = %land.lhs.true.if.end30_crit_edge, %if.then10.if.end30_crit_edge, %sh_pfc_enum_in_range.exit.if.end30_crit_edge
  %cfg_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %17, i32 0, i32 15
  %29 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg_regs.i, align 4
  %reg_width67.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %reg_width67.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %reg_width67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not70.i = icmp eq i8 %32, 0
  br i1 %tobool.not70.i, label %if.end30.cleanup41_crit_edge, label %for.cond.preheader.preheader.i

if.end30.cleanup41_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

for.cond.preheader.preheader.i:                   ; preds = %if.end30
  %field_width69.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 0, i32 2
  br label %for.cond.preheader.i66

for.cond.preheader.i66:                           ; preds = %for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge, %for.cond.preheader.preheader.i
  %.in.i = phi ptr [ %field_width.i, %for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge ], [ %field_width69.i, %for.cond.preheader.preheader.i ]
  %conv72.in.i = phi i8 [ %44, %for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge ], [ %32, %for.cond.preheader.preheader.i ]
  %k.071.i = phi i32 [ %inc24.i, %for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge ], [ 0, %for.cond.preheader.preheader.i ]
  %conv72.i = zext i8 %conv72.in.i to i32
  %33 = ptrtoint ptr %.in.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %.in.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool3.not.i = icmp eq i8 %34, 0
  %enum_ids.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 %k.071.i, i32 4
  %35 = ptrtoint ptr %enum_ids.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %enum_ids.i, align 4
  %var_field_width.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 %k.071.i, i32 5
  br label %for.body.i67

for.body.i67:                                     ; preds = %for.inc21.i.for.body.i67_crit_edge, %for.cond.preheader.i66
  %m.066.i = phi i32 [ 0, %for.cond.preheader.i66 ], [ %inc19.i, %for.inc21.i.for.body.i67_crit_edge ]
  %pos.065.i = phi i32 [ 0, %for.cond.preheader.i66 ], [ %add18.i, %for.inc21.i.for.body.i67_crit_edge ]
  %bit_pos.064.i = phi i32 [ 0, %for.cond.preheader.i66 ], [ %add22.i, %for.inc21.i.for.body.i67_crit_edge ]
  br i1 %tobool3.not.i, label %if.else.i, label %for.body.i67.if.end6.i_crit_edge

for.body.i67.if.end6.i_crit_edge:                 ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.i

if.else.i:                                        ; preds = %for.body.i67
  call void @__sanitizer_cov_trace_pc() #11
  %37 = ptrtoint ptr %var_field_width.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %var_field_width.i, align 4
  %arrayidx.i68 = getelementptr i8, ptr %38, i32 %m.066.i
  %39 = ptrtoint ptr %arrayidx.i68 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i68, align 1
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.else.i, %for.body.i67.if.end6.i_crit_edge
  %curr_width.0.in.i = phi i8 [ %40, %if.else.i ], [ %34, %for.body.i67.if.end6.i_crit_edge ]
  %curr_width.0.i = zext i8 %curr_width.0.in.i to i32
  %shl.i = shl nuw i32 1, %curr_width.0.i
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.inc.i72.for.body10.i_crit_edge, %if.end6.i
  %n.062.i = phi i32 [ 0, %if.end6.i ], [ %inc.i70, %for.inc.i72.for.body10.i_crit_edge ]
  %add.i69 = add i32 %n.062.i, %pos.065.i
  %arrayidx11.i = getelementptr i16, ptr %36, i32 %add.i69
  %41 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx11.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %42, i16 %enum_id.0)
  %cmp14.i = icmp eq i16 %42, %enum_id.0
  br i1 %cmp14.i, label %if.end35, label %for.inc.i72

for.inc.i72:                                      ; preds = %for.body10.i
  %inc.i70 = add nuw i32 %n.062.i, 1
  %exitcond.not.i71 = icmp eq i32 %inc.i70, %shl.i
  br i1 %exitcond.not.i71, label %for.inc21.i, label %for.inc.i72.for.body10.i_crit_edge

for.inc.i72.for.body10.i_crit_edge:               ; preds = %for.inc.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body10.i

for.inc21.i:                                      ; preds = %for.inc.i72
  %add18.i = add i32 %shl.i, %pos.065.i
  %inc19.i = add i32 %m.066.i, 1
  %add22.i = add i32 %bit_pos.064.i, %curr_width.0.i
  %cmp.i73 = icmp ult i32 %add22.i, %conv72.i
  br i1 %cmp.i73, label %for.inc21.i.for.body.i67_crit_edge, label %for.cond.cleanup25_crit_edge.i

for.inc21.i.for.body.i67_crit_edge:               ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i67

for.cond.cleanup25_crit_edge.i:                   ; preds = %for.inc21.i
  %inc24.i = add i32 %k.071.i, 1
  %reg_width.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 %inc24.i, i32 1
  %43 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %reg_width.i, align 4
  %field_width.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 %inc24.i, i32 2
  %tobool.not.i74 = icmp eq i8 %44, 0
  br i1 %tobool.not.i74, label %for.cond.cleanup25_crit_edge.i.cleanup41_crit_edge, label %for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge

for.cond.cleanup25_crit_edge.i.for.cond.preheader.i66_crit_edge: ; preds = %for.cond.cleanup25_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.preheader.i66

for.cond.cleanup25_crit_edge.i.cleanup41_crit_edge: ; preds = %for.cond.cleanup25_crit_edge.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup41

if.end35:                                         ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.le.i = getelementptr %struct.pinmux_cfg_reg, ptr %30, i32 %k.071.i
  tail call fastcc void @sh_pfc_write_config_reg(ptr noundef %pfc, ptr noundef %add.ptr.le.i, i32 noundef %m.066.i, i32 noundef %n.062.i)
  br label %while.cond.backedge

cleanup41:                                        ; preds = %for.cond.cleanup25_crit_edge.i.cleanup41_crit_edge, %if.end30.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %sh_pfc_mark_to_enum.exit.cleanup41_crit_edge, %sh_pfc_mark_to_enum.exit.thread, %entry.cleanup41_crit_edge
  %retval.2 = phi i32 [ -22, %entry.cleanup41_crit_edge ], [ -22, %sh_pfc_mark_to_enum.exit.thread ], [ -22, %for.cond.cleanup25_crit_edge.i.cleanup41_crit_edge ], [ -22, %if.end30.cleanup41_crit_edge ], [ %add8.i.pn, %sh_pfc_mark_to_enum.exit.cleanup41_crit_edge ], [ 0, %if.end.cleanup41_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_write_config_reg(ptr nocapture noundef readonly %pfc, ptr nocapture noundef readonly %crp, i32 noundef %field, i32 noundef %value) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %crp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %crp, align 4
  %num_windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %2 = ptrtoint ptr %num_windows.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_windows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp24.not.i.i, label %entry.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %4 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %windows.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.sh_pfc_window, ptr %5, i32 %i.025.i.i
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp1.i.i = icmp ult i32 %1, %7
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %size.i.i = getelementptr %struct.sh_pfc_window, ptr %5, i32 %i.025.i.i, i32 2
  %8 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %9, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %1)
  %cmp3.not.i.i = icmp ugt i32 %add.i.i, %1
  br i1 %cmp3.not.i.i, label %sh_pfc_phys_to_virt.exit.i, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %3
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_phys_to_virt.exit.i:                       ; preds = %if.end.i.i
  %virt.i.i = getelementptr %struct.sh_pfc_window, ptr %5, i32 %i.025.i.i, i32 1
  %10 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt.i.i, align 4
  %sub.i.i = sub i32 %1, %7
  %add.ptr7.i.i = getelementptr i8, ptr %11, i32 %sub.i.i
  %field_width.i = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 2
  %12 = ptrtoint ptr %field_width.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %field_width.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sh_pfc_phys_to_virt.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = zext i8 %13 to i32
  %reg_width.i = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 1
  %14 = ptrtoint ptr %reg_width.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %reg_width.i, align 4
  %conv2.i = zext i8 %15 to i32
  %add.neg.i = xor i32 %field, -1
  %mul.neg.i = mul i32 %conv.i, %add.neg.i
  %sub5.i = add i32 %mul.neg.i, %conv2.i
  br label %sh_pfc_config_reg_helper.exit

if.else.i:                                        ; preds = %sh_pfc_phys_to_virt.exit.i
  %var_field_width.i = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 5
  %16 = ptrtoint ptr %var_field_width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %var_field_width.i, align 4
  %arrayidx.i = getelementptr i8, ptr %17, i32 %field
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.i, align 1
  %reg_width9.i = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 1
  %20 = ptrtoint ptr %reg_width9.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %reg_width9.i, align 4
  %conv10.i = zext i8 %21 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.i
  %pos.0 = phi i32 [ %conv10.i, %if.else.i ], [ %sub15.i, %for.body.i.for.body.i_crit_edge ]
  %k.033.i = phi i32 [ 0, %if.else.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx13.i = getelementptr i8, ptr %17, i32 %k.033.i
  %22 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx13.i, align 1
  %conv14.i = zext i8 %23 to i32
  %sub15.i = sub i32 %pos.0, %conv14.i
  %inc.i = add i32 %k.033.i, 1
  %cmp.not.i = icmp ugt i32 %inc.i, %field
  br i1 %cmp.not.i, label %sh_pfc_config_reg_helper.exit.loopexit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sh_pfc_config_reg_helper.exit.loopexit:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %19 to i32
  br label %sh_pfc_config_reg_helper.exit

sh_pfc_config_reg_helper.exit:                    ; preds = %sh_pfc_config_reg_helper.exit.loopexit, %if.then.i
  %pos.1 = phi i32 [ %sub5.i, %if.then.i ], [ %sub15.i, %sh_pfc_config_reg_helper.exit.loopexit ]
  %conv6.i.pn = phi i32 [ %conv.i, %if.then.i ], [ %conv6.i, %sh_pfc_config_reg_helper.exit.loopexit ]
  %mask.0.in = shl nsw i32 -1, %conv6.i.pn
  %mask.0 = xor i32 %mask.0.in, -1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_pfc_write_config_reg.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_pfc_write_config_reg, %do.end)) #9
          to label %if.then [label %do.end], !srcloc !194

if.then:                                          ; preds = %sh_pfc_config_reg_helper.exit
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pfc, align 4
  %26 = ptrtoint ptr %crp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %crp, align 4
  %reg_width = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 1
  %28 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %reg_width, align 4
  %conv = zext i8 %29 to i32
  %call.i = tail call i32 @__sw_hweight32(i32 noundef %mask.0) #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_pfc_write_config_reg.__UNIQUE_ID_ddebug183, ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef %27, i32 noundef %value, i32 noundef %field, i32 noundef %conv, i32 noundef %call.i) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %sh_pfc_config_reg_helper.exit
  %shl = shl i32 %mask.0, %pos.1
  %neg = xor i32 %shl, -1
  %shl289 = shl i32 %value, %pos.1
  %reg_width290 = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %crp, i32 0, i32 1
  %30 = ptrtoint ptr %reg_width290 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %reg_width290, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %31, label %do.body.i [
    i8 8, label %sw.bb.i
    i8 16, label %sw.bb1.i
    i8 32, label %sw.bb4.i
  ]

sw.bb.i:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7.i.i) #9, !srcloc !179
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  %conv.i313 = zext i8 %33 to i32
  br label %sh_pfc_read_raw_reg.exit

sw.bb1.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr7.i.i) #9, !srcloc !181
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %conv3.i = zext i16 %35 to i32
  br label %sh_pfc_read_raw_reg.exit

sw.bb4.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !183
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  br label %sh_pfc_read_raw_reg.exit

do.body.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #9, !srcloc !185
  unreachable

sh_pfc_read_raw_reg.exit:                         ; preds = %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i314 = phi i32 [ %37, %sw.bb4.i ], [ %conv3.i, %sw.bb1.i ], [ %conv.i313, %sw.bb.i ]
  %and293 = and i32 %retval.0.i314, %neg
  %or = or i32 %and293, %shl289
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i, align 4
  %unlock_reg.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 22
  %40 = ptrtoint ptr %unlock_reg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %unlock_reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i315 = icmp eq i32 %41, 0
  br i1 %tobool.not.i315, label %sh_pfc_read_raw_reg.exit.sh_pfc_unlock_reg.exit_crit_edge, label %if.end.i

sh_pfc_read_raw_reg.exit.sh_pfc_unlock_reg.exit_crit_edge: ; preds = %sh_pfc_read_raw_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_unlock_reg.exit

if.end.i:                                         ; preds = %sh_pfc_read_raw_reg.exit
  %42 = ptrtoint ptr %crp to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %crp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp.i = icmp slt i32 %41, 0
  %neg.i = xor i32 %41, -1
  %and.i = and i32 %43, %neg.i
  %unlock.0.i = select i1 %cmp.i, i32 %41, i32 %and.i
  %44 = ptrtoint ptr %num_windows.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_windows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp24.not.i.i317 = icmp eq i32 %45, 0
  br i1 %cmp24.not.i.i317, label %if.end.i.do.body.i.i331_crit_edge, label %for.body.lr.ph.i.i319

if.end.i.do.body.i.i331_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i331

for.body.lr.ph.i.i319:                            ; preds = %if.end.i
  %46 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %windows.i.i, align 4
  br label %for.body.i.i323

for.body.i.i323:                                  ; preds = %for.inc.i.i330.for.body.i.i323_crit_edge, %for.body.lr.ph.i.i319
  %i.025.i.i320 = phi i32 [ 0, %for.body.lr.ph.i.i319 ], [ %inc.i.i328, %for.inc.i.i330.for.body.i.i323_crit_edge ]
  %add.ptr.i.i321 = getelementptr %struct.sh_pfc_window, ptr %47, i32 %i.025.i.i320
  %48 = ptrtoint ptr %add.ptr.i.i321 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr.i.i321, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %unlock.0.i, i32 %49)
  %cmp1.i.i322 = icmp ult i32 %unlock.0.i, %49
  br i1 %cmp1.i.i322, label %for.body.i.i323.for.inc.i.i330_crit_edge, label %if.end.i.i327

for.body.i.i323.for.inc.i.i330_crit_edge:         ; preds = %for.body.i.i323
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i330

if.end.i.i327:                                    ; preds = %for.body.i.i323
  %size.i.i324 = getelementptr %struct.sh_pfc_window, ptr %47, i32 %i.025.i.i320, i32 2
  %50 = ptrtoint ptr %size.i.i324 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i.i324, align 4
  %add.i.i325 = add i32 %51, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i325, i32 %unlock.0.i)
  %cmp3.not.i.i326 = icmp ugt i32 %add.i.i325, %unlock.0.i
  br i1 %cmp3.not.i.i326, label %sh_pfc_phys_to_virt.exit.i335, label %if.end.i.i327.for.inc.i.i330_crit_edge

if.end.i.i327.for.inc.i.i330_crit_edge:           ; preds = %if.end.i.i327
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i330

for.inc.i.i330:                                   ; preds = %if.end.i.i327.for.inc.i.i330_crit_edge, %for.body.i.i323.for.inc.i.i330_crit_edge
  %inc.i.i328 = add nuw i32 %i.025.i.i320, 1
  %exitcond.not.i.i329 = icmp eq i32 %inc.i.i328, %45
  br i1 %exitcond.not.i.i329, label %for.inc.i.i330.do.body.i.i331_crit_edge, label %for.inc.i.i330.for.body.i.i323_crit_edge

for.inc.i.i330.for.body.i.i323_crit_edge:         ; preds = %for.inc.i.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i323

for.inc.i.i330.do.body.i.i331_crit_edge:          ; preds = %for.inc.i.i330
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i331

do.body.i.i331:                                   ; preds = %for.inc.i.i330.do.body.i.i331_crit_edge, %if.end.i.do.body.i.i331_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_phys_to_virt.exit.i335:                    ; preds = %if.end.i.i327
  call void @__sanitizer_cov_trace_pc() #11
  %virt.i.i332 = getelementptr %struct.sh_pfc_window, ptr %47, i32 %i.025.i.i320, i32 1
  %52 = ptrtoint ptr %virt.i.i332 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %virt.i.i332, align 4
  %sub.i.i333 = sub i32 %unlock.0.i, %49
  %add.ptr7.i.i334 = getelementptr i8, ptr %53, i32 %sub.i.i333
  %neg9.i = xor i32 %or, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %54 = tail call i32 @llvm.bswap.i32(i32 %neg9.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i334, i32 %54) #9, !srcloc !191
  br label %sh_pfc_unlock_reg.exit

sh_pfc_unlock_reg.exit:                           ; preds = %sh_pfc_phys_to_virt.exit.i335, %sh_pfc_read_raw_reg.exit.sh_pfc_unlock_reg.exit_crit_edge
  %55 = ptrtoint ptr %reg_width290 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %reg_width290, align 4
  %57 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %56, label %do.body.i340 [
    i8 8, label %sw.bb.i337
    i8 16, label %sw.bb1.i339
    i8 32, label %sw.bb3.i
  ]

sw.bb.i337:                                       ; preds = %sh_pfc_unlock_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i336 = trunc i32 %or to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !186
  tail call void @arm_heavy_mb() #9
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr7.i.i, i8 %conv.i336) #9, !srcloc !187
  br label %sh_pfc_write_raw_reg.exit

sw.bb1.i339:                                      ; preds = %sh_pfc_unlock_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %conv2.i338 = trunc i32 %or to i16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !188
  tail call void @arm_heavy_mb() #9
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv2.i338) #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7.i.i, i16 %58) #9, !srcloc !189
  br label %sh_pfc_write_raw_reg.exit

sw.bb3.i:                                         ; preds = %sh_pfc_unlock_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !190
  tail call void @arm_heavy_mb() #9
  %59 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i.i, i32 %59) #9, !srcloc !191
  br label %sh_pfc_write_raw_reg.exit

do.body.i340:                                     ; preds = %sh_pfc_unlock_reg.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 170, 0\0A.popsection", ""() #9, !srcloc !192
  unreachable

sh_pfc_write_raw_reg.exit:                        ; preds = %sw.bb3.i, %sw.bb1.i339, %sw.bb.i337
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sh_pfc_check_driver() #13
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sh_pfc_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_driver() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sh_pfc_driver, i32 0, i32 5, i32 6), align 4
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef %0, ptr noundef null) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 2400) #14
  store ptr %call7.i.i.i, ptr @sh_pfc_regs, align 4
  %tobool2.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 13), align 4
  %call7.i.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 6000) #14
  store ptr %call7.i.i.i1, ptr @sh_pfc_enums, align 4
  %tobool6.not = icmp eq ptr %call7.i.i.i1, null
  br i1 %tobool6.not, label %if.end4.free_regs_crit_edge, label %do.end

if.end4.free_regs_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %free_regs

do.end:                                           ; preds = %if.end4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  %3 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sh_pfc_driver, i32 0, i32 6), align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool11.not2 = icmp eq i8 %5, 0
  br i1 %tobool11.not2, label %do.end.for.cond14.preheader_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.cond14.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body.for.cond14.preheader_crit_edge, %do.end.for.cond14.preheader_crit_edge
  %6 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sh_pfc_driver, i32 0, i32 5, i32 6), align 4
  %compatible4 = getelementptr %struct.of_device_id, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %compatible4 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %compatible4, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool19.not5 = icmp eq i8 %8, 0
  br i1 %tobool19.not5, label %for.cond14.preheader.do.end29_crit_edge, label %for.cond14.preheader.for.body20_crit_edge

for.cond14.preheader.for.body20_crit_edge:        ; preds = %for.cond14.preheader
  br label %for.body20

for.cond14.preheader.do.end29_crit_edge:          ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %9 = phi ptr [ %13, %for.body.for.body_crit_edge ], [ %3, %do.end.for.body_crit_edge ]
  %i.03 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %do.end.for.body_crit_edge ]
  %driver_data = getelementptr %struct.platform_device_id, ptr %9, i32 %i.03, i32 1
  %10 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %driver_data, align 4
  %12 = inttoptr i32 %11 to ptr
  tail call fastcc void @sh_pfc_check_info(ptr noundef %12) #13
  %inc = add i32 %i.03, 1
  %13 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sh_pfc_driver, i32 0, i32 6), align 4
  %arrayidx = getelementptr %struct.platform_device_id, ptr %13, i32 %inc
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 4
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %for.body.for.cond14.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.cond14.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond14.preheader

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.cond14.preheader.for.body20_crit_edge
  %16 = phi ptr [ %19, %for.body20.for.body20_crit_edge ], [ %6, %for.cond14.preheader.for.body20_crit_edge ]
  %i.16 = phi i32 [ %inc25, %for.body20.for.body20_crit_edge ], [ 0, %for.cond14.preheader.for.body20_crit_edge ]
  %data = getelementptr %struct.of_device_id, ptr %16, i32 %i.16, i32 3
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  tail call fastcc void @sh_pfc_check_info(ptr noundef %18) #13
  %inc25 = add i32 %i.16, 1
  %19 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sh_pfc_driver, i32 0, i32 5, i32 6), align 4
  %compatible = getelementptr %struct.of_device_id, ptr %19, i32 %inc25, i32 2
  %20 = ptrtoint ptr %compatible to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %compatible, align 4
  %tobool19.not = icmp eq i8 %21, 0
  br i1 %tobool19.not, label %for.body20.do.end29_crit_edge, label %for.body20.for.body20_crit_edge

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.body20.do.end29_crit_edge:                    ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end29:                                         ; preds = %for.body20.do.end29_crit_edge, %for.cond14.preheader.do.end29_crit_edge
  %22 = load i32, ptr @sh_pfc_errors, align 4
  %23 = load i32, ptr @sh_pfc_warnings, align 4
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %22, i32 noundef %23) #12
  %24 = load ptr, ptr @sh_pfc_enums, align 4
  tail call void @kfree(ptr noundef %24) #9
  br label %free_regs

free_regs:                                        ; preds = %do.end29, %if.end4.free_regs_crit_edge
  %25 = load ptr, ptr @sh_pfc_regs, align 4
  tail call void @kfree(ptr noundef %25) #9
  br label %cleanup

cleanup:                                          ; preds = %free_regs, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_info(ptr nocapture noundef readonly %info) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bias_regs1 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 17
  %0 = ptrtoint ptr %bias_regs1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bias_regs1, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %3) #12
  store i32 0, ptr @sh_pfc_num_regs, align 4
  store i32 0, ptr @sh_pfc_num_enums, align 4
  %nr_pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 8
  %4 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp616.not = icmp eq i32 %5, 0
  br i1 %cmp616.not, label %entry.for.end82_crit_edge, label %for.body.lr.ph

entry.for.end82_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

for.body.lr.ph:                                   ; preds = %entry
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.0617 = phi i32 [ 0, %for.body.lr.ph ], [ %inc81, %cleanup.for.body_crit_edge ]
  %6 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pins, align 4
  %arrayidx = getelementptr %struct.sh_pfc_pin, ptr %7, i32 %i.0617
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %do.end6, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0617)
  %cmp12612.not = icmp eq i32 %i.0617, 0
  br i1 %cmp12612.not, label %for.cond11.preheader.cleanup_crit_edge, label %for.body13.lr.ph

for.cond11.preheader.cleanup_crit_edge:           ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body13.lr.ph:                                 ; preds = %for.cond11.preheader
  %pin31 = getelementptr %struct.sh_pfc_pin, ptr %7, i32 %i.0617, i32 2
  %enum_id = getelementptr %struct.sh_pfc_pin, ptr %7, i32 %i.0617, i32 3
  br label %for.body13

do.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %3, i32 noundef %i.0617) #12
  %10 = load i32, ptr @sh_pfc_errors, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @sh_pfc_errors, align 4
  br label %cleanup

for.body13:                                       ; preds = %if.end78.for.body13_crit_edge, %for.body13.lr.ph
  %j.0613 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc79, %if.end78.for.body13_crit_edge ]
  %11 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pins, align 4
  %arrayidx15 = getelementptr %struct.sh_pfc_pin, ptr %12, i32 %j.0613
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx15, align 4
  %tobool.not.i = icmp eq ptr %14, null
  %tobool1.not.i = icmp eq ptr %16, null
  %or.cond.i = or i1 %tobool.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %for.body13.if.end30_crit_edge, label %same_name.exit

for.body13.if.end30_crit_edge:                    ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

same_name.exit:                                   ; preds = %for.body13
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef nonnull %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %do.end23, label %same_name.exit.if.end30_crit_edge

same_name.exit.if.end30_crit_edge:                ; preds = %same_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

do.end23:                                         ; preds = %same_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %3, ptr noundef nonnull %14) #12
  %17 = load i32, ptr @sh_pfc_errors, align 4
  %inc27 = add i32 %17, 1
  store i32 %inc27, ptr @sh_pfc_errors, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end23, %same_name.exit.if.end30_crit_edge, %for.body13.if.end30_crit_edge
  %18 = ptrtoint ptr %pin31 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %pin31, align 4
  %conv = zext i16 %19 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %19)
  %cmp32.not = icmp eq i16 %19, -1
  br i1 %cmp32.not, label %if.end30.if.end54_crit_edge, label %land.lhs.true

if.end30.if.end54_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end30
  %pin36 = getelementptr %struct.sh_pfc_pin, ptr %12, i32 %j.0613, i32 2
  %20 = ptrtoint ptr %pin36 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %pin36, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %19, i16 %21)
  %cmp38 = icmp eq i16 %19, %21
  br i1 %cmp38, label %do.end44, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end54

do.end44:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %call50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %3, ptr noundef %23, ptr noundef %25, i32 noundef %conv) #12
  %26 = load i32, ptr @sh_pfc_errors, align 4
  %inc51 = add i32 %26, 1
  store i32 %inc51, ptr @sh_pfc_errors, align 4
  br label %if.end54

if.end54:                                         ; preds = %do.end44, %land.lhs.true.if.end54_crit_edge, %if.end30.if.end54_crit_edge
  %27 = ptrtoint ptr %enum_id to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %enum_id, align 2
  %conv55 = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %tobool56.not = icmp eq i16 %28, 0
  br i1 %tobool56.not, label %if.end54.if.end78_crit_edge, label %land.lhs.true57

if.end54.if.end78_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

land.lhs.true57:                                  ; preds = %if.end54
  %enum_id60 = getelementptr %struct.sh_pfc_pin, ptr %12, i32 %j.0613, i32 3
  %29 = ptrtoint ptr %enum_id60 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %enum_id60, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %28, i16 %30)
  %cmp62 = icmp eq i16 %28, %30
  br i1 %cmp62, label %do.end68, label %land.lhs.true57.if.end78_crit_edge

land.lhs.true57.if.end78_crit_edge:               ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

do.end68:                                         ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx, align 4
  %33 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx15, align 4
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %3, ptr noundef %32, ptr noundef %34, i32 noundef %conv55) #12
  %35 = load i32, ptr @sh_pfc_errors, align 4
  %inc75 = add i32 %35, 1
  store i32 %inc75, ptr @sh_pfc_errors, align 4
  br label %if.end78

if.end78:                                         ; preds = %do.end68, %land.lhs.true57.if.end78_crit_edge, %if.end54.if.end78_crit_edge
  %inc79 = add nuw i32 %j.0613, 1
  %exitcond.not = icmp eq i32 %inc79, %i.0617
  br i1 %exitcond.not, label %if.end78.cleanup_crit_edge, label %if.end78.for.body13_crit_edge

if.end78.for.body13_crit_edge:                    ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body13

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %if.end78.cleanup_crit_edge, %do.end6, %for.cond11.preheader.cleanup_crit_edge
  %inc81 = add nuw i32 %i.0617, 1
  %36 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_pins, align 4
  %cmp = icmp ult i32 %inc81, %37
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end82_crit_edge

cleanup.for.end82_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end82

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end82:                                        ; preds = %cleanup.for.end82_crit_edge, %entry.for.end82_crit_edge
  %nr_groups = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 10
  %38 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_groups, align 4
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %39, i32 4) #9
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %for.end82.cleanup404_crit_edge, label %if.end7.i.i, !prof !195

for.end82.cleanup404_crit_edge:                   ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

if.end7.i.i:                                      ; preds = %for.end82
  %42 = extractvalue { i32, i1 } %40, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %42, i32 noundef 3520) #16
  %tobool84.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool84.not, label %if.end7.i.i.cleanup404_crit_edge, label %for.cond87.preheader

if.end7.i.i.cleanup404_crit_edge:                 ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

for.cond87.preheader:                             ; preds = %if.end7.i.i
  %nr_functions = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 12
  %43 = ptrtoint ptr %nr_functions to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp88630.not = icmp eq i32 %44, 0
  br i1 %cmp88630.not, label %for.cond87.preheader.for.cond177.preheader_crit_edge, label %for.body90.lr.ph

for.cond87.preheader.for.cond177.preheader_crit_edge: ; preds = %for.cond87.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond177.preheader

for.body90.lr.ph:                                 ; preds = %for.cond87.preheader
  %functions = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 11
  %groups140 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 9
  br label %for.body90

for.cond177.preheader:                            ; preds = %cleanup171.for.cond177.preheader_crit_edge, %for.cond87.preheader.for.cond177.preheader_crit_edge
  %45 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp179636.not = icmp eq i32 %46, 0
  br i1 %cmp179636.not, label %for.cond177.preheader.for.end256_crit_edge, label %for.body181.lr.ph

for.cond177.preheader.for.end256_crit_edge:       ; preds = %for.cond177.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end256

for.body181.lr.ph:                                ; preds = %for.cond177.preheader
  %groups182 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 9
  br label %for.body181

for.body90:                                       ; preds = %cleanup171.for.body90_crit_edge, %for.body90.lr.ph
  %i.1631 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc175, %cleanup171.for.body90_crit_edge ]
  %47 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %functions, align 4
  %arrayidx91 = getelementptr %struct.sh_pfc_function, ptr %48, i32 %i.1631
  %49 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx91, align 4
  %tobool93.not = icmp eq ptr %50, null
  br i1 %tobool93.not, label %do.end98, label %for.cond105.preheader

for.cond105.preheader:                            ; preds = %for.body90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1631)
  %cmp106620.not = icmp eq i32 %i.1631, 0
  br i1 %cmp106620.not, label %for.cond105.preheader.for.cond129.preheader_crit_edge, label %for.cond105.preheader.for.body108_crit_edge

for.cond105.preheader.for.body108_crit_edge:      ; preds = %for.cond105.preheader
  br label %for.body108

for.cond105.preheader.for.cond129.preheader_crit_edge: ; preds = %for.cond105.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond129.preheader

do.end98:                                         ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #11
  %call100 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %3, i32 noundef %i.1631) #12
  %51 = load i32, ptr @sh_pfc_errors, align 4
  %inc101 = add i32 %51, 1
  store i32 %inc101, ptr @sh_pfc_errors, align 4
  br label %cleanup171

for.cond129.preheader:                            ; preds = %for.inc126.for.cond129.preheader_crit_edge, %for.cond105.preheader.for.cond129.preheader_crit_edge
  %nr_groups130 = getelementptr %struct.sh_pfc_function, ptr %48, i32 %i.1631, i32 2
  %52 = ptrtoint ptr %nr_groups130 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_groups130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp131625.not = icmp eq i32 %53, 0
  br i1 %cmp131625.not, label %for.cond129.preheader.cleanup171_crit_edge, label %for.cond134.preheader.lr.ph

for.cond129.preheader.cleanup171_crit_edge:       ; preds = %for.cond129.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup171

for.cond134.preheader.lr.ph:                      ; preds = %for.cond129.preheader
  %groups = getelementptr %struct.sh_pfc_function, ptr %48, i32 %i.1631, i32 1
  br label %for.cond134.preheader

for.body108:                                      ; preds = %for.inc126.for.body108_crit_edge, %for.cond105.preheader.for.body108_crit_edge
  %j.1621 = phi i32 [ %inc127, %for.inc126.for.body108_crit_edge ], [ 0, %for.cond105.preheader.for.body108_crit_edge ]
  %54 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx91, align 4
  %56 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %functions, align 4
  %arrayidx111 = getelementptr %struct.sh_pfc_function, ptr %57, i32 %j.1621
  %58 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx111, align 4
  %tobool.not.i571 = icmp eq ptr %55, null
  %tobool1.not.i572 = icmp eq ptr %59, null
  %or.cond.i573 = or i1 %tobool.not.i571, %tobool1.not.i572
  br i1 %or.cond.i573, label %for.body108.for.inc126_crit_edge, label %same_name.exit578

for.body108.for.inc126_crit_edge:                 ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc126

same_name.exit578:                                ; preds = %for.body108
  %call.i574 = tail call i32 @strcmp(ptr noundef nonnull %55, ptr noundef nonnull %59) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i574)
  %tobool2.not.i575 = icmp eq i32 %call.i574, 0
  br i1 %tobool2.not.i575, label %do.end118, label %same_name.exit578.for.inc126_crit_edge

same_name.exit578.for.inc126_crit_edge:           ; preds = %same_name.exit578
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc126

do.end118:                                        ; preds = %same_name.exit578
  call void @__sanitizer_cov_trace_pc() #11
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %3, ptr noundef nonnull %55) #12
  %60 = load i32, ptr @sh_pfc_errors, align 4
  %inc122 = add i32 %60, 1
  store i32 %inc122, ptr @sh_pfc_errors, align 4
  br label %for.inc126

for.inc126:                                       ; preds = %do.end118, %same_name.exit578.for.inc126_crit_edge, %for.body108.for.inc126_crit_edge
  %inc127 = add nuw i32 %j.1621, 1
  %exitcond656.not = icmp eq i32 %inc127, %i.1631
  br i1 %exitcond656.not, label %for.inc126.for.cond129.preheader_crit_edge, label %for.inc126.for.body108_crit_edge

for.inc126.for.body108_crit_edge:                 ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body108

for.inc126.for.cond129.preheader_crit_edge:       ; preds = %for.inc126
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond129.preheader

for.cond134.preheader:                            ; preds = %for.inc168.for.cond134.preheader_crit_edge, %for.cond134.preheader.lr.ph
  %j.2626 = phi i32 [ 0, %for.cond134.preheader.lr.ph ], [ %inc169, %for.inc168.for.cond134.preheader_crit_edge ]
  %61 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp136622.not = icmp eq i32 %62, 0
  br i1 %cmp136622.not, label %for.cond134.preheader.for.end150_crit_edge, label %for.body138.lr.ph

for.cond134.preheader.for.end150_crit_edge:       ; preds = %for.cond134.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.body138.lr.ph:                                ; preds = %for.cond134.preheader
  %63 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %groups, align 4
  %arrayidx139 = getelementptr ptr, ptr %64, i32 %j.2626
  %65 = ptrtoint ptr %arrayidx139 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx139, align 4
  %67 = ptrtoint ptr %groups140 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %groups140, align 4
  %tobool.not.i579 = icmp eq ptr %66, null
  br label %for.body138

for.body138:                                      ; preds = %for.inc148.for.body138_crit_edge, %for.body138.lr.ph
  %k.0623 = phi i32 [ 0, %for.body138.lr.ph ], [ %inc149, %for.inc148.for.body138_crit_edge ]
  %arrayidx141 = getelementptr %struct.sh_pfc_pin_group, ptr %68, i32 %k.0623
  %69 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx141, align 4
  %tobool1.not.i580 = icmp eq ptr %70, null
  %or.cond.i581 = or i1 %tobool.not.i579, %tobool1.not.i580
  br i1 %or.cond.i581, label %for.body138.for.inc148_crit_edge, label %same_name.exit586

for.body138.for.inc148_crit_edge:                 ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc148

same_name.exit586:                                ; preds = %for.body138
  %call.i582 = tail call i32 @strcmp(ptr noundef nonnull %66, ptr noundef nonnull %70) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i582)
  %tobool2.not.i583 = icmp eq i32 %call.i582, 0
  br i1 %tobool2.not.i583, label %if.then144, label %same_name.exit586.for.inc148_crit_edge

same_name.exit586.for.inc148_crit_edge:           ; preds = %same_name.exit586
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc148

if.then144:                                       ; preds = %same_name.exit586
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx145 = getelementptr i32, ptr %call8.i.i, i32 %k.0623
  %71 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %arrayidx145, align 4
  %inc146 = add i32 %72, 1
  store i32 %inc146, ptr %arrayidx145, align 4
  br label %for.end150

for.inc148:                                       ; preds = %same_name.exit586.for.inc148_crit_edge, %for.body138.for.inc148_crit_edge
  %inc149 = add nuw i32 %k.0623, 1
  %exitcond657.not = icmp eq i32 %inc149, %62
  br i1 %exitcond657.not, label %for.inc148.for.end150_crit_edge, label %for.inc148.for.body138_crit_edge

for.inc148.for.body138_crit_edge:                 ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body138

for.inc148.for.end150_crit_edge:                  ; preds = %for.inc148
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end150

for.end150:                                       ; preds = %for.inc148.for.end150_crit_edge, %if.then144, %for.cond134.preheader.for.end150_crit_edge
  %k.0611 = phi i32 [ %k.0623, %if.then144 ], [ 0, %for.cond134.preheader.for.end150_crit_edge ], [ %62, %for.inc148.for.end150_crit_edge ]
  %73 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %k.0611, i32 %74)
  %cmp152 = icmp eq i32 %k.0611, %74
  br i1 %cmp152, label %do.end158, label %for.end150.for.inc168_crit_edge

for.end150.for.inc168_crit_edge:                  ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc168

do.end158:                                        ; preds = %for.end150
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %arrayidx91 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx91, align 4
  %77 = ptrtoint ptr %groups to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %groups, align 4
  %arrayidx162 = getelementptr ptr, ptr %78, i32 %j.2626
  %79 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx162, align 4
  %call163 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %3, ptr noundef %76, ptr noundef %80) #12
  %81 = load i32, ptr @sh_pfc_errors, align 4
  %inc164 = add i32 %81, 1
  store i32 %inc164, ptr @sh_pfc_errors, align 4
  br label %for.inc168

for.inc168:                                       ; preds = %do.end158, %for.end150.for.inc168_crit_edge
  %inc169 = add nuw i32 %j.2626, 1
  %82 = ptrtoint ptr %nr_groups130 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_groups130, align 4
  %cmp131 = icmp ult i32 %inc169, %83
  br i1 %cmp131, label %for.inc168.for.cond134.preheader_crit_edge, label %for.inc168.cleanup171_crit_edge

for.inc168.cleanup171_crit_edge:                  ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup171

for.inc168.for.cond134.preheader_crit_edge:       ; preds = %for.inc168
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond134.preheader

cleanup171:                                       ; preds = %for.inc168.cleanup171_crit_edge, %for.cond129.preheader.cleanup171_crit_edge, %do.end98
  %inc175 = add nuw i32 %i.1631, 1
  %84 = ptrtoint ptr %nr_functions to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %nr_functions, align 4
  %cmp88 = icmp ult i32 %inc175, %85
  br i1 %cmp88, label %cleanup171.for.body90_crit_edge, label %cleanup171.for.cond177.preheader_crit_edge

cleanup171.for.cond177.preheader_crit_edge:       ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond177.preheader

cleanup171.for.body90_crit_edge:                  ; preds = %cleanup171
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body90

for.body181:                                      ; preds = %cleanup251.for.body181_crit_edge, %for.body181.lr.ph
  %i.2637 = phi i32 [ 0, %for.body181.lr.ph ], [ %inc255, %cleanup251.for.body181_crit_edge ]
  %86 = ptrtoint ptr %groups182 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %groups182, align 4
  %arrayidx183 = getelementptr %struct.sh_pfc_pin_group, ptr %87, i32 %i.2637
  %88 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx183, align 4
  %tobool185.not = icmp eq ptr %89, null
  br i1 %tobool185.not, label %do.end190, label %for.cond197.preheader

for.cond197.preheader:                            ; preds = %for.body181
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2637)
  %cmp198634.not = icmp eq i32 %i.2637, 0
  br i1 %cmp198634.not, label %for.cond197.preheader.for.end220_crit_edge, label %for.cond197.preheader.for.body200_crit_edge

for.cond197.preheader.for.body200_crit_edge:      ; preds = %for.cond197.preheader
  br label %for.body200

for.cond197.preheader.for.end220_crit_edge:       ; preds = %for.cond197.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end220

do.end190:                                        ; preds = %for.body181
  call void @__sanitizer_cov_trace_pc() #11
  %call192 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %3, i32 noundef %i.2637) #12
  br label %cleanup251.sink.split

for.body200:                                      ; preds = %for.inc218.for.body200_crit_edge, %for.cond197.preheader.for.body200_crit_edge
  %j.3635 = phi i32 [ %inc219, %for.inc218.for.body200_crit_edge ], [ 0, %for.cond197.preheader.for.body200_crit_edge ]
  %90 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx183, align 4
  %92 = ptrtoint ptr %groups182 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %groups182, align 4
  %arrayidx203 = getelementptr %struct.sh_pfc_pin_group, ptr %93, i32 %j.3635
  %94 = ptrtoint ptr %arrayidx203 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx203, align 4
  %tobool.not.i587 = icmp eq ptr %91, null
  %tobool1.not.i588 = icmp eq ptr %95, null
  %or.cond.i589 = or i1 %tobool.not.i587, %tobool1.not.i588
  br i1 %or.cond.i589, label %for.body200.for.inc218_crit_edge, label %same_name.exit594

for.body200.for.inc218_crit_edge:                 ; preds = %for.body200
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc218

same_name.exit594:                                ; preds = %for.body200
  %call.i590 = tail call i32 @strcmp(ptr noundef nonnull %91, ptr noundef nonnull %95) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i590)
  %tobool2.not.i591 = icmp eq i32 %call.i590, 0
  br i1 %tobool2.not.i591, label %do.end210, label %same_name.exit594.for.inc218_crit_edge

same_name.exit594.for.inc218_crit_edge:           ; preds = %same_name.exit594
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc218

do.end210:                                        ; preds = %same_name.exit594
  call void @__sanitizer_cov_trace_pc() #11
  %call213 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %3, ptr noundef nonnull %91) #12
  %96 = load i32, ptr @sh_pfc_errors, align 4
  %inc214 = add i32 %96, 1
  store i32 %inc214, ptr @sh_pfc_errors, align 4
  br label %for.inc218

for.inc218:                                       ; preds = %do.end210, %same_name.exit594.for.inc218_crit_edge, %for.body200.for.inc218_crit_edge
  %inc219 = add nuw i32 %j.3635, 1
  %exitcond658.not = icmp eq i32 %inc219, %i.2637
  br i1 %exitcond658.not, label %for.inc218.for.end220_crit_edge, label %for.inc218.for.body200_crit_edge

for.inc218.for.body200_crit_edge:                 ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body200

for.inc218.for.end220_crit_edge:                  ; preds = %for.inc218
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end220

for.end220:                                       ; preds = %for.inc218.for.end220_crit_edge, %for.cond197.preheader.for.end220_crit_edge
  %arrayidx221 = getelementptr i32, ptr %call8.i.i, i32 %i.2637
  %97 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx221, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %98, label %do.end241 [
    i32 0, label %do.end227
    i32 1, label %for.end220.cleanup251_crit_edge
  ]

for.end220.cleanup251_crit_edge:                  ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup251

do.end227:                                        ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx183, align 4
  %call230 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %3, ptr noundef %101) #12
  br label %cleanup251.sink.split

do.end241:                                        ; preds = %for.end220
  call void @__sanitizer_cov_trace_pc() #11
  %102 = ptrtoint ptr %arrayidx183 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx183, align 4
  %call245 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %3, ptr noundef %103, i32 noundef %98) #12
  br label %cleanup251.sink.split

cleanup251.sink.split:                            ; preds = %do.end241, %do.end227, %do.end190
  %sh_pfc_errors.sink664 = phi ptr [ @sh_pfc_errors, %do.end227 ], [ @sh_pfc_warnings, %do.end241 ], [ @sh_pfc_errors, %do.end190 ]
  %104 = ptrtoint ptr %sh_pfc_errors.sink664 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %sh_pfc_errors.sink664, align 4
  %inc231 = add i32 %105, 1
  store i32 %inc231, ptr %sh_pfc_errors.sink664, align 4
  br label %cleanup251

cleanup251:                                       ; preds = %cleanup251.sink.split, %for.end220.cleanup251_crit_edge
  %inc255 = add nuw i32 %i.2637, 1
  %106 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nr_groups, align 4
  %cmp179 = icmp ult i32 %inc255, %107
  br i1 %cmp179, label %cleanup251.for.body181_crit_edge, label %cleanup251.for.end256_crit_edge

cleanup251.for.end256_crit_edge:                  ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end256

cleanup251.for.body181_crit_edge:                 ; preds = %cleanup251
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body181

for.end256:                                       ; preds = %cleanup251.for.end256_crit_edge, %for.cond177.preheader.for.end256_crit_edge
  tail call void @kfree(ptr noundef nonnull %call8.i.i) #9
  %cfg_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 15
  %108 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %cfg_regs, align 4
  %tobool258.not639 = icmp eq ptr %109, null
  br i1 %tobool258.not639, label %for.end256.for.end267_crit_edge, label %for.end256.land.rhs_crit_edge

for.end256.land.rhs_crit_edge:                    ; preds = %for.end256
  br label %land.rhs

for.end256.for.end267_crit_edge:                  ; preds = %for.end256
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end267

land.rhs:                                         ; preds = %for.body262.land.rhs_crit_edge, %for.end256.land.rhs_crit_edge
  %110 = phi ptr [ %114, %for.body262.land.rhs_crit_edge ], [ %109, %for.end256.land.rhs_crit_edge ]
  %i.3640 = phi i32 [ %inc266, %for.body262.land.rhs_crit_edge ], [ 0, %for.end256.land.rhs_crit_edge ]
  %arrayidx260 = getelementptr %struct.pinmux_cfg_reg, ptr %110, i32 %i.3640
  %111 = ptrtoint ptr %arrayidx260 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %arrayidx260, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %tobool261.not = icmp eq i32 %112, 0
  br i1 %tobool261.not, label %land.rhs.for.end267_crit_edge, label %for.body262

land.rhs.for.end267_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end267

for.body262:                                      ; preds = %land.rhs
  tail call fastcc void @sh_pfc_check_cfg_reg(ptr noundef %3, ptr noundef %arrayidx260) #13
  %inc266 = add i32 %i.3640, 1
  %113 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %cfg_regs, align 4
  %tobool258.not = icmp eq ptr %114, null
  br i1 %tobool258.not, label %for.body262.for.end267_crit_edge, label %for.body262.land.rhs_crit_edge

for.body262.land.rhs_crit_edge:                   ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

for.body262.for.end267_crit_edge:                 ; preds = %for.body262
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end267

for.end267:                                       ; preds = %for.body262.for.end267_crit_edge, %land.rhs.for.end267_crit_edge, %for.end256.for.end267_crit_edge
  %drive_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 16
  %115 = ptrtoint ptr %drive_regs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %drive_regs, align 4
  %tobool269.not641 = icmp eq ptr %116, null
  br i1 %tobool269.not641, label %for.end267.for.end281_crit_edge, label %for.end267.land.rhs270_crit_edge

for.end267.land.rhs270_crit_edge:                 ; preds = %for.end267
  br label %land.rhs270

for.end267.for.end281_crit_edge:                  ; preds = %for.end267
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end281

land.rhs270:                                      ; preds = %for.body276.land.rhs270_crit_edge, %for.end267.land.rhs270_crit_edge
  %117 = phi ptr [ %121, %for.body276.land.rhs270_crit_edge ], [ %116, %for.end267.land.rhs270_crit_edge ]
  %i.4642 = phi i32 [ %inc280, %for.body276.land.rhs270_crit_edge ], [ 0, %for.end267.land.rhs270_crit_edge ]
  %arrayidx272 = getelementptr %struct.pinmux_drive_reg, ptr %117, i32 %i.4642
  %118 = ptrtoint ptr %arrayidx272 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx272, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool274.not = icmp eq i32 %119, 0
  br i1 %tobool274.not, label %land.rhs270.for.end281_crit_edge, label %for.body276

land.rhs270.for.end281_crit_edge:                 ; preds = %land.rhs270
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end281

for.body276:                                      ; preds = %land.rhs270
  tail call fastcc void @sh_pfc_check_drive_reg(ptr noundef %info, ptr noundef %arrayidx272) #13
  %inc280 = add i32 %i.4642, 1
  %120 = ptrtoint ptr %drive_regs to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %drive_regs, align 4
  %tobool269.not = icmp eq ptr %121, null
  br i1 %tobool269.not, label %for.body276.for.end281_crit_edge, label %for.body276.land.rhs270_crit_edge

for.body276.land.rhs270_crit_edge:                ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs270

for.body276.for.end281_crit_edge:                 ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end281

for.end281:                                       ; preds = %for.body276.for.end281_crit_edge, %land.rhs270.for.end281_crit_edge, %for.end267.for.end281_crit_edge
  %tobool283.not = icmp eq ptr %1, null
  br i1 %tobool283.not, label %for.end281.for.end294_crit_edge, label %for.end281.land.rhs284_crit_edge

for.end281.land.rhs284_crit_edge:                 ; preds = %for.end281
  br label %land.rhs284

for.end281.for.end294_crit_edge:                  ; preds = %for.end281
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end294

land.rhs284:                                      ; preds = %for.body290, %for.end281.land.rhs284_crit_edge
  %i.5643 = phi i32 [ %inc293, %for.body290 ], [ 0, %for.end281.land.rhs284_crit_edge ]
  %arrayidx285 = getelementptr %struct.pinmux_bias_reg, ptr %1, i32 %i.5643
  %122 = ptrtoint ptr %arrayidx285 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx285, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool286.not = icmp eq i32 %123, 0
  br i1 %tobool286.not, label %lor.rhs, label %land.rhs284.for.body290_crit_edge

land.rhs284.for.body290_crit_edge:                ; preds = %land.rhs284
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body290

lor.rhs:                                          ; preds = %land.rhs284
  %pud = getelementptr %struct.pinmux_bias_reg, ptr %1, i32 %i.5643, i32 1
  %124 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool288.not = icmp eq i32 %125, 0
  br i1 %tobool288.not, label %lor.rhs.for.end294_crit_edge, label %lor.rhs.for.body290_crit_edge

lor.rhs.for.body290_crit_edge:                    ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body290

lor.rhs.for.end294_crit_edge:                     ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end294

for.body290:                                      ; preds = %lor.rhs.for.body290_crit_edge, %land.rhs284.for.body290_crit_edge
  tail call fastcc void @sh_pfc_check_bias_reg(ptr noundef %info, ptr noundef %arrayidx285) #13
  %inc293 = add i32 %i.5643, 1
  br label %land.rhs284

for.end294:                                       ; preds = %lor.rhs.for.end294_crit_edge, %for.end281.for.end294_crit_edge
  %ioctrl_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 18
  %126 = ptrtoint ptr %ioctrl_regs to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ioctrl_regs, align 4
  %tobool296.not645 = icmp eq ptr %127, null
  br i1 %tobool296.not645, label %for.end294.for.end309_crit_edge, label %for.end294.land.rhs297_crit_edge

for.end294.land.rhs297_crit_edge:                 ; preds = %for.end294
  br label %land.rhs297

for.end294.for.end309_crit_edge:                  ; preds = %for.end294
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end309

land.rhs297:                                      ; preds = %for.body303.land.rhs297_crit_edge, %for.end294.land.rhs297_crit_edge
  %128 = phi ptr [ %132, %for.body303.land.rhs297_crit_edge ], [ %127, %for.end294.land.rhs297_crit_edge ]
  %i.6646 = phi i32 [ %inc308, %for.body303.land.rhs297_crit_edge ], [ 0, %for.end294.land.rhs297_crit_edge ]
  %arrayidx299 = getelementptr %struct.pinmux_ioctrl_reg, ptr %128, i32 %i.6646
  %129 = ptrtoint ptr %arrayidx299 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx299, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool301.not = icmp eq i32 %130, 0
  br i1 %tobool301.not, label %land.rhs297.for.end309_crit_edge, label %for.body303

land.rhs297.for.end309_crit_edge:                 ; preds = %land.rhs297
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end309

for.body303:                                      ; preds = %land.rhs297
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %3, i32 noundef %130, i32 noundef -1) #13
  %inc308 = add i32 %i.6646, 1
  %131 = ptrtoint ptr %ioctrl_regs to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %ioctrl_regs, align 4
  %tobool296.not = icmp eq ptr %132, null
  br i1 %tobool296.not, label %for.body303.for.end309_crit_edge, label %for.body303.land.rhs297_crit_edge

for.body303.land.rhs297_crit_edge:                ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs297

for.body303.for.end309_crit_edge:                 ; preds = %for.body303
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end309

for.end309:                                       ; preds = %for.body303.for.end309_crit_edge, %land.rhs297.for.end309_crit_edge, %for.end294.for.end309_crit_edge
  %data_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 19
  %133 = ptrtoint ptr %data_regs to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %data_regs, align 4
  %tobool311.not647 = icmp eq ptr %134, null
  br i1 %tobool311.not647, label %for.end309.for.end337_crit_edge, label %for.end309.land.rhs312_crit_edge

for.end309.land.rhs312_crit_edge:                 ; preds = %for.end309
  br label %land.rhs312

for.end309.for.end337_crit_edge:                  ; preds = %for.end309
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end337

land.rhs312:                                      ; preds = %for.body318.land.rhs312_crit_edge, %for.end309.land.rhs312_crit_edge
  %135 = phi ptr [ %149, %for.body318.land.rhs312_crit_edge ], [ %134, %for.end309.land.rhs312_crit_edge ]
  %i.7648 = phi i32 [ %inc336, %for.body318.land.rhs312_crit_edge ], [ 0, %for.end309.land.rhs312_crit_edge ]
  %arrayidx314 = getelementptr %struct.pinmux_data_reg, ptr %135, i32 %i.7648
  %136 = ptrtoint ptr %arrayidx314 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx314, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool316.not = icmp eq i32 %137, 0
  br i1 %tobool316.not, label %land.rhs312.for.end337_crit_edge, label %for.body318

land.rhs312.for.end337_crit_edge:                 ; preds = %land.rhs312
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end337

for.body318:                                      ; preds = %land.rhs312
  %reg_width = getelementptr %struct.pinmux_data_reg, ptr %135, i32 %i.7648, i32 1
  %138 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %reg_width, align 4
  %conv324 = zext i8 %139 to i32
  %sub325 = sub nsw i32 32, %conv324
  %shr = lshr i32 -1, %sub325
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %3, i32 noundef %137, i32 noundef %shr) #13
  %140 = ptrtoint ptr %data_regs to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %data_regs, align 4
  %arrayidx327 = getelementptr %struct.pinmux_data_reg, ptr %141, i32 %i.7648
  %142 = ptrtoint ptr %arrayidx327 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx327, align 4
  %enum_ids = getelementptr %struct.pinmux_data_reg, ptr %141, i32 %i.7648, i32 2
  %144 = ptrtoint ptr %enum_ids to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %enum_ids, align 4
  %reg_width333 = getelementptr %struct.pinmux_data_reg, ptr %141, i32 %i.7648, i32 1
  %146 = ptrtoint ptr %reg_width333 to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %reg_width333, align 4
  %conv334 = zext i8 %147 to i32
  tail call fastcc void @sh_pfc_check_reg_enums(ptr noundef %3, i32 noundef %143, ptr noundef %145, i32 noundef %conv334) #13
  %inc336 = add i32 %i.7648, 1
  %148 = ptrtoint ptr %data_regs to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data_regs, align 4
  %tobool311.not = icmp eq ptr %149, null
  br i1 %tobool311.not, label %for.body318.for.end337_crit_edge, label %for.body318.land.rhs312_crit_edge

for.body318.land.rhs312_crit_edge:                ; preds = %for.body318
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs312

for.body318.for.end337_crit_edge:                 ; preds = %for.body318
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end337

for.end337:                                       ; preds = %for.body318.for.end337_crit_edge, %land.rhs312.for.end337_crit_edge, %for.end309.for.end337_crit_edge
  %nr_func_gpios = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 14
  %150 = ptrtoint ptr %nr_func_gpios to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %nr_func_gpios, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp339651.not = icmp eq i32 %151, 0
  br i1 %cmp339651.not, label %for.end337.cleanup404_crit_edge, label %for.body341.lr.ph

for.end337.cleanup404_crit_edge:                  ; preds = %for.end337
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

for.body341.lr.ph:                                ; preds = %for.end337
  %func_gpios = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 13
  br label %for.body341

for.body341:                                      ; preds = %cleanup398.for.body341_crit_edge, %for.body341.lr.ph
  %i.8652 = phi i32 [ 0, %for.body341.lr.ph ], [ %inc402, %cleanup398.for.body341_crit_edge ]
  %152 = ptrtoint ptr %func_gpios to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %func_gpios, align 4
  %arrayidx343 = getelementptr %struct.pinmux_func, ptr %153, i32 %i.8652
  %name344 = getelementptr %struct.pinmux_func, ptr %153, i32 %i.8652, i32 1
  %154 = ptrtoint ptr %name344 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %name344, align 4
  %tobool345.not = icmp eq ptr %155, null
  br i1 %tobool345.not, label %do.end350, label %for.cond357.preheader

for.cond357.preheader:                            ; preds = %for.body341
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.8652)
  %cmp358649.not = icmp eq i32 %i.8652, 0
  br i1 %cmp358649.not, label %for.cond357.preheader.for.end380_crit_edge, label %for.cond357.preheader.for.body360_crit_edge

for.cond357.preheader.for.body360_crit_edge:      ; preds = %for.cond357.preheader
  br label %for.body360

for.cond357.preheader.for.end380_crit_edge:       ; preds = %for.cond357.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end380

do.end350:                                        ; preds = %for.body341
  call void @__sanitizer_cov_trace_pc() #11
  %call352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %3, i32 noundef %i.8652) #12
  br label %cleanup398.sink.split

for.body360:                                      ; preds = %for.inc378.for.body360_crit_edge, %for.cond357.preheader.for.body360_crit_edge
  %j.4650 = phi i32 [ %inc379, %for.inc378.for.body360_crit_edge ], [ 0, %for.cond357.preheader.for.body360_crit_edge ]
  %156 = ptrtoint ptr %name344 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %name344, align 4
  %158 = ptrtoint ptr %func_gpios to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %func_gpios, align 4
  %name364 = getelementptr %struct.pinmux_func, ptr %159, i32 %j.4650, i32 1
  %160 = ptrtoint ptr %name364 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name364, align 4
  %tobool.not.i595 = icmp eq ptr %157, null
  %tobool1.not.i596 = icmp eq ptr %161, null
  %or.cond.i597 = or i1 %tobool.not.i595, %tobool1.not.i596
  br i1 %or.cond.i597, label %for.body360.for.inc378_crit_edge, label %same_name.exit602

for.body360.for.inc378_crit_edge:                 ; preds = %for.body360
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc378

same_name.exit602:                                ; preds = %for.body360
  %call.i598 = tail call i32 @strcmp(ptr noundef nonnull %157, ptr noundef nonnull %161) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i598)
  %tobool2.not.i599 = icmp eq i32 %call.i598, 0
  br i1 %tobool2.not.i599, label %do.end370, label %same_name.exit602.for.inc378_crit_edge

same_name.exit602.for.inc378_crit_edge:           ; preds = %same_name.exit602
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc378

do.end370:                                        ; preds = %same_name.exit602
  call void @__sanitizer_cov_trace_pc() #11
  %call373 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %3, ptr noundef nonnull %157) #12
  %162 = load i32, ptr @sh_pfc_errors, align 4
  %inc374 = add i32 %162, 1
  store i32 %inc374, ptr @sh_pfc_errors, align 4
  br label %for.inc378

for.inc378:                                       ; preds = %do.end370, %same_name.exit602.for.inc378_crit_edge, %for.body360.for.inc378_crit_edge
  %inc379 = add nuw i32 %j.4650, 1
  %exitcond659.not = icmp eq i32 %inc379, %i.8652
  br i1 %exitcond659.not, label %for.inc378.for.end380_crit_edge, label %for.inc378.for.body360_crit_edge

for.inc378.for.body360_crit_edge:                 ; preds = %for.inc378
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body360

for.inc378.for.end380_crit_edge:                  ; preds = %for.inc378
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end380

for.end380:                                       ; preds = %for.inc378.for.end380_crit_edge, %for.cond357.preheader.for.end380_crit_edge
  %163 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx343, align 4
  %call382 = tail call fastcc i32 @sh_pfc_check_enum(ptr noundef %3, i16 noundef zeroext %164) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %for.end380.cleanup398_crit_edge, label %do.end388

for.end380.cleanup398_crit_edge:                  ; preds = %for.end380
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup398

do.end388:                                        ; preds = %for.end380
  call void @__sanitizer_cov_trace_pc() #11
  %165 = ptrtoint ptr %name344 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %name344, align 4
  %167 = ptrtoint ptr %arrayidx343 to i32
  call void @__asan_load2_noabort(i32 %167)
  %168 = load i16, ptr %arrayidx343, align 4
  %conv392 = zext i16 %168 to i32
  %call393 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %3, ptr noundef %166, i32 noundef %conv392) #12
  br label %cleanup398.sink.split

cleanup398.sink.split:                            ; preds = %do.end388, %do.end350
  %169 = load i32, ptr @sh_pfc_errors, align 4
  %inc394 = add i32 %169, 1
  store i32 %inc394, ptr @sh_pfc_errors, align 4
  br label %cleanup398

cleanup398:                                       ; preds = %cleanup398.sink.split, %for.end380.cleanup398_crit_edge
  %inc402 = add nuw i32 %i.8652, 1
  %170 = ptrtoint ptr %nr_func_gpios to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %nr_func_gpios, align 4
  %cmp339 = icmp ult i32 %inc402, %171
  br i1 %cmp339, label %cleanup398.for.body341_crit_edge, label %cleanup398.cleanup404_crit_edge

cleanup398.cleanup404_crit_edge:                  ; preds = %cleanup398
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup404

cleanup398.for.body341_crit_edge:                 ; preds = %cleanup398
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body341

cleanup404:                                       ; preds = %cleanup398.cleanup404_crit_edge, %for.end337.cleanup404_crit_edge, %if.end7.i.i.cleanup404_crit_edge, %for.end82.cleanup404_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_cfg_reg(ptr noundef %drvname, ptr nocapture noundef readonly %cfg_reg) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg_reg, align 4
  %reg_width = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 1
  %2 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reg_width, align 4
  %conv = zext i8 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %drvname, i32 noundef %1, i32 noundef %shr) #13
  %field_width = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 2
  %4 = ptrtoint ptr %field_width to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %field_width, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  %var_field_width = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 5
  %6 = ptrtoint ptr %var_field_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %var_field_width, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not98 = icmp eq i8 %9, 0
  br i1 %tobool7.not98, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %enum_ids = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %reg_width, align 4
  %12 = udiv i8 %11, %5
  %div = zext i8 %12 to i32
  br label %check_enum_ids

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %for.body.lr.ph
  %13 = phi i8 [ %9, %for.body.lr.ph ], [ %26, %if.end19.for.body_crit_edge ]
  %i.0101 = phi i32 [ 0, %for.body.lr.ph ], [ %inc23, %if.end19.for.body_crit_edge ]
  %n.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %add21, %if.end19.for.body_crit_edge ]
  %rw.099 = phi i32 [ 0, %for.body.lr.ph ], [ %add22, %if.end19.for.body_crit_edge ]
  %conv6102 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %13)
  %cmp = icmp ugt i8 %13, 3
  br i1 %cmp, label %land.lhs.true, label %for.body.if.end19_crit_edge

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %.pre = shl nuw i32 1, %conv6102
  br label %if.end19

land.lhs.true:                                    ; preds = %for.body
  %14 = ptrtoint ptr %enum_ids to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enum_ids, align 4
  %arrayidx9 = getelementptr i16, ptr %15, i32 %n.0100
  %shl = shl nuw i32 1, %conv6102
  %16 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx9, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool.not.i94 = icmp eq i16 %17, 0
  br i1 %tobool.not.i94, label %land.lhs.true.for.cond.i_crit_edge, label %land.lhs.true.if.end19_crit_edge

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

land.lhs.true.for.cond.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true.for.cond.i_crit_edge
  %i.04.i95 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %land.lhs.true.for.cond.i_crit_edge ]
  %inc.i = add nuw i32 %i.04.i95, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %shl)
  %exitcond.not.i = icmp eq i32 %inc.i, %shl
  br i1 %exitcond.not.i, label %for.cond.i.is0s.exit_crit_edge, label %for.body.i

for.cond.i.is0s.exit_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is0s.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr i16, ptr %arrayidx9, i32 %inc.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %arrayidx.i, align 2
  %tobool.not.i = icmp eq i16 %19, 0
  br i1 %tobool.not.i, label %for.body.i.for.cond.i_crit_edge, label %for.body.i.is0s.exit_crit_edge

for.body.i.is0s.exit_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %is0s.exit

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

is0s.exit:                                        ; preds = %for.body.i.is0s.exit_crit_edge, %for.cond.i.is0s.exit_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %shl)
  %cmp.i.le = icmp ult i32 %inc.i, %shl
  br i1 %cmp.i.le, label %is0s.exit.if.end19_crit_edge, label %do.end

is0s.exit.if.end19_crit_edge:                     ; preds = %is0s.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

do.end:                                           ; preds = %is0s.exit
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg_reg, align 4
  %add14 = add i32 %rw.099, %conv6102
  %sub15 = add i32 %add14, -1
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.57, ptr noundef %drvname, i32 noundef %21, i32 noundef %rw.099, i32 noundef %sub15) #12
  %22 = load i32, ptr @sh_pfc_warnings, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr @sh_pfc_warnings, align 4
  br label %if.end19

if.end19:                                         ; preds = %do.end, %is0s.exit.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %for.body.if.end19_crit_edge
  %shl20.pre-phi = phi i32 [ %.pre, %for.body.if.end19_crit_edge ], [ %shl, %land.lhs.true.if.end19_crit_edge ], [ %shl, %do.end ], [ %shl, %is0s.exit.if.end19_crit_edge ]
  %add21 = add i32 %shl20.pre-phi, %n.0100
  %add22 = add i32 %rw.099, %conv6102
  %inc23 = add i32 %i.0101, 1
  %23 = ptrtoint ptr %var_field_width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %var_field_width, align 4
  %arrayidx = getelementptr i8, ptr %24, i32 %inc23
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx, align 1
  %tobool7.not = icmp eq i8 %26, 0
  br i1 %tobool7.not, label %if.end19.for.end_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end19.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %rw.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add22, %if.end19.for.end_crit_edge ]
  %n.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add21, %if.end19.for.end_crit_edge ]
  %27 = ptrtoint ptr %reg_width to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %reg_width, align 4
  %conv25 = zext i8 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rw.0.lcssa, i32 %conv25)
  %cmp26.not = icmp eq i32 %rw.0.lcssa, %conv25
  br i1 %cmp26.not, label %for.end.if.end41_crit_edge, label %do.end32

for.end.if.end41_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end32:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %29 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cfg_reg, align 4
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %drvname, i32 noundef %30, i32 noundef %rw.0.lcssa, i32 noundef %conv25) #12
  %31 = load i32, ptr @sh_pfc_errors, align 4
  %inc38 = add i32 %31, 1
  store i32 %inc38, ptr @sh_pfc_errors, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end32, %for.end.if.end41_crit_edge
  %nr_enum_ids = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 3
  %32 = ptrtoint ptr %nr_enum_ids to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %nr_enum_ids, align 2
  %conv42 = zext i16 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.lcssa, i32 %conv42)
  %cmp43.not = icmp eq i32 %n.0.lcssa, %conv42
  br i1 %cmp43.not, label %if.end41.check_enum_ids_crit_edge, label %do.end49

if.end41.check_enum_ids_crit_edge:                ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %check_enum_ids

do.end49:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cfg_reg, align 4
  %call54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %drvname, i32 noundef %35, i32 noundef %conv42, i32 noundef %n.0.lcssa) #12
  %36 = load i32, ptr @sh_pfc_errors, align 4
  %inc55 = add i32 %36, 1
  store i32 %inc55, ptr @sh_pfc_errors, align 4
  br label %check_enum_ids

check_enum_ids:                                   ; preds = %do.end49, %if.end41.check_enum_ids_crit_edge, %if.then
  %n.1 = phi i32 [ %div, %if.then ], [ %n.0.lcssa, %do.end49 ], [ %n.0.lcssa, %if.end41.check_enum_ids_crit_edge ]
  %37 = ptrtoint ptr %cfg_reg to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cfg_reg, align 4
  %enum_ids60 = getelementptr inbounds %struct.pinmux_cfg_reg, ptr %cfg_reg, i32 0, i32 4
  %39 = ptrtoint ptr %enum_ids60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %enum_ids60, align 4
  tail call fastcc void @sh_pfc_check_reg_enums(ptr noundef %drvname, i32 noundef %38, ptr noundef %40, i32 noundef %n.1) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_drive_reg(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %drive) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.027 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pinmux_drive_reg, ptr %drive, i32 0, i32 1, i32 %i.027
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %offset = getelementptr %struct.pinmux_drive_reg, ptr %drive, i32 0, i32 1, i32 %i.027, i32 1
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %size = getelementptr %struct.pinmux_drive_reg, ptr %drive, i32 0, i32 1, i32 %i.027, i32 2
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool3.not = icmp eq i8 %5, 0
  br i1 %tobool3.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 4
  %8 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %drive, align 4
  %offset4 = getelementptr %struct.pinmux_drive_reg, ptr %drive, i32 0, i32 1, i32 %i.027, i32 1
  %10 = ptrtoint ptr %offset4 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %offset4, align 2
  %conv = zext i8 %11 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %size7 = getelementptr %struct.pinmux_drive_reg, ptr %drive, i32 0, i32 1, i32 %i.027, i32 2
  %12 = ptrtoint ptr %size7 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size7, align 1
  %conv8 = zext i8 %13 to i32
  %14 = add nuw nsw i32 %conv, %conv8
  %sub11 = sub nsw i32 32, %14
  %shr = lshr i32 -1, %sub11
  %and = and i32 %shr, %shl.neg
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %7, i32 noundef %9, i32 noundef %and) #13
  %15 = ptrtoint ptr %drive to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %drive, align 4
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %conv15 = zext i16 %18 to i32
  tail call fastcc void @sh_pfc_check_pin(ptr noundef %info, i32 noundef %16, i32 noundef %conv15) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true2.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_bias_reg(ptr nocapture noundef readonly %info, ptr nocapture noundef readonly %bias) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %bits.040 = phi i32 [ 0, %entry ], [ %bits.1, %for.body.for.body_crit_edge ]
  %i.039 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pinmux_bias_reg, ptr %bias, i32 0, i32 2, i32 %i.039
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp1.not = icmp eq i16 %1, -1
  %shl = shl nuw i32 1, %i.039
  %or = select i1 %cmp1.not, i32 0, i32 %shl
  %bits.1 = or i32 %or, %bits.040
  %inc = add nuw nsw i32 %i.039, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %2 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bias, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.end.if.end5_crit_edge, label %if.then3

for.end.if.end5_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then3:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %5, i32 noundef %3, i32 noundef %bits.1) #13
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %for.end.if.end5_crit_edge
  %pud = getelementptr inbounds %struct.pinmux_bias_reg, ptr %bias, i32 0, i32 1
  %6 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end5.for.body14.preheader_crit_edge, label %if.then7

if.end5.for.body14.preheader_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14.preheader

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  tail call fastcc void @sh_pfc_check_reg(ptr noundef %9, i32 noundef %7, i32 noundef %bits.1) #13
  br label %for.body14.preheader

for.body14.preheader:                             ; preds = %if.then7, %if.end5.for.body14.preheader_crit_edge
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.preheader
  %i.141 = phi i32 [ %inc20, %for.body14.for.body14_crit_edge ], [ 0, %for.body14.preheader ]
  %10 = ptrtoint ptr %bias to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bias, align 4
  %arrayidx17 = getelementptr %struct.pinmux_bias_reg, ptr %bias, i32 0, i32 2, i32 %i.141
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx17, align 2
  %conv18 = zext i16 %13 to i32
  tail call fastcc void @sh_pfc_check_pin(ptr noundef %info, i32 noundef %11, i32 noundef %conv18) #13
  %inc20 = add nuw nsw i32 %i.141, 1
  %exitcond42.not = icmp eq i32 %inc20, 32
  br i1 %exitcond42.not, label %for.end21, label %for.body14.for.body14_crit_edge

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body14

for.end21:                                        ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_reg(ptr noundef %drvname, i32 noundef %reg, i32 noundef %bits) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sh_pfc_num_regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp59.not = icmp eq i32 %0, 0
  br i1 %cmp59.not, label %entry.if.end37_crit_edge, label %for.body.lr.ph

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

for.body.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr @sh_pfc_regs, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.060 = phi i32 [ 0, %for.body.lr.ph ], [ %inc15, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.anon.44, ptr %1, i32 %i.060
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %reg)
  %cmp2.not = icmp eq i32 %3, %reg
  br i1 %cmp2.not, label %if.end, label %for.inc

if.end:                                           ; preds = %for.body
  %bits4 = getelementptr %struct.anon.44, ptr %1, i32 %i.060, i32 1
  %4 = ptrtoint ptr %bits4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bits4, align 4
  %and = and i32 %5, %bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %do.end

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, ptr noundef %drvname, i32 noundef %reg, i32 noundef %and) #12
  %6 = load i32, ptr @sh_pfc_errors, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @sh_pfc_errors, align 4
  br label %if.end12

if.end12:                                         ; preds = %do.end, %if.end.if.end12_crit_edge
  %7 = load ptr, ptr @sh_pfc_regs, align 4
  %bits14 = getelementptr %struct.anon.44, ptr %7, i32 %i.060, i32 1
  %8 = ptrtoint ptr %bits14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits14, align 4
  %or = or i32 %9, %bits
  store i32 %or, ptr %bits14, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc15 = add nuw i32 %i.060, 1
  %exitcond.not = icmp eq i32 %inc15, %0
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 300, i32 %0)
  %cmp16 = icmp eq i32 %0, 300
  br i1 %cmp16, label %land.end, label %for.end.if.end37_crit_edge

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.end:                                         ; preds = %for.end
  %.b55 = load i1, ptr @sh_pfc_check_reg.__already_done, align 1
  br i1 %.b55, label %land.end.cleanup_crit_edge, label %if.then23, !prof !196

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then23:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sh_pfc_check_reg.__already_done, align 1
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef %drvname) #12
  br label %cleanup

if.end37:                                         ; preds = %for.end.if.end37_crit_edge, %entry.if.end37_crit_edge
  %10 = load ptr, ptr @sh_pfc_regs, align 4
  %arrayidx38 = getelementptr %struct.anon.44, ptr %10, i32 %0
  %11 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %reg, ptr %arrayidx38, align 4
  %bits41 = getelementptr %struct.anon.44, ptr %10, i32 %0, i32 1
  %12 = ptrtoint ptr %bits41 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bits, ptr %bits41, align 4
  %inc42 = add i32 %0, 1
  store i32 %inc42, ptr @sh_pfc_num_regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then23, %land.end.cleanup_crit_edge, %if.end12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_reg_enums(ptr noundef %drvname, i32 noundef %reg, ptr nocapture noundef readonly %enums, i32 noundef %n) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n)
  %cmp17.not = icmp eq i32 %n, 0
  br i1 %cmp17.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.018 = phi i32 [ %inc9, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %enums, i32 %i.018
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %call = tail call fastcc i32 @sh_pfc_check_enum(ptr noundef %drvname, i16 noundef zeroext %1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %land.lhs.true.for.inc_crit_edge, label %do.end

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %conv5 = zext i16 %3 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, ptr noundef %drvname, i32 noundef %reg, i32 noundef %conv5) #12
  %4 = load i32, ptr @sh_pfc_errors, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @sh_pfc_errors, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc9 = add nuw i32 %i.018, 1
  %exitcond.not = icmp eq i32 %inc9, %n
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_check_enum(ptr noundef %drvname, i16 noundef zeroext %enum_id) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sh_pfc_num_enums, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp30.not = icmp eq i32 %0, 0
  br i1 %cmp30.not, label %entry.if.end21_crit_edge, label %for.body.lr.ph

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

for.body.lr.ph:                                   ; preds = %entry
  %1 = load ptr, ptr @sh_pfc_enums, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, %0
  br i1 %exitcond.not, label %for.end, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %1, i32 %i.031
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %3, i16 %enum_id)
  %cmp2 = icmp eq i16 %3, %enum_id
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 3000, i32 %0)
  %cmp4 = icmp eq i32 %0, 3000
  br i1 %cmp4, label %land.end, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

land.end:                                         ; preds = %for.end
  %.b28 = load i1, ptr @sh_pfc_check_enum.__already_done, align 1
  br i1 %.b28, label %land.end.cleanup_crit_edge, label %if.then12, !prof !196

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @sh_pfc_check_enum.__already_done, align 1
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %drvname) #12
  br label %cleanup

if.end21:                                         ; preds = %for.end.if.end21_crit_edge, %entry.if.end21_crit_edge
  %4 = load ptr, ptr @sh_pfc_enums, align 4
  %inc22 = add i32 %0, 1
  store i32 %inc22, ptr @sh_pfc_num_enums, align 4
  %arrayidx23 = getelementptr i16, ptr %4, i32 %0
  %5 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %enum_id, ptr %arrayidx23, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.then12, %land.end.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end21 ], [ 0, %if.then12 ], [ 0, %land.end.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sh_pfc_check_pin(ptr nocapture noundef readonly %info, i32 noundef %reg, i32 noundef %pin) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %pin)
  %cmp = icmp eq i32 %pin, 65535
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %nr_pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 8
  %2 = ptrtoint ptr %nr_pins to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_pins, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp118.not = icmp eq i32 %3, 0
  br i1 %cmp118.not, label %for.cond.preheader.do.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pins = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info, i32 0, i32 7
  %4 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pins, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %for.cond.do.end_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.do.end_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.019 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %pin2 = getelementptr %struct.sh_pfc_pin, ptr %5, i32 %i.019, i32 2
  %6 = ptrtoint ptr %pin2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pin2, align 4
  %conv = zext i16 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %pin)
  %cmp3 = icmp eq i32 %conv, %pin
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %for.cond.do.end_crit_edge, %for.cond.preheader.do.end_crit_edge
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, ptr noundef %1, i32 noundef %reg, i32 noundef %pin) #12
  %8 = load i32, ptr @sh_pfc_errors, align 4
  %inc8 = add i32 %8, 1
  store i32 %inc8, ptr @sh_pfc_errors, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_probe(ptr noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @soc_device_match(ptr noundef nonnull @sh_pfc_quirk_match.quirks) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.then2_crit_edge, label %sh_pfc_quirk_match.exit

if.then.if.then2_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

sh_pfc_quirk_match.exit:                          ; preds = %if.then
  %data.i = getelementptr inbounds %struct.soc_device_attribute, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %sh_pfc_quirk_match.exit.if.then2_crit_edge, label %sh_pfc_quirk_match.exit.if.end5_crit_edge

sh_pfc_quirk_match.exit.if.end5_crit_edge:        ; preds = %sh_pfc_quirk_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

sh_pfc_quirk_match.exit.if.then2_crit_edge:       ; preds = %sh_pfc_quirk_match.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then2

if.then2:                                         ; preds = %sh_pfc_quirk_match.exit.if.then2_crit_edge, %if.then.if.then2_crit_edge
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #9
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  %8 = inttoptr i32 %7 to ptr
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2, %sh_pfc_quirk_match.exit.if.end5_crit_edge
  %info.0 = phi ptr [ %3, %sh_pfc_quirk_match.exit.if.end5_crit_edge ], [ %call4, %if.then2 ], [ %8, %if.else ]
  %call.i108 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #9
  %cmp = icmp eq ptr %call.i108, null
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %info10 = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 1
  %9 = ptrtoint ptr %info10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %info.0, ptr %info10, align 4
  %10 = ptrtoint ptr %call.i108 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev, ptr %call.i108, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.cond.i.for.cond.i_crit_edge, %if.end9
  %num_windows.0.i = phi i32 [ 0, %if.end9 ], [ %inc.i, %for.cond.i.for.cond.i_crit_edge ]
  %call.i109 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %num_windows.0.i) #9
  %tobool.not.i110 = icmp eq ptr %call.i109, null
  %inc.i = add i32 %num_windows.0.i, 1
  br i1 %tobool.not.i110, label %for.end.i, label %for.cond.i.for.cond.i_crit_edge

for.cond.i.for.cond.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.end.i:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_windows.0.i)
  %cmp.i = icmp eq i32 %num_windows.0.i, 0
  br i1 %cmp.i, label %for.end.i.cleanup_crit_edge, label %if.end2.i

for.end.i.cleanup_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end2.i:                                        ; preds = %for.end.i
  %call3.i = tail call i32 @platform_irq_count(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %if.end2.i.cleanup_crit_edge, label %if.end6.i

if.end2.i.cleanup_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6.i:                                        ; preds = %if.end2.i
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %num_windows.0.i, i32 12) #9
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %if.end6.i.cleanup_crit_edge, label %devm_kcalloc.exit.i, !prof !195

if.end6.i.cleanup_crit_edge:                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit.i:                              ; preds = %if.end6.i
  %13 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i108, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %14, i32 noundef %15, i32 noundef 3520) #9
  %cmp8.i = icmp eq ptr %call5.i.i.i, null
  br i1 %cmp8.i, label %devm_kcalloc.exit.i.cleanup_crit_edge, label %if.end10.i

devm_kcalloc.exit.i.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10.i:                                       ; preds = %devm_kcalloc.exit.i
  %num_windows11.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 3
  %16 = ptrtoint ptr %num_windows11.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %num_windows.0.i, ptr %num_windows11.i, align 4
  %windows12.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 4
  %17 = ptrtoint ptr %windows12.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i.i, ptr %windows12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool13.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool13.not.i, label %if.end10.i.for.body.preheader.i_crit_edge, label %if.then14.i

if.end10.i.for.body.preheader.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.preheader.i

if.then14.i:                                      ; preds = %if.end10.i
  %18 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call3.i, i32 4) #9
  %19 = extractvalue { i32, i1 } %18, 1
  br i1 %19, label %if.then14.i.cleanup_crit_edge, label %devm_kcalloc.exit87.i, !prof !195

if.then14.i.cleanup_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

devm_kcalloc.exit87.i:                            ; preds = %if.then14.i
  %20 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i108, align 4
  %22 = extractvalue { i32, i1 } %18, 0
  %call5.i.i84.i = tail call noalias ptr @devm_kmalloc(ptr noundef %21, i32 noundef %22, i32 noundef 3520) #9
  %cmp17.i = icmp eq ptr %call5.i.i84.i, null
  br i1 %cmp17.i, label %devm_kcalloc.exit87.i.cleanup_crit_edge, label %if.end19.i

devm_kcalloc.exit87.i.cleanup_crit_edge:          ; preds = %devm_kcalloc.exit87.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19.i:                                       ; preds = %devm_kcalloc.exit87.i
  call void @__sanitizer_cov_trace_pc() #11
  %num_irqs20.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 5
  %23 = ptrtoint ptr %num_irqs20.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call3.i, ptr %num_irqs20.i, align 4
  %irqs21.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 6
  %24 = ptrtoint ptr %irqs21.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call5.i.i84.i, ptr %irqs21.i, align 4
  br label %for.body.preheader.i

for.body.preheader.i:                             ; preds = %if.end19.i, %if.end10.i.for.body.preheader.i_crit_edge
  %irqs.0.i = phi ptr [ %call5.i.i84.i, %if.end19.i ], [ null, %if.end10.i.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.cond36.preheader.i:                           ; preds = %if.end32.i
  br i1 %tobool13.not.i, label %for.cond36.preheader.i.do.body_crit_edge, label %for.cond36.preheader.i.for.body38.i_crit_edge

for.cond36.preheader.i.for.body38.i_crit_edge:    ; preds = %for.cond36.preheader.i
  br label %for.body38.i

for.cond36.preheader.i.do.body_crit_edge:         ; preds = %for.cond36.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

for.body.i:                                       ; preds = %if.end32.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.095.i = phi i32 [ %inc34.i, %if.end32.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %windows.094.i = phi ptr [ %incdec.ptr.i, %if.end32.i.for.body.i_crit_edge ], [ %call5.i.i.i, %for.body.preheader.i ]
  %call25.i = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %i.095.i) #9
  %25 = ptrtoint ptr %call25.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %call25.i, align 4
  %27 = ptrtoint ptr %windows.094.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %windows.094.i, align 4
  %end.i.i = getelementptr inbounds %struct.resource, ptr %call25.i, i32 0, i32 1
  %28 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %end.i.i, align 4
  %30 = load i32, ptr %call25.i, align 4
  %sub.i.i = add i32 %29, 1
  %add.i.i = sub i32 %sub.i.i, %30
  %size.i = getelementptr inbounds %struct.sh_pfc_window, ptr %windows.094.i, i32 0, i32 2
  %31 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add.i.i, ptr %size.i, align 4
  %32 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call.i108, align 4
  %call28.i = tail call ptr @devm_ioremap_resource(ptr noundef %33, ptr noundef %call25.i) #9
  %virt.i = getelementptr inbounds %struct.sh_pfc_window, ptr %windows.094.i, i32 0, i32 1
  %34 = ptrtoint ptr %virt.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call28.i, ptr %virt.i, align 4
  %cmp.i.i = icmp ugt ptr %call28.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %for.body.i.cleanup_crit_edge, label %if.end32.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end32.i:                                       ; preds = %for.body.i
  %incdec.ptr.i = getelementptr %struct.sh_pfc_window, ptr %windows.094.i, i32 1
  %inc34.i = add nuw i32 %i.095.i, 1
  %exitcond.not.i = icmp eq i32 %inc34.i, %num_windows.0.i
  br i1 %exitcond.not.i, label %for.cond36.preheader.i, label %if.end32.i.for.body.i_crit_edge

if.end32.i.for.body.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body38.i:                                     ; preds = %for.body38.i.for.body38.i_crit_edge, %for.cond36.preheader.i.for.body38.i_crit_edge
  %i.198.i = phi i32 [ %inc42.i, %for.body38.i.for.body38.i_crit_edge ], [ 0, %for.cond36.preheader.i.for.body38.i_crit_edge ]
  %irqs.197.i = phi ptr [ %incdec.ptr40.i, %for.body38.i.for.body38.i_crit_edge ], [ %irqs.0.i, %for.cond36.preheader.i.for.body38.i_crit_edge ]
  %call39.i = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.198.i) #9
  %incdec.ptr40.i = getelementptr i32, ptr %irqs.197.i, i32 1
  %35 = ptrtoint ptr %irqs.197.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call39.i, ptr %irqs.197.i, align 4
  %inc42.i = add nuw i32 %i.198.i, 1
  %exitcond100.not.i = icmp eq i32 %inc42.i, %call3.i
  br i1 %exitcond100.not.i, label %for.body38.i.do.body_crit_edge, label %for.body38.i.for.body38.i_crit_edge

for.body38.i.for.body38.i_crit_edge:              ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body38.i

for.body38.i.do.body_crit_edge:                   ; preds = %for.body38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

do.body:                                          ; preds = %for.body38.i.do.body_crit_edge, %for.cond36.preheader.i.do.body_crit_edge
  %lock = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.77, ptr noundef nonnull @sh_pfc_probe.__key, i16 noundef signext 3) #9
  %ops = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %info.0, i32 0, i32 1
  %36 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ops, align 4
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %do.body.if.end31_crit_edge, label %land.lhs.true

do.body.if.end31_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

land.lhs.true:                                    ; preds = %do.body
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool22.not = icmp eq ptr %39, null
  br i1 %tobool22.not, label %land.lhs.true.if.end31_crit_edge, label %if.then23

land.lhs.true.if.end31_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then23:                                        ; preds = %land.lhs.true
  %call26 = tail call i32 %39(ptr noundef nonnull %call.i108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.then23.cleanup_crit_edge, label %if.end29

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  %40 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info10, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %land.lhs.true.if.end31_crit_edge, %do.body.if.end31_crit_edge
  %info.1 = phi ptr [ %41, %if.end29 ], [ %info.0, %land.lhs.true.if.end31_crit_edge ], [ %info.0, %do.body.if.end31_crit_edge ]
  %call32 = tail call fastcc i32 @sh_pfc_suspend_init(ptr noundef nonnull %call.i108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %42 = load ptr, ptr @of_root, align 4
  %cmp.i112.not = icmp eq ptr %42, null
  br i1 %cmp.i112.not, label %if.then37, label %if.end35.if.end38_crit_edge

if.end35.if.end38_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then37:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pinctrl_provide_dummies() #9
  br label %if.end38

if.end38:                                         ; preds = %if.then37, %if.end35.if.end38_crit_edge
  %43 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %info10, align 4
  %pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %44, i32 0, i32 7
  %45 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pins.i, align 4
  %pin.i = getelementptr inbounds %struct.sh_pfc_pin, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %pin.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %pin.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %48)
  %cmp.i113 = icmp eq i16 %48, -1
  br i1 %cmp.i113, label %if.then.i115, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end38
  %nr_pins15.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %44, i32 0, i32 8
  %49 = ptrtoint ptr %nr_pins15.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nr_pins15.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp16167.i = icmp ugt i32 %50, 1
  br i1 %cmp16167.i, label %for.cond.preheader.i.for.body.i119_crit_edge, label %for.cond.preheader.i.for.end.i120_crit_edge

for.cond.preheader.i.for.end.i120_crit_edge:      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i120

for.cond.preheader.i.for.body.i119_crit_edge:     ; preds = %for.cond.preheader.i
  br label %for.body.i119

if.then.i115:                                     ; preds = %if.end38
  %nr_ranges2.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 8
  %51 = ptrtoint ptr %nr_ranges2.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %nr_ranges2.i, align 4
  %52 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i108, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %53, i32 noundef 4, i32 noundef 3520) #9
  %ranges.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 7
  %54 = ptrtoint ptr %ranges.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call.i.i, ptr %ranges.i, align 4
  %cmp4.i114 = icmp eq ptr %call.i.i, null
  br i1 %cmp4.i114, label %if.then.i115.cleanup_crit_edge, label %if.end.i

if.then.i115.cleanup_crit_edge:                   ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then.i115
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %call.i.i, align 2
  %56 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info10, align 4
  %nr_pins.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %57, i32 0, i32 8
  %58 = ptrtoint ptr %nr_pins.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nr_pins.i, align 4
  %60 = trunc i32 %59 to i16
  %conv9.i = add i16 %60, -1
  %end.i = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %call.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %end.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv9.i, ptr %end.i, align 2
  %62 = load i32, ptr %nr_pins.i, align 4
  br label %if.end42.sink.split

for.body.i119:                                    ; preds = %for.body.i119.for.body.i119_crit_edge, %for.cond.preheader.i.for.body.i119_crit_edge
  %i.0169.i = phi i32 [ %inc34.i117, %for.body.i119.for.body.i119_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i119_crit_edge ]
  %nr_ranges.0168.i = phi i32 [ %spec.select.i, %for.body.i119.for.body.i119_crit_edge ], [ 1, %for.cond.preheader.i.for.body.i119_crit_edge ]
  %sub20.i = add i32 %i.0169.i, -1
  %pin22.i = getelementptr %struct.sh_pfc_pin, ptr %46, i32 %sub20.i, i32 2
  %63 = ptrtoint ptr %pin22.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %pin22.i, align 4
  %conv23.i = zext i16 %64 to i32
  %pin27.i = getelementptr %struct.sh_pfc_pin, ptr %46, i32 %i.0169.i, i32 2
  %65 = ptrtoint ptr %pin27.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %pin27.i, align 4
  %conv28.i = zext i16 %66 to i32
  %sub29.i = add nsw i32 %conv28.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.i, i32 %conv23.i)
  %cmp30.not.i = icmp ne i32 %sub29.i, %conv23.i
  %inc.i116 = zext i1 %cmp30.not.i to i32
  %spec.select.i = add i32 %nr_ranges.0168.i, %inc.i116
  %inc34.i117 = add nuw i32 %i.0169.i, 1
  %exitcond.not.i118 = icmp eq i32 %inc34.i117, %50
  br i1 %exitcond.not.i118, label %for.body.i119.for.end.i120_crit_edge, label %for.body.i119.for.body.i119_crit_edge

for.body.i119.for.body.i119_crit_edge:            ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i119

for.body.i119.for.end.i120_crit_edge:             ; preds = %for.body.i119
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i120

for.end.i120:                                     ; preds = %for.body.i119.for.end.i120_crit_edge, %for.cond.preheader.i.for.end.i120_crit_edge
  %nr_ranges.0.lcssa.i = phi i32 [ 1, %for.cond.preheader.i.for.end.i120_crit_edge ], [ %spec.select.i, %for.body.i119.for.end.i120_crit_edge ]
  %nr_ranges35.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 8
  %67 = ptrtoint ptr %nr_ranges35.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %nr_ranges.0.lcssa.i, ptr %nr_ranges35.i, align 4
  %68 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_ranges.0.lcssa.i, i32 4) #9
  %69 = extractvalue { i32, i1 } %68, 1
  br i1 %69, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i122, !prof !195

devm_kcalloc.exit.thread.i:                       ; preds = %for.end.i120
  call void @__sanitizer_cov_trace_pc() #11
  %ranges38165.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 7
  %70 = ptrtoint ptr %ranges38165.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %ranges38165.i, align 4
  br label %cleanup

devm_kcalloc.exit.i122:                           ; preds = %for.end.i120
  %71 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i108, align 4
  %73 = extractvalue { i32, i1 } %68, 0
  %call5.i.i.i121 = tail call noalias ptr @devm_kmalloc(ptr noundef %72, i32 noundef %73, i32 noundef 3520) #9
  %ranges38.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 7
  %74 = ptrtoint ptr %ranges38.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call5.i.i.i121, ptr %ranges38.i, align 4
  %cmp40.i = icmp eq ptr %call5.i.i.i121, null
  br i1 %cmp40.i, label %devm_kcalloc.exit.i122.cleanup_crit_edge, label %if.end43.i

devm_kcalloc.exit.i122.cleanup_crit_edge:         ; preds = %devm_kcalloc.exit.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43.i:                                       ; preds = %devm_kcalloc.exit.i122
  %75 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info10, align 4
  %pins46.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %76, i32 0, i32 7
  %77 = ptrtoint ptr %pins46.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %pins46.i, align 4
  %pin48.i = getelementptr inbounds %struct.sh_pfc_pin, ptr %78, i32 0, i32 2
  %79 = ptrtoint ptr %pin48.i to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %pin48.i, align 4
  %81 = ptrtoint ptr %call5.i.i.i121 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %80, ptr %call5.i.i.i121, align 2
  %nr_pins52170.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %76, i32 0, i32 8
  %82 = ptrtoint ptr %nr_pins52170.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_pins52170.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp53171.i = icmp ugt i32 %83, 1
  br i1 %cmp53171.i, label %for.body55.lr.ph.i, label %if.end43.i.for.end94.i_crit_edge

if.end43.i.for.end94.i_crit_edge:                 ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end94.i

for.body55.lr.ph.i:                               ; preds = %if.end43.i
  %nr_gpio_pins85.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 9
  br label %for.body55.i

for.body55.i:                                     ; preds = %for.inc92.i.for.body55.i_crit_edge, %for.body55.lr.ph.i
  %84 = phi ptr [ %76, %for.body55.lr.ph.i ], [ %105, %for.inc92.i.for.body55.i_crit_edge ]
  %i.1173.i = phi i32 [ 1, %for.body55.lr.ph.i ], [ %inc93.i, %for.inc92.i.for.body55.i_crit_edge ]
  %range.0172.i = phi ptr [ %call5.i.i.i121, %for.body55.lr.ph.i ], [ %range.1.i, %for.inc92.i.for.body55.i_crit_edge ]
  %pins57.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %84, i32 0, i32 7
  %85 = ptrtoint ptr %pins57.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %pins57.i, align 4
  %sub58.i = add i32 %i.1173.i, -1
  %pin60.i = getelementptr %struct.sh_pfc_pin, ptr %86, i32 %sub58.i, i32 2
  %87 = ptrtoint ptr %pin60.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %pin60.i, align 4
  %conv61.i = zext i16 %88 to i32
  %pin65.i = getelementptr %struct.sh_pfc_pin, ptr %86, i32 %i.1173.i, i32 2
  %89 = ptrtoint ptr %pin65.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %pin65.i, align 4
  %conv66.i = zext i16 %90 to i32
  %sub67.i = add nsw i32 %conv66.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub67.i, i32 %conv61.i)
  %cmp68.i = icmp eq i32 %sub67.i, %conv61.i
  br i1 %cmp68.i, label %for.body55.i.for.inc92.i_crit_edge, label %if.end71.i

for.body55.i.for.inc92.i_crit_edge:               ; preds = %for.body55.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc92.i

if.end71.i:                                       ; preds = %for.body55.i
  %end77.i = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %range.0172.i, i32 0, i32 1
  %91 = ptrtoint ptr %end77.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %88, ptr %end77.i, align 2
  %92 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %info10, align 4
  %pins79.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %93, i32 0, i32 7
  %94 = ptrtoint ptr %pins79.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pins79.i, align 4
  %configs.i = getelementptr %struct.sh_pfc_pin, ptr %95, i32 %sub58.i, i32 1
  %96 = ptrtoint ptr %configs.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %configs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %97)
  %tobool.not.i123 = icmp sgt i32 %97, -1
  br i1 %tobool.not.i123, label %if.then82.i, label %if.end71.i.if.end86.i_crit_edge

if.end71.i.if.end86.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86.i

if.then82.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add nuw nsw i32 %conv61.i, 1
  %98 = ptrtoint ptr %nr_gpio_pins85.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %add.i, ptr %nr_gpio_pins85.i, align 4
  br label %if.end86.i

if.end86.i:                                       ; preds = %if.then82.i, %if.end71.i.if.end86.i_crit_edge
  %incdec.ptr.i124 = getelementptr %struct.sh_pfc_pin_range, ptr %range.0172.i, i32 1
  %99 = ptrtoint ptr %pins79.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %pins79.i, align 4
  %pin90.i = getelementptr %struct.sh_pfc_pin, ptr %100, i32 %i.1173.i, i32 2
  %101 = ptrtoint ptr %pin90.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %pin90.i, align 4
  %103 = ptrtoint ptr %incdec.ptr.i124 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %incdec.ptr.i124, align 2
  br label %for.inc92.i

for.inc92.i:                                      ; preds = %if.end86.i, %for.body55.i.for.inc92.i_crit_edge
  %range.1.i = phi ptr [ %range.0172.i, %for.body55.i.for.inc92.i_crit_edge ], [ %incdec.ptr.i124, %if.end86.i ]
  %inc93.i = add nuw i32 %i.1173.i, 1
  %104 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %info10, align 4
  %nr_pins52.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %105, i32 0, i32 8
  %106 = ptrtoint ptr %nr_pins52.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %nr_pins52.i, align 4
  %cmp53.i = icmp ult i32 %inc93.i, %107
  br i1 %cmp53.i, label %for.inc92.i.for.body55.i_crit_edge, label %for.inc92.i.for.end94.i_crit_edge

for.inc92.i.for.end94.i_crit_edge:                ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end94.i

for.inc92.i.for.body55.i_crit_edge:               ; preds = %for.inc92.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55.i

for.end94.i:                                      ; preds = %for.inc92.i.for.end94.i_crit_edge, %if.end43.i.for.end94.i_crit_edge
  %range.0.lcssa.i = phi ptr [ %call5.i.i.i121, %if.end43.i.for.end94.i_crit_edge ], [ %range.1.i, %for.inc92.i.for.end94.i_crit_edge ]
  %i.1.lcssa.i = phi i32 [ 0, %if.end43.i.for.end94.i_crit_edge ], [ %i.1173.i, %for.inc92.i.for.end94.i_crit_edge ]
  %.lcssa.i = phi ptr [ %76, %if.end43.i.for.end94.i_crit_edge ], [ %105, %for.inc92.i.for.end94.i_crit_edge ]
  %pins96.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %.lcssa.i, i32 0, i32 7
  %108 = ptrtoint ptr %pins96.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pins96.i, align 4
  %pin99.i = getelementptr %struct.sh_pfc_pin, ptr %109, i32 %i.1.lcssa.i, i32 2
  %110 = ptrtoint ptr %pin99.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %pin99.i, align 4
  %end100.i = getelementptr inbounds %struct.sh_pfc_pin_range, ptr %range.0.lcssa.i, i32 0, i32 1
  %112 = ptrtoint ptr %end100.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %111, ptr %end100.i, align 2
  %113 = ptrtoint ptr %info10 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %info10, align 4
  %pins102.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %114, i32 0, i32 7
  %115 = ptrtoint ptr %pins102.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %pins102.i, align 4
  %configs105.i = getelementptr %struct.sh_pfc_pin, ptr %116, i32 %i.1.lcssa.i, i32 1
  %117 = ptrtoint ptr %configs105.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %configs105.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %118)
  %tobool107.not.i = icmp sgt i32 %118, -1
  br i1 %tobool107.not.i, label %if.then108.i, label %for.end94.i.if.end42_crit_edge

for.end94.i.if.end42_crit_edge:                   ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then108.i:                                     ; preds = %for.end94.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv110.i = zext i16 %111 to i32
  %add111.i = add nuw nsw i32 %conv110.i, 1
  br label %if.end42.sink.split

if.end42.sink.split:                              ; preds = %if.then108.i, %if.end.i
  %add111.i.sink = phi i32 [ %add111.i, %if.then108.i ], [ %62, %if.end.i ]
  %nr_gpio_pins112.i = getelementptr inbounds %struct.sh_pfc, ptr %call.i108, i32 0, i32 9
  %119 = ptrtoint ptr %nr_gpio_pins112.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add111.i.sink, ptr %nr_gpio_pins112.i, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %for.end94.i.if.end42_crit_edge
  %call43 = tail call i32 @sh_pfc_register_pinctrl(ptr noundef nonnull %call.i108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %if.end52, label %if.end42.cleanup_crit_edge, !prof !196

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end52:                                         ; preds = %if.end42
  %call53 = tail call i32 @sh_pfc_register_gpiochip(ptr noundef nonnull %call.i108) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54.not = icmp eq i32 %call53, 0
  br i1 %cmp54.not, label %if.end52.if.end66_crit_edge, label %do.end64, !prof !196

if.end52.if.end66_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end66

do.end64:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %call.i108, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %121, ptr noundef nonnull @.str.78) #12
  br label %if.end66

if.end66:                                         ; preds = %do.end64, %if.end52.if.end66_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %122 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i108, ptr %driver_data.i.i, align 4
  %123 = ptrtoint ptr %call.i108 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %call.i108, align 4
  %125 = ptrtoint ptr %info.1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %info.1, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %124, ptr noundef nonnull @.str.82, ptr noundef %126) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %if.end42.cleanup_crit_edge, %devm_kcalloc.exit.i122.cleanup_crit_edge, %devm_kcalloc.exit.thread.i, %if.then.i115.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %devm_kcalloc.exit87.i.cleanup_crit_edge, %if.then14.i.cleanup_crit_edge, %devm_kcalloc.exit.i.cleanup_crit_edge, %if.end6.i.cleanup_crit_edge, %if.end2.i.cleanup_crit_edge, %for.end.i.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end66 ], [ -12, %if.end5.cleanup_crit_edge ], [ %call26, %if.then23.cleanup_crit_edge ], [ %call32, %if.end31.cleanup_crit_edge ], [ %call43, %if.end42.cleanup_crit_edge ], [ -12, %if.then14.i.cleanup_crit_edge ], [ -12, %if.end6.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit87.i.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i.cleanup_crit_edge ], [ %call3.i, %if.end2.i.cleanup_crit_edge ], [ -22, %for.end.i.cleanup_crit_edge ], [ -12, %if.then.i115.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.i122.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread.i ], [ -12, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_suspend_init(ptr nocapture noundef %pfc) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.psci_operations, ptr @psci_ops, i32 0, i32 1), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %1 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %info.i, align 4
  %cfg_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %2, i32 0, i32 15
  %3 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cfg_regs.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %for.cond.preheader.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.cond.preheader.i:                             ; preds = %if.end
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool3.not137.i = icmp eq i32 %6, 0
  br i1 %tobool3.not137.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %n.0139.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc.i = add i32 %n.0139.i, 1
  %arrayidx.i = getelementptr %struct.pinmux_cfg_reg, ptr %4, i32 %inc.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq i32 %8, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.end.if.end.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end.i_crit_edge ], [ %inc.i, %for.body.i.if.end.i_crit_edge ]
  %drive_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %2, i32 0, i32 16
  %9 = ptrtoint ptr %drive_regs.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %drive_regs.i, align 4
  %tobool10.not.i = icmp eq ptr %10, null
  br i1 %tobool10.not.i, label %if.end.i.if.end27.i_crit_edge, label %for.cond12.preheader.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

for.cond12.preheader.i:                           ; preds = %if.end.i
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool17.not141.i = icmp eq i32 %12, 0
  br i1 %tobool17.not141.i, label %for.cond12.preheader.i.if.end27.i_crit_edge, label %for.cond12.preheader.i.for.body18.i_crit_edge

for.cond12.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body18.i

for.cond12.preheader.i.if.end27.i_crit_edge:      ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond12.preheader.i.for.body18.i_crit_edge
  %n.2143.i = phi i32 [ %inc23.i, %for.body18.i.for.body18.i_crit_edge ], [ %n.1.i, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %i.1142.i = phi i32 [ %inc25.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %inc23.i = add i32 %n.2143.i, 1
  %inc25.i = add i32 %i.1142.i, 1
  %arrayidx15.i = getelementptr %struct.pinmux_drive_reg, ptr %10, i32 %inc25.i
  %13 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx15.i, align 4
  %tobool17.not.i = icmp eq i32 %14, 0
  br i1 %tobool17.not.i, label %for.body18.i.if.end27.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i

for.body18.i.if.end27.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.body18.i.if.end27.i_crit_edge, %for.cond12.preheader.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %n.3.i = phi i32 [ %n.1.i, %if.end.i.if.end27.i_crit_edge ], [ %n.1.i, %for.cond12.preheader.i.if.end27.i_crit_edge ], [ %inc23.i, %for.body18.i.if.end27.i_crit_edge ]
  %bias_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %2, i32 0, i32 17
  %15 = ptrtoint ptr %bias_regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bias_regs.i, align 4
  %tobool29.not.i = icmp eq ptr %16, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end68.i_crit_edge, label %if.end27.i.for.cond31.i_crit_edge

if.end27.i.for.cond31.i_crit_edge:                ; preds = %if.end27.i
  br label %for.cond31.i

if.end27.i.if.end68.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

for.cond31.i:                                     ; preds = %if.end52.i, %if.end27.i.for.cond31.i_crit_edge
  %i.2.i = phi i32 [ %inc66.i, %if.end52.i ], [ 0, %if.end27.i.for.cond31.i_crit_edge ]
  %n.4.i = phi i32 [ %spec.select, %if.end52.i ], [ %n.3.i, %if.end27.i.for.cond31.i_crit_edge ]
  %arrayidx34.i = getelementptr %struct.pinmux_bias_reg, ptr %16, i32 %i.2.i
  %17 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool35.not.i = icmp eq i32 %18, 0
  br i1 %tobool35.not.i, label %lor.rhs.i, label %if.then46.i

lor.rhs.i:                                        ; preds = %for.cond31.i
  %pud.i = getelementptr %struct.pinmux_bias_reg, ptr %16, i32 %i.2.i, i32 1
  %19 = ptrtoint ptr %pud.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %pud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool39.not.i = icmp eq i32 %20, 0
  br i1 %tobool39.not.i, label %lor.rhs.i.if.end68.i_crit_edge, label %lor.rhs.i.if.end52.i_crit_edge

lor.rhs.i.if.end52.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

lor.rhs.i.if.end68.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then46.i:                                      ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc51.i = add i32 %n.4.i, 1
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then46.i, %lor.rhs.i.if.end52.i_crit_edge
  %n.5.i = phi i32 [ %inc51.i, %if.then46.i ], [ %n.4.i, %lor.rhs.i.if.end52.i_crit_edge ]
  %pud56.i = getelementptr %struct.pinmux_bias_reg, ptr %16, i32 %i.2.i, i32 1
  %21 = ptrtoint ptr %pud56.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pud56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool57.not.i = icmp ne i32 %22, 0
  %inc63.i = zext i1 %tobool57.not.i to i32
  %spec.select = add i32 %n.5.i, %inc63.i
  %inc66.i = add i32 %i.2.i, 1
  br label %for.cond31.i

if.end68.i:                                       ; preds = %lor.rhs.i.if.end68.i_crit_edge, %if.end27.i.if.end68.i_crit_edge
  %n.7.i = phi i32 [ %n.3.i, %if.end27.i.if.end68.i_crit_edge ], [ %n.4.i, %lor.rhs.i.if.end68.i_crit_edge ]
  %ioctrl_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %2, i32 0, i32 18
  %23 = ptrtoint ptr %ioctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ioctrl_regs.i, align 4
  %tobool70.not.i = icmp eq ptr %24, null
  br i1 %tobool70.not.i, label %if.end68.i.sh_pfc_walk_regs.exit_crit_edge, label %for.cond72.preheader.i

if.end68.i.sh_pfc_walk_regs.exit_crit_edge:       ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_walk_regs.exit

for.cond72.preheader.i:                           ; preds = %if.end68.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool77.not146.i = icmp eq i32 %26, 0
  br i1 %tobool77.not146.i, label %for.cond72.preheader.i.sh_pfc_walk_regs.exit_crit_edge, label %for.cond72.preheader.i.for.body78.i_crit_edge

for.cond72.preheader.i.for.body78.i_crit_edge:    ; preds = %for.cond72.preheader.i
  br label %for.body78.i

for.cond72.preheader.i.sh_pfc_walk_regs.exit_crit_edge: ; preds = %for.cond72.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_walk_regs.exit

for.body78.i:                                     ; preds = %for.body78.i.for.body78.i_crit_edge, %for.cond72.preheader.i.for.body78.i_crit_edge
  %n.8148.i = phi i32 [ %inc83.i, %for.body78.i.for.body78.i_crit_edge ], [ %n.7.i, %for.cond72.preheader.i.for.body78.i_crit_edge ]
  %i.3147.i = phi i32 [ %inc85.i, %for.body78.i.for.body78.i_crit_edge ], [ 0, %for.cond72.preheader.i.for.body78.i_crit_edge ]
  %inc83.i = add i32 %n.8148.i, 1
  %inc85.i = add i32 %i.3147.i, 1
  %arrayidx75.i = getelementptr %struct.pinmux_ioctrl_reg, ptr %24, i32 %inc85.i
  %27 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx75.i, align 4
  %tobool77.not.i = icmp eq i32 %28, 0
  br i1 %tobool77.not.i, label %for.body78.i.sh_pfc_walk_regs.exit_crit_edge, label %for.body78.i.for.body78.i_crit_edge

for.body78.i.for.body78.i_crit_edge:              ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78.i

for.body78.i.sh_pfc_walk_regs.exit_crit_edge:     ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sh_pfc_walk_regs.exit

sh_pfc_walk_regs.exit:                            ; preds = %for.body78.i.sh_pfc_walk_regs.exit_crit_edge, %for.cond72.preheader.i.sh_pfc_walk_regs.exit_crit_edge, %if.end68.i.sh_pfc_walk_regs.exit_crit_edge
  %n.9.i = phi i32 [ %n.7.i, %if.end68.i.sh_pfc_walk_regs.exit_crit_edge ], [ %n.7.i, %for.cond72.preheader.i.sh_pfc_walk_regs.exit_crit_edge ], [ %inc83.i, %for.body78.i.sh_pfc_walk_regs.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.9.i)
  %tobool1.not = icmp eq i32 %n.9.i, 0
  br i1 %tobool1.not, label %sh_pfc_walk_regs.exit.cleanup_crit_edge, label %if.end3

sh_pfc_walk_regs.exit.cleanup_crit_edge:          ; preds = %sh_pfc_walk_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %sh_pfc_walk_regs.exit
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %n.9.i, i32 4) #9
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %devm_kmalloc_array.exit.thread, label %devm_kmalloc_array.exit, !prof !195

devm_kmalloc_array.exit.thread:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %saved_regs26 = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 11
  %31 = ptrtoint ptr %saved_regs26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %saved_regs26, align 4
  br label %cleanup

devm_kmalloc_array.exit:                          ; preds = %if.end3
  %32 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pfc, align 4
  %34 = extractvalue { i32, i1 } %29, 0
  %call5.i = tail call noalias ptr @devm_kmalloc(ptr noundef %33, i32 noundef %34, i32 noundef 3264) #9
  %saved_regs = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 11
  %35 = ptrtoint ptr %saved_regs to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call5.i, ptr %saved_regs, align 4
  %tobool6.not = icmp eq ptr %call5.i, null
  br i1 %tobool6.not, label %devm_kmalloc_array.exit.cleanup_crit_edge, label %do.body

devm_kmalloc_array.exit.cleanup_crit_edge:        ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %devm_kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sh_pfc_suspend_init.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sh_pfc_suspend_init, %cleanup)) #9
          to label %if.then14 [label %cleanup], !srcloc !194

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %pfc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sh_pfc_suspend_init.__UNIQUE_ID_ddebug184, ptr noundef %37, ptr noundef nonnull @.str.88, i32 noundef %n.9.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %devm_kmalloc_array.exit.cleanup_crit_edge, %devm_kmalloc_array.exit.thread, %sh_pfc_walk_regs.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %sh_pfc_walk_regs.exit.cleanup_crit_edge ], [ -12, %devm_kmalloc_array.exit.cleanup_crit_edge ], [ 0, %if.then14 ], [ -12, %devm_kmalloc_array.exit.thread ], [ 0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_provide_dummies() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_register_pinctrl(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sh_pfc_register_gpiochip(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @soc_device_match(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sh_pfc_walk_regs(ptr noundef %pfc, ptr nocapture noundef readonly %do_reg) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %cfg_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cfg_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %cfg_regs2136 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %cfg_regs2136 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_regs2136, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not137 = icmp eq i32 %9, 0
  br i1 %tobool3.not137, label %for.cond.preheader.if.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %10 = phi i32 [ %16, %for.body.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %n.0139 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %inc = add i32 %n.0139, 1
  tail call void %do_reg(ptr noundef %pfc, i32 noundef %10, i32 noundef %n.0139) #9, !callees !197
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %cfg_regs2 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %cfg_regs2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg_regs2, align 4
  %arrayidx = getelementptr %struct.pinmux_cfg_reg, ptr %14, i32 %inc
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %n.1 = phi i32 [ 0, %entry.if.end_crit_edge ], [ 0, %for.cond.preheader.if.end_crit_edge ], [ %inc, %for.body.if.end_crit_edge ]
  %17 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info, align 4
  %drive_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %drive_regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drive_regs, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %if.end.if.end27_crit_edge, label %for.cond12.preheader

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.cond12.preheader:                             ; preds = %if.end
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info, align 4
  %drive_regs14140 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %drive_regs14140 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drive_regs14140, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not141 = icmp eq i32 %26, 0
  br i1 %tobool17.not141, label %for.cond12.preheader.if.end27_crit_edge, label %for.cond12.preheader.for.body18_crit_edge

for.cond12.preheader.for.body18_crit_edge:        ; preds = %for.cond12.preheader
  br label %for.body18

for.cond12.preheader.if.end27_crit_edge:          ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.cond12.preheader.for.body18_crit_edge
  %27 = phi i32 [ %33, %for.body18.for.body18_crit_edge ], [ %26, %for.cond12.preheader.for.body18_crit_edge ]
  %n.2143 = phi i32 [ %inc23, %for.body18.for.body18_crit_edge ], [ %n.1, %for.cond12.preheader.for.body18_crit_edge ]
  %i.1142 = phi i32 [ %inc25, %for.body18.for.body18_crit_edge ], [ 0, %for.cond12.preheader.for.body18_crit_edge ]
  %inc23 = add i32 %n.2143, 1
  tail call void %do_reg(ptr noundef %pfc, i32 noundef %27, i32 noundef %n.2143) #9, !callees !197
  %inc25 = add i32 %i.1142, 1
  %28 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %info, align 4
  %drive_regs14 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %29, i32 0, i32 16
  %30 = ptrtoint ptr %drive_regs14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %drive_regs14, align 4
  %arrayidx15 = getelementptr %struct.pinmux_drive_reg, ptr %31, i32 %inc25
  %32 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx15, align 4
  %tobool17.not = icmp eq i32 %33, 0
  br i1 %tobool17.not, label %for.body18.if.end27_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.body18.if.end27_crit_edge:                    ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end27:                                         ; preds = %for.body18.if.end27_crit_edge, %for.cond12.preheader.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %n.3 = phi i32 [ %n.1, %if.end.if.end27_crit_edge ], [ %n.1, %for.cond12.preheader.if.end27_crit_edge ], [ %inc23, %for.body18.if.end27_crit_edge ]
  %34 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %info, align 4
  %bias_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %35, i32 0, i32 17
  %36 = ptrtoint ptr %bias_regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bias_regs, align 4
  %tobool29.not = icmp eq ptr %37, null
  br i1 %tobool29.not, label %if.end27.if.end68_crit_edge, label %if.end27.for.cond31_crit_edge

if.end27.for.cond31_crit_edge:                    ; preds = %if.end27
  br label %for.cond31

if.end27.if.end68_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

for.cond31:                                       ; preds = %for.inc65, %if.end27.for.cond31_crit_edge
  %i.2 = phi i32 [ %inc66, %for.inc65 ], [ 0, %if.end27.for.cond31_crit_edge ]
  %n.4 = phi i32 [ %n.6, %for.inc65 ], [ %n.3, %if.end27.for.cond31_crit_edge ]
  %38 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info, align 4
  %bias_regs33 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %bias_regs33 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bias_regs33, align 4
  %arrayidx34 = getelementptr %struct.pinmux_bias_reg, ptr %41, i32 %i.2
  %42 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool35.not = icmp eq i32 %43, 0
  br i1 %tobool35.not, label %lor.rhs, label %if.then46

lor.rhs:                                          ; preds = %for.cond31
  %pud = getelementptr %struct.pinmux_bias_reg, ptr %41, i32 %i.2, i32 1
  %44 = ptrtoint ptr %pud to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %pud, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool39.not = icmp eq i32 %45, 0
  br i1 %tobool39.not, label %lor.rhs.if.end68_crit_edge, label %lor.rhs.if.end52_crit_edge

lor.rhs.if.end52_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

lor.rhs.if.end68_crit_edge:                       ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68

if.then46:                                        ; preds = %for.cond31
  call void @__sanitizer_cov_trace_pc() #11
  %inc51 = add i32 %n.4, 1
  tail call void %do_reg(ptr noundef %pfc, i32 noundef %43, i32 noundef %n.4) #9, !callees !197
  br label %if.end52

if.end52:                                         ; preds = %if.then46, %lor.rhs.if.end52_crit_edge
  %n.5 = phi i32 [ %inc51, %if.then46 ], [ %n.4, %lor.rhs.if.end52_crit_edge ]
  %46 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %info, align 4
  %bias_regs54 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %47, i32 0, i32 17
  %48 = ptrtoint ptr %bias_regs54 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bias_regs54, align 4
  %pud56 = getelementptr %struct.pinmux_bias_reg, ptr %49, i32 %i.2, i32 1
  %50 = ptrtoint ptr %pud56 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %pud56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool57.not = icmp eq i32 %51, 0
  br i1 %tobool57.not, label %if.end52.for.inc65_crit_edge, label %if.then58

if.end52.for.inc65_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65

if.then58:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  %inc63 = add i32 %n.5, 1
  tail call void %do_reg(ptr noundef %pfc, i32 noundef %51, i32 noundef %n.5) #9, !callees !197
  br label %for.inc65

for.inc65:                                        ; preds = %if.then58, %if.end52.for.inc65_crit_edge
  %n.6 = phi i32 [ %inc63, %if.then58 ], [ %n.5, %if.end52.for.inc65_crit_edge ]
  %inc66 = add i32 %i.2, 1
  br label %for.cond31

if.end68:                                         ; preds = %lor.rhs.if.end68_crit_edge, %if.end27.if.end68_crit_edge
  %n.7 = phi i32 [ %n.3, %if.end27.if.end68_crit_edge ], [ %n.4, %lor.rhs.if.end68_crit_edge ]
  %52 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %info, align 4
  %ioctrl_regs = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %ioctrl_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ioctrl_regs, align 4
  %tobool70.not = icmp eq ptr %55, null
  br i1 %tobool70.not, label %if.end68.if.end87_crit_edge, label %for.cond72.preheader

if.end68.if.end87_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

for.cond72.preheader:                             ; preds = %if.end68
  %56 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %info, align 4
  %ioctrl_regs74145 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %57, i32 0, i32 18
  %58 = ptrtoint ptr %ioctrl_regs74145 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ioctrl_regs74145, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool77.not146 = icmp eq i32 %61, 0
  br i1 %tobool77.not146, label %for.cond72.preheader.if.end87_crit_edge, label %for.cond72.preheader.for.body78_crit_edge

for.cond72.preheader.for.body78_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body78

for.cond72.preheader.if.end87_crit_edge:          ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.cond72.preheader.for.body78_crit_edge
  %62 = phi i32 [ %68, %for.body78.for.body78_crit_edge ], [ %61, %for.cond72.preheader.for.body78_crit_edge ]
  %n.8148 = phi i32 [ %inc83, %for.body78.for.body78_crit_edge ], [ %n.7, %for.cond72.preheader.for.body78_crit_edge ]
  %i.3147 = phi i32 [ %inc85, %for.body78.for.body78_crit_edge ], [ 0, %for.cond72.preheader.for.body78_crit_edge ]
  %inc83 = add i32 %n.8148, 1
  tail call void %do_reg(ptr noundef %pfc, i32 noundef %62, i32 noundef %n.8148) #9, !callees !197
  %inc85 = add i32 %i.3147, 1
  %63 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %info, align 4
  %ioctrl_regs74 = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %64, i32 0, i32 18
  %65 = ptrtoint ptr %ioctrl_regs74 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ioctrl_regs74, align 4
  %arrayidx75 = getelementptr %struct.pinmux_ioctrl_reg, ptr %66, i32 %inc85
  %67 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx75, align 4
  %tobool77.not = icmp eq i32 %68, 0
  br i1 %tobool77.not, label %for.body78.if.end87_crit_edge, label %for.body78.for.body78_crit_edge

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78

for.body78.if.end87_crit_edge:                    ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end87

if.end87:                                         ; preds = %for.body78.if.end87_crit_edge, %for.cond72.preheader.if.end87_crit_edge, %if.end68.if.end87_crit_edge
  %n.9 = phi i32 [ %n.7, %if.end68.if.end87_crit_edge ], [ %n.7, %for.cond72.preheader.if.end87_crit_edge ], [ %inc83, %for.body78.if.end87_crit_edge ]
  ret i32 %n.9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_suspend_noirq(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %saved_regs = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %saved_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @sh_pfc_walk_regs(ptr noundef %1, ptr noundef nonnull @sh_pfc_save_reg)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sh_pfc_resume_noirq(ptr nocapture noundef readonly %dev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %saved_regs = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %saved_regs, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %info.i = getelementptr inbounds %struct.sh_pfc, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info.i, align 4
  %cfg_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %cfg_regs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cfg_regs.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %for.cond.preheader.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.cond.preheader.i:                             ; preds = %if.then
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not137.i = icmp eq i32 %9, 0
  br i1 %tobool3.not137.i, label %for.cond.preheader.i.if.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end.i_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %10 = phi i32 [ %20, %for.body.i.for.body.i_crit_edge ], [ %9, %for.cond.preheader.i.for.body.i_crit_edge ]
  %n.0139.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %inc.i = add i32 %n.0139.i, 1
  %11 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_regs, align 4
  %arrayidx.i11 = getelementptr i32, ptr %12, i32 %n.0139.i
  %13 = ptrtoint ptr %arrayidx.i11 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i11, align 4
  tail call void @sh_pfc_write(ptr noundef %1, i32 noundef %10, i32 noundef %14) #9
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %info.i, align 4
  %cfg_regs2.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %cfg_regs2.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cfg_regs2.i, align 4
  %arrayidx.i = getelementptr %struct.pinmux_cfg_reg, ptr %18, i32 %inc.i
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %tobool3.not.i = icmp eq i32 %20, 0
  br i1 %tobool3.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %for.cond.preheader.i.if.end.i_crit_edge, %if.then.if.end.i_crit_edge
  %n.1.i = phi i32 [ 0, %if.then.if.end.i_crit_edge ], [ 0, %for.cond.preheader.i.if.end.i_crit_edge ], [ %inc.i, %for.body.i.if.end.i_crit_edge ]
  %21 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %info.i, align 4
  %drive_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %22, i32 0, i32 16
  %23 = ptrtoint ptr %drive_regs.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %drive_regs.i, align 4
  %tobool10.not.i = icmp eq ptr %24, null
  br i1 %tobool10.not.i, label %if.end.i.if.end27.i_crit_edge, label %for.cond12.preheader.i

if.end.i.if.end27.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

for.cond12.preheader.i:                           ; preds = %if.end.i
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not141.i = icmp eq i32 %26, 0
  br i1 %tobool17.not141.i, label %for.cond12.preheader.i.if.end27.i_crit_edge, label %for.cond12.preheader.i.for.body18.i_crit_edge

for.cond12.preheader.i.for.body18.i_crit_edge:    ; preds = %for.cond12.preheader.i
  br label %for.body18.i

for.cond12.preheader.i.if.end27.i_crit_edge:      ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

for.body18.i:                                     ; preds = %for.body18.i.for.body18.i_crit_edge, %for.cond12.preheader.i.for.body18.i_crit_edge
  %27 = phi i32 [ %37, %for.body18.i.for.body18.i_crit_edge ], [ %26, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %n.2143.i = phi i32 [ %inc23.i, %for.body18.i.for.body18.i_crit_edge ], [ %n.1.i, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %i.1142.i = phi i32 [ %inc25.i, %for.body18.i.for.body18.i_crit_edge ], [ 0, %for.cond12.preheader.i.for.body18.i_crit_edge ]
  %inc23.i = add i32 %n.2143.i, 1
  %28 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %saved_regs, align 4
  %arrayidx.i9 = getelementptr i32, ptr %29, i32 %n.2143.i
  %30 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i9, align 4
  tail call void @sh_pfc_write(ptr noundef %1, i32 noundef %27, i32 noundef %31) #9
  %inc25.i = add i32 %i.1142.i, 1
  %32 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %info.i, align 4
  %drive_regs14.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %33, i32 0, i32 16
  %34 = ptrtoint ptr %drive_regs14.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %drive_regs14.i, align 4
  %arrayidx15.i = getelementptr %struct.pinmux_drive_reg, ptr %35, i32 %inc25.i
  %36 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx15.i, align 4
  %tobool17.not.i = icmp eq i32 %37, 0
  br i1 %tobool17.not.i, label %for.body18.i.if.end27.i_crit_edge, label %for.body18.i.for.body18.i_crit_edge

for.body18.i.for.body18.i_crit_edge:              ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18.i

for.body18.i.if.end27.i_crit_edge:                ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27.i

if.end27.i:                                       ; preds = %for.body18.i.if.end27.i_crit_edge, %for.cond12.preheader.i.if.end27.i_crit_edge, %if.end.i.if.end27.i_crit_edge
  %n.3.i = phi i32 [ %n.1.i, %if.end.i.if.end27.i_crit_edge ], [ %n.1.i, %for.cond12.preheader.i.if.end27.i_crit_edge ], [ %inc23.i, %for.body18.i.if.end27.i_crit_edge ]
  %38 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %info.i, align 4
  %bias_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %39, i32 0, i32 17
  %40 = ptrtoint ptr %bias_regs.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %bias_regs.i, align 4
  %tobool29.not.i = icmp eq ptr %41, null
  br i1 %tobool29.not.i, label %if.end27.i.if.end68.i_crit_edge, label %if.end27.i.for.cond31.i_crit_edge

if.end27.i.for.cond31.i_crit_edge:                ; preds = %if.end27.i
  br label %for.cond31.i

if.end27.i.if.end68.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

for.cond31.i:                                     ; preds = %for.inc65.i, %if.end27.i.for.cond31.i_crit_edge
  %i.2.i = phi i32 [ %inc66.i, %for.inc65.i ], [ 0, %if.end27.i.for.cond31.i_crit_edge ]
  %n.4.i = phi i32 [ %n.6.i, %for.inc65.i ], [ %n.3.i, %if.end27.i.for.cond31.i_crit_edge ]
  %42 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %info.i, align 4
  %bias_regs33.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %43, i32 0, i32 17
  %44 = ptrtoint ptr %bias_regs33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bias_regs33.i, align 4
  %arrayidx34.i = getelementptr %struct.pinmux_bias_reg, ptr %45, i32 %i.2.i
  %46 = ptrtoint ptr %arrayidx34.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx34.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool35.not.i = icmp eq i32 %47, 0
  br i1 %tobool35.not.i, label %lor.rhs.i, label %if.then46.i

lor.rhs.i:                                        ; preds = %for.cond31.i
  %pud.i = getelementptr %struct.pinmux_bias_reg, ptr %45, i32 %i.2.i, i32 1
  %48 = ptrtoint ptr %pud.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %pud.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool39.not.i = icmp eq i32 %49, 0
  br i1 %tobool39.not.i, label %lor.rhs.i.if.end68.i_crit_edge, label %lor.rhs.i.if.end52.i_crit_edge

lor.rhs.i.if.end52.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52.i

lor.rhs.i.if.end68.i_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end68.i

if.then46.i:                                      ; preds = %for.cond31.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc51.i = add i32 %n.4.i, 1
  %50 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %saved_regs, align 4
  %arrayidx.i7 = getelementptr i32, ptr %51, i32 %n.4.i
  %52 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i7, align 4
  tail call void @sh_pfc_write(ptr noundef %1, i32 noundef %47, i32 noundef %53) #9
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then46.i, %lor.rhs.i.if.end52.i_crit_edge
  %n.5.i = phi i32 [ %inc51.i, %if.then46.i ], [ %n.4.i, %lor.rhs.i.if.end52.i_crit_edge ]
  %54 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %info.i, align 4
  %bias_regs54.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %55, i32 0, i32 17
  %56 = ptrtoint ptr %bias_regs54.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %bias_regs54.i, align 4
  %pud56.i = getelementptr %struct.pinmux_bias_reg, ptr %57, i32 %i.2.i, i32 1
  %58 = ptrtoint ptr %pud56.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pud56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool57.not.i = icmp eq i32 %59, 0
  br i1 %tobool57.not.i, label %if.end52.i.for.inc65.i_crit_edge, label %if.then58.i

if.end52.i.for.inc65.i_crit_edge:                 ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc65.i

if.then58.i:                                      ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #11
  %inc63.i = add i32 %n.5.i, 1
  %60 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %saved_regs, align 4
  %arrayidx.i5 = getelementptr i32, ptr %61, i32 %n.5.i
  %62 = ptrtoint ptr %arrayidx.i5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i5, align 4
  tail call void @sh_pfc_write(ptr noundef %1, i32 noundef %59, i32 noundef %63) #9
  br label %for.inc65.i

for.inc65.i:                                      ; preds = %if.then58.i, %if.end52.i.for.inc65.i_crit_edge
  %n.6.i = phi i32 [ %inc63.i, %if.then58.i ], [ %n.5.i, %if.end52.i.for.inc65.i_crit_edge ]
  %inc66.i = add i32 %i.2.i, 1
  br label %for.cond31.i

if.end68.i:                                       ; preds = %lor.rhs.i.if.end68.i_crit_edge, %if.end27.i.if.end68.i_crit_edge
  %n.7.i = phi i32 [ %n.3.i, %if.end27.i.if.end68.i_crit_edge ], [ %n.4.i, %lor.rhs.i.if.end68.i_crit_edge ]
  %64 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %info.i, align 4
  %ioctrl_regs.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %65, i32 0, i32 18
  %66 = ptrtoint ptr %ioctrl_regs.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ioctrl_regs.i, align 4
  %tobool70.not.i = icmp eq ptr %67, null
  br i1 %tobool70.not.i, label %if.end68.i.if.end_crit_edge, label %for.cond72.preheader.i

if.end68.i.if.end_crit_edge:                      ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond72.preheader.i:                           ; preds = %if.end68.i
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool77.not146.i = icmp eq i32 %69, 0
  br i1 %tobool77.not146.i, label %for.cond72.preheader.i.if.end_crit_edge, label %for.cond72.preheader.i.for.body78.i_crit_edge

for.cond72.preheader.i.for.body78.i_crit_edge:    ; preds = %for.cond72.preheader.i
  br label %for.body78.i

for.cond72.preheader.i.if.end_crit_edge:          ; preds = %for.cond72.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body78.i:                                     ; preds = %for.body78.i.for.body78.i_crit_edge, %for.cond72.preheader.i.for.body78.i_crit_edge
  %70 = phi i32 [ %80, %for.body78.i.for.body78.i_crit_edge ], [ %69, %for.cond72.preheader.i.for.body78.i_crit_edge ]
  %n.8148.i = phi i32 [ %inc83.i, %for.body78.i.for.body78.i_crit_edge ], [ %n.7.i, %for.cond72.preheader.i.for.body78.i_crit_edge ]
  %i.3147.i = phi i32 [ %inc85.i, %for.body78.i.for.body78.i_crit_edge ], [ 0, %for.cond72.preheader.i.for.body78.i_crit_edge ]
  %inc83.i = add i32 %n.8148.i, 1
  %71 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %saved_regs, align 4
  %arrayidx.i3 = getelementptr i32, ptr %72, i32 %n.8148.i
  %73 = ptrtoint ptr %arrayidx.i3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx.i3, align 4
  tail call void @sh_pfc_write(ptr noundef %1, i32 noundef %70, i32 noundef %74) #9
  %inc85.i = add i32 %i.3147.i, 1
  %75 = ptrtoint ptr %info.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %info.i, align 4
  %ioctrl_regs74.i = getelementptr inbounds %struct.sh_pfc_soc_info, ptr %76, i32 0, i32 18
  %77 = ptrtoint ptr %ioctrl_regs74.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ioctrl_regs74.i, align 4
  %arrayidx75.i = getelementptr %struct.pinmux_ioctrl_reg, ptr %78, i32 %inc85.i
  %79 = ptrtoint ptr %arrayidx75.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx75.i, align 4
  %tobool77.not.i = icmp eq i32 %80, 0
  br i1 %tobool77.not.i, label %for.body78.i.if.end_crit_edge, label %for.body78.i.for.body78.i_crit_edge

for.body78.i.for.body78.i_crit_edge:              ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body78.i

for.body78.i.if.end_crit_edge:                    ; preds = %for.body78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %for.body78.i.if.end_crit_edge, %for.cond72.preheader.i.if.end_crit_edge, %if.end68.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sh_pfc_save_reg(ptr nocapture noundef readonly %pfc, i32 noundef %reg, i32 noundef %idx) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %num_windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 3
  %0 = ptrtoint ptr %num_windows.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_windows.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp24.not.i.i = icmp eq i32 %1, 0
  br i1 %cmp24.not.i.i, label %entry.do.body.i.i_crit_edge, label %for.body.lr.ph.i.i

entry.do.body.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %windows.i.i = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 4
  %2 = ptrtoint ptr %windows.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %windows.i.i, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.025.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i.i
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %reg)
  %cmp1.i.i = icmp ugt i32 %5, %reg
  br i1 %cmp1.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

if.end.i.i:                                       ; preds = %for.body.i.i
  %size.i.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i.i, i32 2
  %6 = ptrtoint ptr %size.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size.i.i, align 4
  %add.i.i = add i32 %7, %5
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %reg)
  %cmp3.not.i.i = icmp ugt i32 %add.i.i, %reg
  br i1 %cmp3.not.i.i, label %sh_pfc_read.exit, label %if.end.i.i.for.inc.i.i_crit_edge

if.end.i.i.for.inc.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %1
  br i1 %exitcond.not.i.i, label %for.inc.i.i.do.body.i.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.inc.i.i.do.body.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %for.inc.i.i.do.body.i.i_crit_edge, %entry.do.body.i.i_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/pinctrl/renesas/core.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #9, !srcloc !193
  unreachable

sh_pfc_read.exit:                                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %virt.i.i = getelementptr %struct.sh_pfc_window, ptr %3, i32 %i.025.i.i, i32 1
  %8 = ptrtoint ptr %virt.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt.i.i, align 4
  %sub.i.i = sub i32 %reg, %5
  %add.ptr7.i.i = getelementptr i8, ptr %9, i32 %sub.i.i
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i.i) #9, !srcloc !183
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  %saved_regs = getelementptr inbounds %struct.sh_pfc, ptr %pfc, i32 0, i32 11
  %12 = ptrtoint ptr %saved_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %saved_regs, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %idx
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 85)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !93, !95, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !119, !120, !121, !123, !124, !125, !126, !128, !129, !130, !131, !132, !134, !136, !138, !140, !142, !143, !145, !146, !147, !148, !149, !151, !152, !153, !154, !156, !158, !160, !162, !163, !164, !166, !168}
!llvm.module.flags = !{!170, !171, !172, !173, !174, !175, !176, !177}
!llvm.ident = !{!178}

!0 = !{ptr @__initcall__kmod_core__185_1261_sh_pfc_init2, !1, !"__initcall__kmod_core__185_1261_sh_pfc_init2", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/renesas/core.c", i32 1261, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pinctrl/renesas/core.c", i32 310, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sh_pfc_mark_to_enum._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @sh_pfc_mark_to_enum._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pinctrl/renesas/core.c", i32 231, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @sh_pfc_write_config_reg.__UNIQUE_ID_ddebug183, !11, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pinctrl/renesas/core.c", i32 1084, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sh_pfc_check_driver._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @sh_pfc_check_driver._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/renesas/core.c", i32 1094, i32 2}
!22 = !{ptr @sh_pfc_check_driver._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sh_pfc_check_driver._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @sh_pfc_regs, !25, !"sh_pfc_regs", i1 false, i1 false}
!25 = !{!"../drivers/pinctrl/renesas/core.c", i32 751, i32 4}
!26 = !{ptr @sh_pfc_enums, !27, !"sh_pfc_enums", i1 false, i1 false}
!27 = !{!"../drivers/pinctrl/renesas/core.c", i32 753, i32 13}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pinctrl/renesas/core.c", i32 937, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @sh_pfc_check_info._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @sh_pfc_check_info._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.16, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/pinctrl/renesas/core.c", i32 946, i32 4}
!35 = !{ptr @sh_pfc_check_info._entry.15, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sh_pfc_check_info._entry_ptr.17, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/pinctrl/renesas/core.c", i32 953, i32 5}
!39 = !{ptr @sh_pfc_check_info._entry.18, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @sh_pfc_check_info._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/pinctrl/renesas/core.c", i32 957, i32 5}
!43 = !{ptr @sh_pfc_check_info._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @sh_pfc_check_info._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/pinctrl/renesas/core.c", i32 961, i32 5}
!47 = !{ptr @sh_pfc_check_info._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @sh_pfc_check_info._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.28, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/pinctrl/renesas/core.c", i32 976, i32 4}
!51 = !{ptr @sh_pfc_check_info._entry.27, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @sh_pfc_check_info._entry_ptr.29, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.31, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/pinctrl/renesas/core.c", i32 981, i32 5}
!55 = !{ptr @sh_pfc_check_info._entry.30, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @sh_pfc_check_info._entry_ptr.32, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.34, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/pinctrl/renesas/core.c", i32 994, i32 5}
!59 = !{ptr @sh_pfc_check_info._entry.33, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @sh_pfc_check_info._entry_ptr.35, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pinctrl/renesas/core.c", i32 1003, i32 4}
!63 = !{ptr @sh_pfc_check_info._entry.36, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @sh_pfc_check_info._entry_ptr.38, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.40, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/pinctrl/renesas/core.c", i32 1008, i32 5}
!67 = !{ptr @sh_pfc_check_info._entry.39, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @sh_pfc_check_info._entry_ptr.41, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.43, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/pinctrl/renesas/core.c", i32 1012, i32 4}
!71 = !{ptr @sh_pfc_check_info._entry.42, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @sh_pfc_check_info._entry_ptr.44, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.46, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pinctrl/renesas/core.c", i32 1014, i32 4}
!75 = !{ptr @sh_pfc_check_info._entry.45, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @sh_pfc_check_info._entry_ptr.47, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.49, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/pinctrl/renesas/core.c", i32 1051, i32 4}
!79 = !{ptr @sh_pfc_check_info._entry.48, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @sh_pfc_check_info._entry_ptr.50, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.52, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/pinctrl/renesas/core.c", i32 1056, i32 5}
!83 = !{ptr @sh_pfc_check_info._entry.51, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @sh_pfc_check_info._entry_ptr.53, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.55, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/pinctrl/renesas/core.c", i32 1060, i32 4}
!87 = !{ptr @sh_pfc_check_info._entry.54, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @sh_pfc_check_info._entry_ptr.56, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @sh_pfc_num_regs, !90, !"sh_pfc_num_regs", i1 false, i1 false}
!90 = !{!"../drivers/pinctrl/renesas/core.c", i32 752, i32 12}
!91 = !{ptr @sh_pfc_num_enums, !92, !"sh_pfc_num_enums", i1 false, i1 false}
!92 = !{!"../drivers/pinctrl/renesas/core.c", i32 754, i32 12}
!93 = !{ptr @.str.57, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pinctrl/renesas/core.c", i32 875, i32 4}
!95 = !{ptr @.str.58, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @sh_pfc_check_cfg_reg._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @sh_pfc_check_cfg_reg._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.60, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/pinctrl/renesas/core.c", i32 882, i32 3}
!100 = !{ptr @sh_pfc_check_cfg_reg._entry.59, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @sh_pfc_check_cfg_reg._entry_ptr.61, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.63, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/pinctrl/renesas/core.c", i32 886, i32 3}
!104 = !{ptr @sh_pfc_check_cfg_reg._entry.62, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @sh_pfc_check_cfg_reg._entry_ptr.64, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.65, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/pinctrl/renesas/core.c", i32 856, i32 2}
!108 = !{ptr @.str.66, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @sh_pfc_check_pin._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @sh_pfc_check_pin._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.67, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pinctrl/renesas/core.c", i32 795, i32 4}
!113 = !{ptr @.str.68, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @sh_pfc_check_reg._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @sh_pfc_check_reg._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/pinctrl/renesas/core.c", i32 803, i32 3}
!118 = !{ptr @.str.70, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @sh_pfc_check_reg._entry.69, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @sh_pfc_check_reg._entry_ptr.71, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.72, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/pinctrl/renesas/core.c", i32 837, i32 4}
!123 = !{ptr @.str.73, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @sh_pfc_check_reg_enums._entry, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @sh_pfc_check_reg_enums._entry_ptr, !122, !"_entry_ptr", i1 false, i1 false}
!126 = distinct !{null, !127, !"__already_done", i1 false, i1 false}
!127 = !{!"../drivers/pinctrl/renesas/core.c", i32 822, i32 3}
!128 = !{ptr @.str.74, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.75, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sh_pfc_check_enum._entry, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @sh_pfc_check_enum._entry_ptr, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @sh_pfc_errors, !133, !"sh_pfc_errors", i1 false, i1 false}
!133 = !{!"../drivers/pinctrl/renesas/core.c", i32 746, i32 21}
!134 = !{ptr @sh_pfc_warnings, !135, !"sh_pfc_warnings", i1 false, i1 false}
!135 = !{!"../drivers/pinctrl/renesas/core.c", i32 747, i32 21}
!136 = !{ptr @.str.76, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/pinctrl/renesas/core.c", i32 1250, i32 11}
!138 = !{ptr @sh_pfc_driver, !139, !"sh_pfc_driver", i1 false, i1 false}
!139 = !{!"../drivers/pinctrl/renesas/core.c", i32 1246, i32 31}
!140 = !{ptr @sh_pfc_probe.__key, !141, !"__key", i1 false, i1 false}
!141 = !{!"../drivers/pinctrl/renesas/core.c", i32 1154, i32 2}
!142 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @.str.78, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/pinctrl/renesas/core.c", i32 1195, i32 3}
!145 = !{ptr @.str.79, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @sh_pfc_probe._entry, !144, !"_entry", i1 false, i1 false}
!148 = !{ptr @sh_pfc_probe._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.82, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/pinctrl/renesas/core.c", i32 1201, i32 2}
!151 = !{ptr @.str.83, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @sh_pfc_probe._entry.81, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @sh_pfc_probe._entry_ptr.84, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.85, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/pinctrl/renesas/core.c", i32 1113, i32 37}
!156 = !{ptr @.str.86, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/pinctrl/renesas/core.c", i32 1113, i32 14}
!158 = !{ptr @sh_pfc_quirk_match.quirks, !159, !"quirks", i1 false, i1 false}
!159 = !{!"../drivers/pinctrl/renesas/core.c", i32 1111, i32 43}
!160 = !{ptr @.str.87, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/pinctrl/renesas/core.c", i32 711, i32 2}
!162 = !{ptr @.str.88, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @sh_pfc_suspend_init.__UNIQUE_ID_ddebug184, !161, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!164 = !{ptr @sh_pfc_of_table, !165, !"sh_pfc_of_table", i1 false, i1 false}
!165 = !{!"../drivers/pinctrl/renesas/core.c", i32 459, i32 34}
!166 = !{ptr @sh_pfc_pm, !167, !"sh_pfc_pm", i1 false, i1 false}
!167 = !{!"../drivers/pinctrl/renesas/core.c", i32 733, i32 32}
!168 = !{ptr @sh_pfc_id_table, !169, !"sh_pfc_id_table", i1 false, i1 false}
!169 = !{!"../drivers/pinctrl/renesas/core.c", i32 1206, i32 40}
!170 = !{i32 1, !"wchar_size", i32 2}
!171 = !{i32 1, !"min_enum_size", i32 4}
!172 = !{i32 8, !"branch-target-enforcement", i32 0}
!173 = !{i32 8, !"sign-return-address", i32 0}
!174 = !{i32 8, !"sign-return-address-all", i32 0}
!175 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!176 = !{i32 7, !"uwtable", i32 1}
!177 = !{i32 7, !"frame-pointer", i32 2}
!178 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!179 = !{i64 1209724}
!180 = !{i64 2148897064}
!181 = !{i64 1209106}
!182 = !{i64 2148897676}
!183 = !{i64 1209944}
!184 = !{i64 2148898288}
!185 = !{i64 2152985631, i64 2152986126, i64 2152985668, i64 2152985724, i64 2152985758, i64 2152985782, i64 2152985823, i64 2152985844, i64 2152985872, i64 2152985906}
!186 = !{i64 2148898669}
!187 = !{i64 1209329}
!188 = !{i64 2148899093}
!189 = !{i64 1208906}
!190 = !{i64 2148899643}
!191 = !{i64 1209526}
!192 = !{i64 2152987171, i64 2152987666, i64 2152987208, i64 2152987264, i64 2152987298, i64 2152987322, i64 2152987363, i64 2152987384, i64 2152987412, i64 2152987446}
!193 = !{i64 2152984079, i64 2152984574, i64 2152984116, i64 2152984172, i64 2152984206, i64 2152984230, i64 2152984271, i64 2152984292, i64 2152984320, i64 2152984354}
!194 = !{i64 2148687167, i64 2148687172, i64 2148687185, i64 2148687229, i64 2148687263, i64 2148687284}
!195 = !{!"branch_weights", i32 1, i32 2000}
!196 = !{!"branch_weights", i32 2000, i32 1}
!197 = distinct !{null, null, ptr @sh_pfc_save_reg}
