; ModuleID = '/llk/IR_all_yes/drivers/pinctrl/berlin/berlin.c_pt.bc'
source_filename = "../drivers/pinctrl/berlin/berlin.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pinctrl_desc = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8 }
%struct.pinctrl_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pinmux_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
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
%struct.berlin_pinctrl = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.berlin_pinctrl_desc = type { ptr, i32 }
%struct.berlin_desc_group = type { ptr, i8, i8, i8, ptr }
%struct.berlin_pinctrl_function = type { ptr, ptr, i32 }
%struct.berlin_desc_function = type { ptr, i8 }

@berlin_pinctrl_probe_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 314, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cannot build driver state: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"berlin_pinctrl_probe_regmap\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/pinctrl/berlin/berlin.c\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@berlin_pinctrl_probe_regmap._entry_ptr = internal global ptr @berlin_pinctrl_probe_regmap._entry, section ".printk_index", align 4
@berlin_pctrl_desc = internal global { %struct.pinctrl_desc, [52 x i8] } { %struct.pinctrl_desc { ptr @.str.8, ptr null, i32 0, ptr @berlin_pinctrl_ops, ptr @berlin_pinmux_ops, ptr null, ptr null, i32 0, ptr null, ptr null, i8 0 }, [52 x i8] zeroinitializer }, align 32
@berlin_pinctrl_probe_regmap._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 321, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to register pinctrl driver\0A\00", [61 x i8] zeroinitializer }, align 32
@berlin_pinctrl_probe_regmap._entry_ptr.7 = internal global ptr @berlin_pinctrl_probe_regmap._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"berlin-pinctrl\00", [17 x i8] zeroinitializer }, align 32
@berlin_pinctrl_ops = internal constant { %struct.pinctrl_ops, [40 x i8] } { %struct.pinctrl_ops { ptr @berlin_pinctrl_get_group_count, ptr @berlin_pinctrl_get_group_name, ptr null, ptr null, ptr @berlin_pinctrl_dt_node_to_map, ptr @pinctrl_utils_free_map }, [40 x i8] zeroinitializer }, align 32
@berlin_pinmux_ops = internal constant { %struct.pinmux_ops, [56 x i8] } { %struct.pinmux_ops { ptr null, ptr null, ptr @berlin_pinmux_get_functions_count, ptr @berlin_pinmux_get_function_name, ptr @berlin_pinmux_get_function_groups, ptr @berlin_pinmux_set, ptr null, ptr null, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 67, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"missing function property in node %pOFn\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"berlin_pinctrl_dt_node_to_map\00", [34 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry_ptr = internal global ptr @berlin_pinctrl_dt_node_to_map._entry, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"groups\00", [25 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 74, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"missing groups property in node %pOFn\0A\00", [57 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry_ptr.15 = internal global ptr @berlin_pinctrl_dt_node_to_map._entry.13, section ".printk_index", align 4
@berlin_pinctrl_dt_node_to_map._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.2, i32 81, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"can't reserve map: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry_ptr.18 = internal global ptr @berlin_pinctrl_dt_node_to_map._entry.16, section ".printk_index", align 4
@berlin_pinctrl_dt_node_to_map._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.11, ptr @.str.2, i32 90, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't add map: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@berlin_pinctrl_dt_node_to_map._entry_ptr.21 = internal global ptr @berlin_pinctrl_dt_node_to_map._entry.19, section ".printk_index", align 4
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 314, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"berlin_pctrl_desc\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 287, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 321, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 288, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"berlin_pinctrl_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 98, i32 33 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"berlin_pinmux_ops\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 173, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 64, i32 38 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 66, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 71, i32 44 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 73, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 81, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.89 = private constant [35 x i8] c"../drivers/pinctrl/berlin/berlin.c\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 90, i32 4 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @berlin_pinctrl_dt_node_to_map._entry, ptr @berlin_pinctrl_dt_node_to_map._entry.13, ptr @berlin_pinctrl_dt_node_to_map._entry.16, ptr @berlin_pinctrl_dt_node_to_map._entry.19, ptr @berlin_pinctrl_dt_node_to_map._entry_ptr, ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.15, ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.18, ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.21, ptr @berlin_pinctrl_probe_regmap._entry, ptr @berlin_pinctrl_probe_regmap._entry.5, ptr @berlin_pinctrl_probe_regmap._entry_ptr, ptr @berlin_pinctrl_probe_regmap._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @berlin_pctrl_desc, ptr @.str.6, ptr @.str.8, ptr @berlin_pinctrl_ops, ptr @berlin_pinmux_ops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_probe_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pctrl_desc to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_probe_regmap._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinmux_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_dt_node_to_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_dt_node_to_map._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_dt_node_to_map._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @berlin_pinctrl_dt_node_to_map._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @berlin_pinctrl_probe_regmap(ptr noundef %pdev, ptr noundef %desc, ptr noundef %regmap) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 24, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %regmap, ptr %call.i, align 4
  %dev4 = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %dev4, align 4
  %desc5 = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %desc5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %desc, ptr %desc5, align 4
  %nfunctions.i = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nfunctions.i, align 4
  %ngroups.i = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %desc, i32 0, i32 1
  %5 = ptrtoint ptr %ngroups.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ngroups.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp146.not.i = icmp eq i32 %6, 0
  br i1 %cmp146.not.i, label %if.end.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end
  %7 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %desc, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %max_functions.0148.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add2.i, %for.body.i.for.body.i_crit_edge ]
  %i.0147.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %bit_width.i = getelementptr %struct.berlin_desc_group, ptr %8, i32 %i.0147.i, i32 2
  %9 = ptrtoint ptr %bit_width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_width.i, align 1
  %conv.i = zext i8 %10 to i32
  %shl.i = shl i32 2, %conv.i
  %add2.i = add i32 %shl.i, %max_functions.0148.i
  %inc.i = add nuw i32 %i.0147.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %6
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %if.end.for.end.i_crit_edge
  %max_functions.0.lcssa.i = phi i32 [ 0, %if.end.for.end.i_crit_edge ], [ %add2.i, %for.body.i.for.end.i_crit_edge ]
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %max_functions.0.lcssa.i, i32 12) #8
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %kcalloc.exit.thread.i, label %if.end7.i.i.i, !prof !50

