; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-fixed-factor.c_pt.bc'
source_filename = "../drivers/clk/clk-fixed-factor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_fixed_factor_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_fixed_factor_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_fixed_factor_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_fixed_factor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_fixed_factor_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_fixed_factor_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_hw_register_fixed_factor\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_register_fixed_factor\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_register_fixed_factor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_register_fixed_factor\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_register_fixed_factor\09\09\09\09"
module asm "\09.long\09__crc_clk_register_fixed_factor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_unregister_fixed_factor\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_unregister_fixed_factor\09\09\09\09"
module asm "\09.long\09__crc_clk_unregister_fixed_factor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_unregister_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_hw_unregister_fixed_factor\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_hw_unregister_fixed_factor\09\09\09\09"
module asm "\09.long\09__crc_clk_hw_unregister_fixed_factor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_hw_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_hw_unregister_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_clk_hw_unregister_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_clk_hw_register_fixed_factor\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_clk_hw_register_fixed_factor\09\09\09\09"
module asm "\09.long\09__crc_devm_clk_hw_register_fixed_factor\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_hw_register_fixed_factor\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_hw_register_fixed_factor:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@clk_fixed_factor_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_factor_recalc_rate, ptr @clk_factor_round_rate, ptr null, ptr null, ptr null, ptr @clk_factor_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_fixed_factor_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_fixed_factor_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_fixed_factor_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_fixed_factor_ops to i32), ptr @__kstrtab_clk_fixed_factor_ops, ptr @__kstrtabns_clk_fixed_factor_ops }, section "___ksymtab_gpl+clk_fixed_factor_ops", align 4
@__kstrtab_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_register_fixed_factor to i32), ptr @__kstrtab_clk_hw_register_fixed_factor, ptr @__kstrtabns_clk_hw_register_fixed_factor }, section "___ksymtab_gpl+clk_hw_register_fixed_factor", align 4
@__kstrtab_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_register_fixed_factor to i32), ptr @__kstrtab_clk_register_fixed_factor, ptr @__kstrtabns_clk_register_fixed_factor }, section "___ksymtab_gpl+clk_register_fixed_factor", align 4
@__kstrtab_clk_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_unregister_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_unregister_fixed_factor to i32), ptr @__kstrtab_clk_unregister_fixed_factor, ptr @__kstrtabns_clk_unregister_fixed_factor }, section "___ksymtab_gpl+clk_unregister_fixed_factor", align 4
@__kstrtab_clk_hw_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_hw_unregister_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_hw_unregister_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_hw_unregister_fixed_factor to i32), ptr @__kstrtab_clk_hw_unregister_fixed_factor, ptr @__kstrtabns_clk_hw_unregister_fixed_factor }, section "___ksymtab_gpl+clk_hw_unregister_fixed_factor", align 4
@__kstrtab_devm_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_hw_register_fixed_factor = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_hw_register_fixed_factor = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_hw_register_fixed_factor to i32), ptr @__kstrtab_devm_clk_hw_register_fixed_factor, ptr @__kstrtabns_devm_clk_hw_register_fixed_factor }, section "___ksymtab_gpl+devm_clk_hw_register_fixed_factor", align 4
@__of_table_fixed_factor_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_fixed_factor_clk_setup }, section "__clk_of_table", align 4
@__initcall__kmod_clk_fixed_factor__183_293_of_fixed_factor_clk_driver_init6 = internal global ptr @of_fixed_factor_clk_driver_init, section ".initcall6.init", align 4
@.str = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"devm_clk_hw_register_fixed_factor_release\00", [54 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clock-div\00", [22 x i8] zeroinitializer }, align 32
@_of_fixed_factor_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 206, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-div property\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"_of_fixed_factor_clk_setup\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clk/clk-fixed-factor.c\00", [33 x i8] zeroinitializer }, align 32
@_of_fixed_factor_clk_setup._entry_ptr = internal global ptr @_of_fixed_factor_clk_setup._entry, section ".printk_index", align 4
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clock-mult\00", [21 x i8] zeroinitializer }, align 32
@_of_fixed_factor_clk_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-mult property\0A\00", [63 x i8] zeroinitializer }, align 32
@_of_fixed_factor_clk_setup._entry_ptr.8 = internal global ptr @_of_fixed_factor_clk_setup._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@set_rate_parent_matches = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll3-2x-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@of_fixed_factor_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @of_fixed_factor_clk_probe, ptr @of_fixed_factor_clk_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_fixed_factor_clk_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"of_fixed_factor_clk\00", [44 x i8] zeroinitializer }, align 32
@of_fixed_factor_clk_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"clk_fixed_factor_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 60, i32 22 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 96, i32 9 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 204, i32 33 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 205, i32 3 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 210, i32 33 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 211, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 216, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"set_rate_parent_matches\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 191, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"of_fixed_factor_clk_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 285, i32 31 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 287, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"of_fixed_factor_clk_ids\00", align 1
@___asan_gen_.54 = private constant [34 x i8] c"../drivers/clk/clk-fixed-factor.c\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 279, i32 34 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__initcall__kmod_clk_fixed_factor__183_293_of_fixed_factor_clk_driver_init6, ptr @__ksymtab_clk_fixed_factor_ops, ptr @__ksymtab_clk_hw_register_fixed_factor, ptr @__ksymtab_clk_hw_unregister_fixed_factor, ptr @__ksymtab_clk_register_fixed_factor, ptr @__ksymtab_clk_unregister_fixed_factor, ptr @__ksymtab_devm_clk_hw_register_fixed_factor, ptr @__of_table_fixed_factor_clk, ptr @_of_fixed_factor_clk_setup._entry, ptr @_of_fixed_factor_clk_setup._entry.6, ptr @_of_fixed_factor_clk_setup._entry_ptr, ptr @_of_fixed_factor_clk_setup._entry_ptr.8, ptr @clk_fixed_factor_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @set_rate_parent_matches, ptr @of_fixed_factor_clk_driver, ptr @.str.10, ptr @of_fixed_factor_clk_ids], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_fixed_factor_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_fixed_factor_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_of_fixed_factor_clk_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_rate_parent_matches to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fixed_factor_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_fixed_factor_clk_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %parent_rate to i64
  %mult = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mult, align 4
  %conv1 = zext i32 %1 to i64
  %mul = mul nuw i64 %conv1, %conv
  %div = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div, align 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul)
  %cmp170 = icmp ult i64 %mul, 4294967296
  br i1 %cmp170, label %if.then174, label %if.else180, !prof !53