kcalloc.exit.thread.i:                            ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %functions134.i = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %functions134.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %functions134.i, align 4
  br label %do.end

if.end7.i.i.i:                                    ; preds = %for.end.i
  %14 = extractvalue { i32, i1 } %11, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3520) #11
  %functions.i = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call8.i.i.i, ptr %functions.i, align 4
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.do.end_crit_edge, label %for.cond5.preheader.i

if.end7.i.i.i.do.end_crit_edge:                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

for.cond5.preheader.i:                            ; preds = %if.end7.i.i.i
  %16 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc5, align 4
  %ngroups7151.i = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ngroups7151.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ngroups7151.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp8152.not.i = icmp eq i32 %19, 0
  br i1 %cmp8152.not.i, label %for.cond5.preheader.i.for.end20.i_crit_edge, label %for.cond5.preheader.i.for.body10.i_crit_edge

for.cond5.preheader.i.for.body10.i_crit_edge:     ; preds = %for.cond5.preheader.i
  br label %for.body10.i

for.cond5.preheader.i.for.end20.i_crit_edge:      ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end20.i

for.body10.i:                                     ; preds = %for.inc18.i.for.body10.i_crit_edge, %for.cond5.preheader.i.for.body10.i_crit_edge
  %20 = phi ptr [ %42, %for.inc18.i.for.body10.i_crit_edge ], [ %17, %for.cond5.preheader.i.for.body10.i_crit_edge ]
  %i.1153.i = phi i32 [ %inc19.i, %for.inc18.i.for.body10.i_crit_edge ], [ 0, %for.cond5.preheader.i.for.body10.i_crit_edge ]
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %functions14.i = getelementptr %struct.berlin_desc_group, ptr %22, i32 %i.1153.i, i32 4
  %23 = ptrtoint ptr %functions14.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %functions14.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 4
  %tobool15.not149.i = icmp eq ptr %26, null
  br i1 %tobool15.not149.i, label %for.body10.i.for.inc18.i_crit_edge, label %for.body10.i.while.body.i_crit_edge

for.body10.i.while.body.i_crit_edge:              ; preds = %for.body10.i
  br label %while.body.i

for.body10.i.for.inc18.i_crit_edge:               ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.i

while.body.i:                                     ; preds = %berlin_pinctrl_add_function.exit.i.while.body.i_crit_edge, %for.body10.i.while.body.i_crit_edge
  %27 = phi ptr [ %40, %berlin_pinctrl_add_function.exit.i.while.body.i_crit_edge ], [ %26, %for.body10.i.while.body.i_crit_edge ]
  %desc_function.0150.i = phi ptr [ %incdec.ptr.i, %berlin_pinctrl_add_function.exit.i.while.body.i_crit_edge ], [ %24, %for.body10.i.while.body.i_crit_edge ]
  %28 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %functions.i, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool.not2.i.i = icmp eq ptr %31, null
  br i1 %tobool.not2.i.i, label %while.body.i.while.end.i.i_crit_edge, label %while.body.i.while.body.i.i_crit_edge

while.body.i.while.body.i.i_crit_edge:            ; preds = %while.body.i
  br label %while.body.i.i

while.body.i.while.end.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.body.i.i:                                   ; preds = %if.end.i.i.while.body.i.i_crit_edge, %while.body.i.while.body.i.i_crit_edge
  %32 = phi ptr [ %34, %if.end.i.i.while.body.i.i_crit_edge ], [ %31, %while.body.i.while.body.i.i_crit_edge ]
  %function.03.i.i = phi ptr [ %incdec.ptr.i.i, %if.end.i.i.while.body.i.i_crit_edge ], [ %29, %while.body.i.while.body.i.i_crit_edge ]
  %call.i.i = tail call i32 @strcmp(ptr noundef nonnull %32, ptr noundef nonnull %27) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %ngroups.i.i = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %function.03.i.i, i32 0, i32 2
  br label %berlin_pinctrl_add_function.exit.i

if.end.i.i:                                       ; preds = %while.body.i.i
  %incdec.ptr.i.i = getelementptr %struct.berlin_pinctrl_function, ptr %function.03.i.i, i32 1
  %33 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %incdec.ptr.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %34, null
  br i1 %tobool.not.i.i, label %if.end.i.i.while.end.i.i_crit_edge, label %if.end.i.i.while.body.i.i_crit_edge

if.end.i.i.while.body.i.i_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

if.end.i.i.while.end.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %if.end.i.i.while.end.i.i_crit_edge, %while.body.i.while.end.i.i_crit_edge
  %function.0.lcssa.i.i = phi ptr [ %29, %while.body.i.while.end.i.i_crit_edge ], [ %incdec.ptr.i.i, %if.end.i.i.while.end.i.i_crit_edge ]
  %35 = ptrtoint ptr %function.0.lcssa.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %27, ptr %function.0.lcssa.i.i, align 4
  %ngroups5.i.i = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %function.0.lcssa.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %ngroups5.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %ngroups5.i.i, align 4
  br label %berlin_pinctrl_add_function.exit.i

berlin_pinctrl_add_function.exit.i:               ; preds = %while.end.i.i, %if.then.i.i
  %nfunctions.sink6.i.i = phi ptr [ %nfunctions.i, %while.end.i.i ], [ %ngroups.i.i, %if.then.i.i ]
  %37 = ptrtoint ptr %nfunctions.sink6.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nfunctions.sink6.i.i, align 4
  %inc6.i.i = add i32 %38, 1
  store i32 %inc6.i.i, ptr %nfunctions.sink6.i.i, align 4
  %incdec.ptr.i = getelementptr %struct.berlin_desc_function, ptr %desc_function.0150.i, i32 1
  %39 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool15.not.i = icmp eq ptr %40, null
  br i1 %tobool15.not.i, label %berlin_pinctrl_add_function.exit.i.for.inc18.i_crit_edge, label %berlin_pinctrl_add_function.exit.i.while.body.i_crit_edge

berlin_pinctrl_add_function.exit.i.while.body.i_crit_edge: ; preds = %berlin_pinctrl_add_function.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

berlin_pinctrl_add_function.exit.i.for.inc18.i_crit_edge: ; preds = %berlin_pinctrl_add_function.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc18.i