if.then174:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %conv175 = trunc i64 %mul to i32
  %div178 = udiv i32 %conv175, %3
  br label %if.end184

if.else180:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %3, i64 %mul) #11, !srcloc !54
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t292 = trunc i64 %asmresult1.i to i32
  br label %if.end184

if.end184:                                        ; preds = %if.else180, %if.then174
  %rate.0.off0 = phi i32 [ %div178, %if.then174 ], [ %extract.t292, %if.else180 ]
  ret i32 %rate.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_factor_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_flags(ptr noundef %hw) #8
  %and = and i32 %call, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mult = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mult, align 4
  %div = udiv i32 %rate, %1
  %div1 = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %div1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %div1, align 4
  %mul = mul i32 %3, %div
  %call2 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #8
  %call3 = tail call i32 @clk_hw_round_rate(ptr noundef %call2, i32 noundef %mul) #8
  %4 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %prate, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prate, align 4
  %div4 = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 2
  %7 = ptrtoint ptr %div4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %div4, align 4
  %div5 = udiv i32 %6, %8
  %mult6 = getelementptr inbounds %struct.clk_fixed_factor, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %mult6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mult6, align 4
  %mul7 = mul i32 %10, %div5
  ret i32 %mul7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @clk_factor_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, i32 noundef %mult, i32 noundef %div) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef -1, i32 noundef %flags, i32 noundef %mult, i32 noundef %div, i1 noundef zeroext false)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef %np, ptr noundef %name, ptr noundef %parent_name, i32 noundef %index, i32 noundef %flags, i32 noundef %mult, i32 noundef %div, i1 noundef zeroext %devm) unnamed_addr #1 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %pdata = alloca %struct.clk_parent_data, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #8
  %1 = getelementptr inbounds i8, ptr %init, i32 8
  %2 = call ptr @memset(ptr %1, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata) #8
  %3 = getelementptr inbounds %struct.clk_parent_data, ptr %pdata, i32 0, i32 1
  %4 = getelementptr inbounds %struct.clk_parent_data, ptr %pdata, i32 0, i32 2
  %5 = getelementptr inbounds %struct.clk_parent_data, ptr %pdata, i32 0, i32 3
  %6 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %pdata, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %3, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %4, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %index, ptr %5, align 4
  %tobool4.not = icmp eq ptr %dev, null
  %or.cond = and i1 %tobool4.not, %devm
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %devm, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_hw_register_fixed_factor_release, i32 noundef 20, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #8
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3264, i32 noundef 20) #12
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  %fix.0 = phi ptr [ %call7, %if.then6 ], [ %call7.i, %if.else ]
  %tobool10.not = icmp eq ptr %fix.0, null
  br i1 %tobool10.not, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %mult14 = getelementptr inbounds %struct.clk_fixed_factor, ptr %fix.0, i32 0, i32 1
  %11 = ptrtoint ptr %mult14 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %mult, ptr %mult14, align 4
  %div15 = getelementptr inbounds %struct.clk_fixed_factor, ptr %fix.0, i32 0, i32 2
  %12 = ptrtoint ptr %div15 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div, ptr %div15, align 4
  %init17 = getelementptr inbounds %struct.clk_hw, ptr %fix.0, i32 0, i32 2
  %13 = ptrtoint ptr %init17 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init17, align 4
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clk_fixed_factor_ops, ptr %ops, align 4
  %flags19 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %16 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %flags, ptr %flags19, align 4
  %17 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent_name.addr, align 4
  %tobool20.not = icmp eq ptr %18, null
  br i1 %tobool20.not, label %if.else22, label %if.then21

if.then21:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %19 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  br label %if.end23

if.else22:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 3
  %20 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pdata, ptr %parent_data, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else22, %if.then21
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %21 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %num_parents, align 4
  br i1 %tobool4.not, label %if.else28, label %if.then26

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 @clk_hw_register(ptr noundef nonnull %dev, ptr noundef nonnull %fix.0) #8
  br label %if.end30

if.else28:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = call i32 @of_clk_hw_register(ptr noundef %np, ptr noundef nonnull %fix.0) #8
  br label %if.end30

if.end30:                                         ; preds = %if.else28, %if.then26
  %ret.0 = phi i32 [ %call27, %if.then26 ], [ %call29, %if.else28 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool31.not = icmp eq i32 %ret.0, 0
  br i1 %tobool31.not, label %if.else38, label %if.then32

if.then32:                                        ; preds = %if.end30
  br i1 %devm, label %if.then34, label %if.else35

if.then34:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call void @devres_free(ptr noundef nonnull %fix.0) #8
  br label %if.end36

if.else35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %fix.0) #8
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  %22 = inttoptr i32 %ret.0 to ptr
  br label %cleanup

if.else38:                                        ; preds = %if.end30
  br i1 %devm, label %if.then40, label %if.else38.cleanup_crit_edge

if.else38.cleanup_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then40:                                        ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #10
  call void @devres_add(ptr noundef %dev, ptr noundef nonnull %fix.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then40, %if.else38.cleanup_crit_edge, %if.end36, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %22, %if.end36 ], [ %fix.0, %if.then40 ], [ %fix.0, %if.else38.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #8
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @clk_register_fixed_factor(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, i32 noundef %mult, i32 noundef %div) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef -1, i32 noundef %flags, i32 noundef %mult, i32 noundef %div, i1 noundef zeroext false) #8
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %1, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_unregister_fixed_factor(ptr noundef %clk) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__clk_get_hw(ptr noundef %clk) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unregister(ptr noundef %clk) #8
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @clk_hw_unregister_fixed_factor(ptr noundef %hw) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %hw) #8
  tail call void @kfree(ptr noundef %hw) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef %name, ptr noundef %parent_name, i32 noundef %flags, i32 noundef %mult, i32 noundef %div) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @__clk_hw_register_fixed_factor(ptr noundef %dev, ptr noundef null, ptr noundef %name, ptr noundef %parent_name, i32 noundef -1, i32 noundef %flags, i32 noundef %mult, i32 noundef %div, i1 noundef zeroext true)
  ret ptr %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @of_fixed_factor_clk_setup(ptr noundef %node) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %node)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %node) unnamed_addr #1 align 64 {