for.inc18.i:                                      ; preds = %berlin_pinctrl_add_function.exit.i.for.inc18.i_crit_edge, %for.body10.i.for.inc18.i_crit_edge
  %inc19.i = add nuw i32 %i.1153.i, 1
  %41 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc5, align 4
  %ngroups7.i = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ngroups7.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %ngroups7.i, align 4
  %cmp8.i = icmp ult i32 %inc19.i, %44
  br i1 %cmp8.i, label %for.inc18.i.for.body10.i_crit_edge, label %for.inc18.i.for.end20.i_crit_edge

for.inc18.i.for.end20.i_crit_edge:                ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end20.i

for.inc18.i.for.body10.i_crit_edge:               ; preds = %for.inc18.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10.i

for.end20.i:                                      ; preds = %for.inc18.i.for.end20.i_crit_edge, %for.cond5.preheader.i.for.end20.i_crit_edge
  %45 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %functions.i, align 4
  %47 = ptrtoint ptr %nfunctions.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nfunctions.i, align 4
  %mul.i = mul i32 %48, 12
  %call23.i = tail call noalias ptr @krealloc(ptr noundef %46, i32 noundef %mul.i, i32 noundef 3264) #13
  %49 = ptrtoint ptr %functions.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call23.i, ptr %functions.i, align 4
  %50 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %desc5, align 4
  %ngroups27160.i = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ngroups27160.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ngroups27160.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp28161.not.i = icmp eq i32 %53, 0
  br i1 %cmp28161.not.i, label %for.end20.i.if.end9_crit_edge, label %for.end20.i.for.body30.i_crit_edge

for.end20.i.for.body30.i_crit_edge:               ; preds = %for.end20.i
  br label %for.body30.i

for.end20.i.if.end9_crit_edge:                    ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.body30.i:                                     ; preds = %for.inc80.i.for.body30.i_crit_edge, %for.end20.i.for.body30.i_crit_edge
  %54 = phi ptr [ %90, %for.inc80.i.for.body30.i_crit_edge ], [ %51, %for.end20.i.for.body30.i_crit_edge ]
  %i.2162.i = phi i32 [ %inc81.i, %for.inc80.i.for.body30.i_crit_edge ], [ 0, %for.end20.i.for.body30.i_crit_edge ]
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %add.ptr33.i = getelementptr %struct.berlin_desc_group, ptr %56, i32 %i.2162.i
  %functions34.i = getelementptr %struct.berlin_desc_group, ptr %56, i32 %i.2162.i, i32 4
  %57 = ptrtoint ptr %functions34.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %functions34.i, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %58, align 4
  %tobool37.not158.i = icmp eq ptr %60, null
  br i1 %tobool37.not158.i, label %for.body30.i.for.inc80.i_crit_edge, label %for.body30.i.while.body38.i_crit_edge

for.body30.i.while.body38.i_crit_edge:            ; preds = %for.body30.i
  br label %while.body38.i

for.body30.i.for.inc80.i_crit_edge:               ; preds = %for.body30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80.i

while.body38.i:                                   ; preds = %cleanup.i.while.body38.i_crit_edge, %for.body30.i.while.body38.i_crit_edge
  %61 = phi ptr [ %88, %cleanup.i.while.body38.i_crit_edge ], [ %60, %for.body30.i.while.body38.i_crit_edge ]
  %desc_function.1159.i = phi ptr [ %incdec.ptr76.i, %cleanup.i.while.body38.i_crit_edge ], [ %58, %for.body30.i.while.body38.i_crit_edge ]
  %62 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %functions.i, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %63, align 4
  %tobool43.not154.i = icmp eq ptr %65, null
  br i1 %tobool43.not154.i, label %while.body38.i.if.then54.critedge.i_crit_edge, label %while.body38.i.while.body44.i_crit_edge

while.body38.i.while.body44.i_crit_edge:          ; preds = %while.body38.i
  br label %while.body44.i

while.body38.i.if.then54.critedge.i_crit_edge:    ; preds = %while.body38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.critedge.i