entry:
  %parent_name.addr.i = alloca ptr, align 4
  %init.i = alloca %struct.clk_init_data, align 4
  %pdata.i = alloca %struct.clk_parent_data, align 4
  %clk_name = alloca ptr, align 4
  %div = alloca i32, align 4
  %mult = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #8
  %3 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %div, align 4, !annotation !55
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mult) #8
  %4 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %mult, align 4, !annotation !55
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef nonnull %div, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef %node) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i48 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef nonnull %mult, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i48)
  %tobool4.not = icmp sgt i32 %call.i.i48, -1
  br i1 %tobool4.not, label %if.end12, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.3, ptr noundef %node) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef nonnull %clk_name) #8
  %call14 = call ptr @of_match_node(ptr noundef nonnull @set_rate_parent_matches, ptr noundef %node) #8
  %5 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_name, align 4
  %7 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mult, align 4
  %9 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %div, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %11 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent_name.addr.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #8
  %12 = getelementptr inbounds i8, ptr %init.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %pdata.i) #8
  %14 = call ptr @memset(ptr %pdata.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 20) #12
  %tobool10.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool10.not.i, label %__clk_hw_register_fixed_factor.exit.thread, label %if.end13.i

__clk_hw_register_fixed_factor.exit.thread:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  br label %if.then20

if.end13.i:                                       ; preds = %if.end12
  %tobool15.not = icmp eq ptr %call14, null
  %spec.select = select i1 %tobool15.not, i32 0, i32 4
  %mult14.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %mult14.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %8, ptr %mult14.i, align 4
  %div15.i = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %div15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %div15.i, align 8
  %init17.i = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %init17.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %init.i, ptr %init17.i, align 8
  %19 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %6, ptr %init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %20 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @clk_fixed_factor_ops, ptr %ops.i, align 4
  %flags19.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %21 = ptrtoint ptr %flags19.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %flags19.i, align 4
  %22 = ptrtoint ptr %parent_name.addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %parent_name.addr.i, align 4
  %tobool20.not.i = icmp eq ptr %23, null
  br i1 %tobool20.not.i, label %if.else22.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %parent_name.addr.i, ptr %12, align 4
  br label %if.end23.i

if.else22.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %25 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %pdata.i, ptr %parent_data.i, align 4
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.else22.i, %if.then21.i
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %26 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %num_parents.i, align 4
  %call29.i = call i32 @of_clk_hw_register(ptr noundef %node, ptr noundef nonnull %call7.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool31.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool31.not.i, label %if.end23.i.__clk_hw_register_fixed_factor.exit_crit_edge, label %if.then32.i

if.end23.i.__clk_hw_register_fixed_factor.exit_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__clk_hw_register_fixed_factor.exit

if.then32.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  %27 = inttoptr i32 %call29.i to ptr
  br label %__clk_hw_register_fixed_factor.exit

__clk_hw_register_fixed_factor.exit:              ; preds = %if.then32.i, %if.end23.i.__clk_hw_register_fixed_factor.exit_crit_edge
  %retval.0.i = phi ptr [ %27, %if.then32.i ], [ %call7.i.i, %if.end23.i.__clk_hw_register_fixed_factor.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %pdata.i) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.addr.i)
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %__clk_hw_register_fixed_factor.exit.if.then20_crit_edge, label %if.end22

__clk_hw_register_fixed_factor.exit.if.then20_crit_edge: ; preds = %__clk_hw_register_fixed_factor.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then20

if.then20:                                        ; preds = %__clk_hw_register_fixed_factor.exit.if.then20_crit_edge, %__clk_hw_register_fixed_factor.exit.thread
  %retval.0.i51 = phi ptr [ inttoptr (i32 -12 to ptr), %__clk_hw_register_fixed_factor.exit.thread ], [ %retval.0.i, %__clk_hw_register_fixed_factor.exit.if.then20_crit_edge ]
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 10
  call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #8
  br label %cleanup