while.body44.i:                                   ; preds = %if.end50.i.while.body44.i_crit_edge, %while.body38.i.while.body44.i_crit_edge
  %66 = phi ptr [ %68, %if.end50.i.while.body44.i_crit_edge ], [ %65, %while.body38.i.while.body44.i_crit_edge ]
  %function.0155.i = phi ptr [ %incdec.ptr51.i, %if.end50.i.while.body44.i_crit_edge ], [ %63, %while.body38.i.while.body44.i_crit_edge ]
  %call47.i = tail call i32 @strcmp(ptr noundef nonnull %61, ptr noundef nonnull %66) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end56.i, label %if.end50.i

if.end50.i:                                       ; preds = %while.body44.i
  %incdec.ptr51.i = getelementptr %struct.berlin_pinctrl_function, ptr %function.0155.i, i32 1
  %67 = ptrtoint ptr %incdec.ptr51.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %incdec.ptr51.i, align 4
  %tobool43.not.i = icmp eq ptr %68, null
  br i1 %tobool43.not.i, label %if.end50.i.if.then54.critedge.i_crit_edge, label %if.end50.i.while.body44.i_crit_edge

if.end50.i.while.body44.i_crit_edge:              ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body44.i

if.end50.i.if.then54.critedge.i_crit_edge:        ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then54.critedge.i

if.then54.critedge.i:                             ; preds = %if.end50.i.if.then54.critedge.i_crit_edge, %while.body38.i.if.then54.critedge.i_crit_edge
  tail call void @kfree(ptr noundef %63) #8
  br label %do.end

if.end56.i:                                       ; preds = %while.body44.i
  %groups57.i = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %function.0155.i, i32 0, i32 1
  %69 = ptrtoint ptr %groups57.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %groups57.i, align 4
  %tobool58.not.i = icmp eq ptr %70, null
  br i1 %tobool58.not.i, label %if.then59.i, label %if.end56.i.if.end68.i_crit_edge

if.end56.i.if.end68.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

if.then59.i:                                      ; preds = %if.end56.i
  %ngroups60.i = getelementptr inbounds %struct.berlin_pinctrl_function, ptr %function.0155.i, i32 0, i32 2
  %71 = ptrtoint ptr %ngroups60.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ngroups60.i, align 4
  %73 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %72, i32 4) #8
  %74 = extractvalue { i32, i1 } %73, 1
  br i1 %74, label %devm_kcalloc.exit.thread.i, label %devm_kcalloc.exit.i, !prof !50

devm_kcalloc.exit.thread.i:                       ; preds = %if.then59.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %groups57.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %groups57.i, align 4
  br label %if.then65.i

devm_kcalloc.exit.i:                              ; preds = %if.then59.i
  %76 = extractvalue { i32, i1 } %73, 0
  %call5.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %76, i32 noundef 3520) #8
  %77 = ptrtoint ptr %groups57.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call5.i.i.i, ptr %groups57.i, align 4
  %tobool64.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool64.not.i, label %devm_kcalloc.exit.i.if.then65.i_crit_edge, label %devm_kcalloc.exit.i.if.end68.i_crit_edge

devm_kcalloc.exit.i.if.end68.i_crit_edge:         ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i

devm_kcalloc.exit.i.if.then65.i_crit_edge:        ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then65.i

if.then65.i:                                      ; preds = %devm_kcalloc.exit.i.if.then65.i_crit_edge, %devm_kcalloc.exit.thread.i
  %78 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %functions.i, align 4
  tail call void @kfree(ptr noundef %79) #8
  br label %do.end

if.end68.i:                                       ; preds = %devm_kcalloc.exit.i.if.end68.i_crit_edge, %if.end56.i.if.end68.i_crit_edge
  %80 = ptrtoint ptr %groups57.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %groups57.i, align 4
  br label %while.cond70.i

while.cond70.i:                                   ; preds = %while.cond70.i.while.cond70.i_crit_edge, %if.end68.i
  %groups40.0.i = phi ptr [ %81, %if.end68.i ], [ %incdec.ptr73.i, %while.cond70.i.while.cond70.i_crit_edge ]
  %82 = ptrtoint ptr %groups40.0.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %groups40.0.i, align 4
  %tobool71.not.i = icmp eq ptr %83, null
  %incdec.ptr73.i = getelementptr ptr, ptr %groups40.0.i, i32 1
  br i1 %tobool71.not.i, label %cleanup.i, label %while.cond70.i.while.cond70.i_crit_edge