if.end22:                                         ; preds = %__clk_hw_register_fixed_factor.exit
  %call23 = call i32 @of_clk_add_hw_provider(ptr noundef %node, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %retval.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %if.then25

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  call void @clk_hw_unregister(ptr noundef %retval.0.i) #8
  call void @kfree(ptr noundef %retval.0.i) #8
  %28 = inttoptr i32 %call23 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end22.cleanup_crit_edge, %if.then20, %do.end8, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -5 to ptr), %do.end ], [ inttoptr (i32 -5 to ptr), %do.end8 ], [ %retval.0.i51, %if.then20 ], [ %28, %if.then25 ], [ %retval.0.i, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mult) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_driver_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @of_fixed_factor_clk_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @devm_clk_hw_register_fixed_factor_release(ptr nocapture noundef readnone %dev, ptr noundef %res) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_hw_unregister(ptr noundef %res) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_probe(ptr nocapture noundef %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call fastcc ptr @_of_fixed_factor_clk_setup(ptr noundef %1)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @of_fixed_factor_clk_remove(ptr nocapture noundef readonly %pdev) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #8
  tail call void @clk_hw_unregister(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { argmemonly nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @clk_fixed_factor_ops, !1, !"clk_fixed_factor_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-fixed-factor.c", i32 60, i32 22}
!2 = !{ptr @__ksymtab_clk_fixed_factor_ops, !3, !"__ksymtab_clk_fixed_factor_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/clk-fixed-factor.c", i32 65, i32 1}
!4 = !{ptr @__ksymtab_clk_hw_register_fixed_factor, !5, !"__ksymtab_clk_hw_register_fixed_factor", i1 false, i1 false}
!5 = !{!"../drivers/clk/clk-fixed-factor.c", i32 141, i32 1}
!6 = !{ptr @__ksymtab_clk_register_fixed_factor, !7, !"__ksymtab_clk_register_fixed_factor", i1 false, i1 false}
!7 = !{!"../drivers/clk/clk-fixed-factor.c", i32 155, i32 1}
!8 = !{ptr @__ksymtab_clk_unregister_fixed_factor, !9, !"__ksymtab_clk_unregister_fixed_factor", i1 false, i1 false}
!9 = !{!"../drivers/clk/clk-fixed-factor.c", i32 168, i32 1}
!10 = !{ptr @__ksymtab_clk_hw_unregister_fixed_factor, !11, !"__ksymtab_clk_hw_unregister_fixed_factor", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-fixed-factor.c", i32 179, i32 1}
!12 = !{ptr @__ksymtab_devm_clk_hw_register_fixed_factor, !13, !"__ksymtab_devm_clk_hw_register_fixed_factor", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-fixed-factor.c", i32 188, i32 1}
!14 = !{ptr @__of_table_fixed_factor_clk, !15, !"__of_table_fixed_factor_clk", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-fixed-factor.c", i32 249, i32 1}
!16 = !{ptr @__initcall__kmod_clk_fixed_factor__183_293_of_fixed_factor_clk_driver_init6, !17, !"__initcall__kmod_clk_fixed_factor__183_293_of_fixed_factor_clk_driver_init6", i1 false, i1 false}
!17 = !{!"../drivers/clk/clk-fixed-factor.c", i32 293, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/clk-fixed-factor.c", i32 96, i32 9}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-fixed-factor.c", i32 204, i32 33}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-fixed-factor.c", i32 205, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @_of_fixed_factor_clk_setup._entry, !23, !"_entry", i1 false, i1 false}
!27 = !{ptr @_of_fixed_factor_clk_setup._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-fixed-factor.c", i32 210, i32 33}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-fixed-factor.c", i32 211, i32 3}
!32 = !{ptr @_of_fixed_factor_clk_setup._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @_of_fixed_factor_clk_setup._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-fixed-factor.c", i32 216, i32 32}
!36 = !{ptr @set_rate_parent_matches, !37, !"set_rate_parent_matches", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-fixed-factor.c", i32 191, i32 34}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/clk-fixed-factor.c", i32 287, i32 11}
!40 = !{ptr @of_fixed_factor_clk_driver, !41, !"of_fixed_factor_clk_driver", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-fixed-factor.c", i32 285, i32 31}
!42 = !{ptr @of_fixed_factor_clk_ids, !43, !"of_fixed_factor_clk_ids", i1 false, i1 false}
!43 = !{!"../drivers/clk/clk-fixed-factor.c", i32 279, i32 34}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148191973, i64 2148192253, i64 2148192587, i64 2148192921}
!55 = !{!"auto-init"}