while.cond70.i.while.cond70.i_crit_edge:          ; preds = %while.cond70.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond70.i

cleanup.i:                                        ; preds = %while.cond70.i
  %84 = ptrtoint ptr %add.ptr33.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr33.i, align 4
  %86 = ptrtoint ptr %groups40.0.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %85, ptr %groups40.0.i, align 4
  %incdec.ptr76.i = getelementptr %struct.berlin_desc_function, ptr %desc_function.1159.i, i32 1
  %87 = ptrtoint ptr %incdec.ptr76.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %incdec.ptr76.i, align 4
  %tobool37.not.i = icmp eq ptr %88, null
  br i1 %tobool37.not.i, label %cleanup.i.for.inc80.i_crit_edge, label %cleanup.i.while.body38.i_crit_edge

cleanup.i.while.body38.i_crit_edge:               ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body38.i

cleanup.i.for.inc80.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc80.i

for.inc80.i:                                      ; preds = %cleanup.i.for.inc80.i_crit_edge, %for.body30.i.for.inc80.i_crit_edge
  %inc81.i = add nuw i32 %i.2162.i, 1
  %89 = ptrtoint ptr %desc5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %desc5, align 4
  %ngroups27.i = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %ngroups27.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ngroups27.i, align 4
  %cmp28.i = icmp ult i32 %inc81.i, %92
  br i1 %cmp28.i, label %for.inc80.i.for.body30.i_crit_edge, label %for.inc80.i.if.end9_crit_edge

for.inc80.i.if.end9_crit_edge:                    ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

for.inc80.i.for.body30.i_crit_edge:               ; preds = %for.inc80.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body30.i

do.end:                                           ; preds = %if.then65.i, %if.then54.critedge.i, %if.end7.i.i.i.do.end_crit_edge, %kcalloc.exit.thread.i
  %retval.3.i.ph = phi i32 [ -12, %if.then65.i ], [ -22, %if.then54.critedge.i ], [ -12, %kcalloc.exit.thread.i ], [ -12, %if.end7.i.i.i.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str, i32 noundef %retval.3.i.ph) #14
  br label %cleanup

if.end9:                                          ; preds = %for.inc80.i.if.end9_crit_edge, %for.end20.i.if.end9_crit_edge
  %call10 = tail call ptr @devm_pinctrl_register(ptr noundef %dev1, ptr noundef nonnull @berlin_pctrl_desc, ptr noundef nonnull %call.i) #8
  %pctrl_dev = getelementptr inbounds %struct.berlin_pinctrl, ptr %call.i, i32 0, i32 5
  %93 = ptrtoint ptr %pctrl_dev to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call10, ptr %pctrl_dev, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #14
  %94 = ptrtoint ptr %pctrl_dev to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %pctrl_dev, align 4
  %96 = ptrtoint ptr %95 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end16, %if.end9.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.3.i.ph, %do.end ], [ %96, %do.end16 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @berlin_pinctrl_probe(ptr noundef %pdev, ptr noundef %desc) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_get_parent(ptr noundef %1) #8
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #8
  tail call void @of_node_put(ptr noundef %call) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call5 = tail call i32 @berlin_pinctrl_probe_regmap(ptr noundef %pdev, ptr noundef %desc, ptr noundef %call2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pinctrl_get_group_count(ptr noundef %pctrl_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %desc = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %ngroups = getelementptr inbounds %struct.berlin_pinctrl_desc, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ngroups, align 4
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @berlin_pinctrl_get_group_name(ptr noundef %pctrl_dev, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %desc = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.berlin_desc_group, ptr %3, i32 %group
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pinctrl_dt_node_to_map(ptr noundef %pctrl_dev, ptr noundef %node, ptr noundef %map, ptr noundef %num_maps) #0 align 64 {
entry:
  %function_name = alloca ptr, align 4
  %reserved_maps = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %function_name) #8
  %0 = ptrtoint ptr %function_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %function_name, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reserved_maps) #8
  %1 = ptrtoint ptr %reserved_maps to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %reserved_maps, align 4
  %2 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %map, align 4
  %3 = ptrtoint ptr %num_maps to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %num_maps, align 4
  %call1 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef nonnull %function_name) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.10, ptr noundef %node) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 0, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end6, label %if.end8

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev7 = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev7, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, ptr noundef %node) #14
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @pinctrl_utils_reserve_map(ptr noundef %pctrl_dev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, i32 noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end16, label %do.end14

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev15 = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev15, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.17, i32 noundef %call9) #14
  br label %cleanup

if.end16:                                         ; preds = %if.end8
  %call17 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef null) #8
  %call18 = call ptr @of_prop_next_string(ptr noundef %call17, ptr noundef null) #8
  %tobool19.not58 = icmp eq ptr %call18, null
  br i1 %tobool19.not58, label %if.end16.cleanup_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %group_name.059 = phi ptr [ %call28, %for.inc.for.body_crit_edge ], [ %call18, %if.end16.for.body_crit_edge ]
  %10 = ptrtoint ptr %function_name to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %function_name, align 4
  %call20 = call i32 @pinctrl_utils_add_map_mux(ptr noundef %pctrl_dev, ptr noundef %map, ptr noundef nonnull %reserved_maps, ptr noundef %num_maps, ptr noundef nonnull %group_name.059, ptr noundef %11) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %for.inc, label %do.end25

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev26 = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 1
  %12 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev26, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.20, i32 noundef %call20) #14
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %call28 = call ptr @of_prop_next_string(ptr noundef %call17, ptr noundef nonnull %group_name.059) #8
  %tobool19.not = icmp eq ptr %call28, null
  br i1 %tobool19.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end25, %if.end16.cleanup_crit_edge, %do.end14, %do.end6, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end6 ], [ %call9, %do.end14 ], [ %call20, %do.end25 ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reserved_maps) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %function_name) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_utils_free_map(ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_dev_get_drvdata(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_reserve_map(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_utils_add_map_mux(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_get_functions_count(ptr noundef %pctrl_dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %nfunctions = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 4
  %0 = ptrtoint ptr %nfunctions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nfunctions, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @berlin_pinmux_get_function_name(ptr noundef %pctrl_dev, i32 noundef %function) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %functions = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %arrayidx = getelementptr %struct.berlin_pinctrl_function, ptr %1, i32 %function
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_get_function_groups(ptr noundef %pctrl_dev, i32 noundef %function, ptr nocapture noundef writeonly %groups, ptr nocapture noundef writeonly %num_groups) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %functions = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %functions, align 4
  %groups1 = getelementptr %struct.berlin_pinctrl_function, ptr %1, i32 %function, i32 1
  %2 = ptrtoint ptr %groups1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %groups1, align 4
  %4 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %groups, align 4
  %5 = load ptr, ptr %functions, align 4
  %ngroups = getelementptr %struct.berlin_pinctrl_function, ptr %5, i32 %function, i32 2
  %6 = ptrtoint ptr %ngroups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ngroups, align 4
  %8 = ptrtoint ptr %num_groups to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %num_groups, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @berlin_pinmux_set(ptr noundef %pctrl_dev, i32 noundef %function, i32 noundef %group) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @pinctrl_dev_get_drvdata(ptr noundef %pctrl_dev) #8
  %desc = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %functions = getelementptr inbounds %struct.berlin_pinctrl, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %functions to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %functions, align 4
  %add.ptr1 = getelementptr %struct.berlin_pinctrl_function, ptr %5, i32 %function
  %6 = ptrtoint ptr %add.ptr1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr1, align 4
  %functions.i = getelementptr %struct.berlin_desc_group, ptr %3, i32 %group, i32 4
  %8 = ptrtoint ptr %functions.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not1.i = icmp eq ptr %11, null
  br i1 %tobool.not1.i, label %entry.cleanup_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %12 = phi ptr [ %14, %if.end.i.while.body.i_crit_edge ], [ %11, %entry.while.body.i_crit_edge ]
  %function.02.i = phi ptr [ %incdec.ptr.i, %if.end.i.while.body.i_crit_edge ], [ %9, %entry.while.body.i_crit_edge ]
  %call.i = tail call i32 @strcmp(ptr noundef nonnull %12, ptr noundef %7) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %berlin_pinctrl_find_function_by_name.exit, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr %struct.berlin_desc_function, ptr %function.02.i, i32 1
  %13 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

berlin_pinctrl_find_function_by_name.exit:        ; preds = %while.body.i
  %tobool.not = icmp eq ptr %function.02.i, null
  br i1 %tobool.not, label %berlin_pinctrl_find_function_by_name.exit.cleanup_crit_edge, label %if.end

berlin_pinctrl_find_function_by_name.exit.cleanup_crit_edge: ; preds = %berlin_pinctrl_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %berlin_pinctrl_find_function_by_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %lsb = getelementptr %struct.berlin_desc_group, ptr %3, i32 %group, i32 3
  %15 = ptrtoint ptr %lsb to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %lsb, align 2
  %conv = zext i8 %16 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %bit_width = getelementptr %struct.berlin_desc_group, ptr %3, i32 %group, i32 2
  %17 = ptrtoint ptr %bit_width to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bit_width, align 1
  %conv5 = zext i8 %18 to i32
  %19 = add nuw nsw i32 %conv, %conv5
  %sub8 = sub nsw i32 32, %19
  %shr = lshr i32 -1, %sub8
  %and = and i32 %shr, %shl.neg
  %muxval = getelementptr inbounds %struct.berlin_desc_function, ptr %function.02.i, i32 0, i32 1
  %20 = ptrtoint ptr %muxval to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %muxval, align 4
  %conv10 = zext i8 %21 to i32
  %shl13 = shl i32 %conv10, %conv
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %offset = getelementptr %struct.berlin_desc_group, ptr %3, i32 %group, i32 1
  %24 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %offset, align 4
  %conv14 = zext i8 %25 to i32
  %call.i30 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef %conv14, i32 noundef %and, i32 noundef %shl13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %berlin_pinctrl_find_function_by_name.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %berlin_pinctrl_find_function_by_name.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39}
!llvm.module.flags = !{!41, !42, !43, !44, !45, !46, !47, !48}
!llvm.ident = !{!49}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 314, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @berlin_pinctrl_probe_regmap._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @berlin_pinctrl_probe_regmap._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 321, i32 3}
!10 = !{ptr @berlin_pinctrl_probe_regmap._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @berlin_pinctrl_probe_regmap._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 288, i32 11}
!14 = !{ptr @berlin_pctrl_desc, !15, !"berlin_pctrl_desc", i1 false, i1 false}
!15 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 287, i32 28}
!16 = !{ptr @berlin_pinctrl_ops, !17, !"berlin_pinctrl_ops", i1 false, i1 false}
!17 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 98, i32 33}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 64, i32 38}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 66, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @berlin_pinctrl_dt_node_to_map._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @berlin_pinctrl_dt_node_to_map._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 71, i32 44}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 73, i32 3}
!29 = !{ptr @berlin_pinctrl_dt_node_to_map._entry.13, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.15, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 81, i32 3}
!33 = !{ptr @berlin_pinctrl_dt_node_to_map._entry.16, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.18, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 90, i32 4}
!37 = !{ptr @berlin_pinctrl_dt_node_to_map._entry.19, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @berlin_pinctrl_dt_node_to_map._entry_ptr.21, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @berlin_pinmux_ops, !40, !"berlin_pinmux_ops", i1 false, i1 false}
!40 = !{!"../drivers/pinctrl/berlin/berlin.c", i32 173, i32 32}
!41 = !{i32 1, !"wchar_size", i32 2}
!42 = !{i32 1, !"min_enum_size", i32 4}
!43 = !{i32 8, !"branch-target-enforcement", i32 0}
!44 = !{i32 8, !"sign-return-address", i32 0}
!45 = !{i32 8, !"sign-return-address-all", i32 0}
!46 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!47 = !{i32 7, !"uwtable", i32 1}
!48 = !{i32 7, !"frame-pointer", i32 2}
!49 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!50 = !{!"branch_weights", i32 1, i32 2000}
!51 = !{!"auto-init"}
