; ModuleID = '/llk/IR_all_yes/drivers/clk/baikal-t1/clk-ccu-pll.c_pt.bc'
source_filename = "../drivers/clk/baikal-t1/clk-ccu-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ccu_pll_init_data = type { i32, ptr, ptr, i32, ptr, ptr, i32 }
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
%struct.ccu_pll_data = type { ptr, ptr, [5 x ptr] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.ccu_pll = type { %struct.clk_hw, i32, i32, i32, ptr, %struct.spinlock }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }

@__of_table_ccu_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"baikal,bt1-ccu-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ccu_pll_init }, section "__clk_of_table", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ccu_pll_find_sys_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013bt1-ccu-pll: Failed to find syscon regs for '%s'\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccu_pll_find_sys_regs\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/baikal-t1/clk-ccu-pll.c\00", [60 x i8] zeroinitializer }, align 32
@ccu_pll_find_sys_regs._entry_ptr = internal global ptr @ccu_pll_find_sys_regs._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@ccu_pll_clk_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013bt1-ccu-pll: Couldn't register PLL hw '%s'\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccu_pll_clk_register\00", [43 x i8] zeroinitializer }, align 32
@ccu_pll_clk_register._entry_ptr = internal global ptr @ccu_pll_clk_register._entry, section ".printk_index", align 4
@ccu_pll_clk_register._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013bt1-ccu-pll: Couldn't register PLL provider of '%s'\0A\00", [41 x i8] zeroinitializer }, align 32
@ccu_pll_clk_register._entry_ptr.8 = internal global ptr @ccu_pll_clk_register._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpu_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_clk\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ddr_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pcie_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_pll\00", [24 x i8] zeroinitializer }, align 32
@ccu_pll_of_clk_hw_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 136, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016bt1-ccu-pll: Invalid PLL clock ID %d specified\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ccu_pll_of_clk_hw_get\00", [42 x i8] zeroinitializer }, align 32
@ccu_pll_of_clk_hw_get._entry_ptr = internal global ptr @ccu_pll_of_clk_hw_get._entry, section ".printk_index", align 4
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 118, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 261, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 162, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 170, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 63, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 65, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 67, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 69, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 71, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [39 x i8] c"../drivers/clk/baikal-t1/clk-ccu-pll.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 136, i32 3 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_ccu_pll, ptr @ccu_pll_clk_register._entry, ptr @ccu_pll_clk_register._entry.6, ptr @ccu_pll_clk_register._entry_ptr, ptr @ccu_pll_clk_register._entry_ptr.8, ptr @ccu_pll_find_sys_regs._entry, ptr @ccu_pll_find_sys_regs._entry_ptr, ptr @ccu_pll_of_clk_hw_get._entry, ptr @ccu_pll_of_clk_hw_get._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_find_sys_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_clk_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_clk_register._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_pll_of_clk_hw_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ccu_pll_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %init.i = alloca %struct.ccu_pll_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #9
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %ccu_pll_create_data.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ccu_pll_create_data.exit:                         ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %np, ptr %call7.i.i.i, align 8
  %cmp.i = icmp ugt ptr %call7.i.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ccu_pll_create_data.exit.cleanup_crit_edge, label %if.end

ccu_pll_create_data.exit.cleanup_crit_edge:       ; preds = %ccu_pll_create_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %ccu_pll_create_data.exit
  %2 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call7.i.i.i, align 8
  %parent.i = getelementptr inbounds %struct.device_node, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 4
  %call.i = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #6
  %sys_regs.i = getelementptr inbounds %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %sys_regs.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %do.end.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

do.end.i:                                         ; preds = %if.end
  %7 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %do.end.i.ccu_pll_find_sys_regs.exit_crit_edge, label %cond.true.i.i

do.end.i.ccu_pll_find_sys_regs.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_sys_regs.exit

cond.true.i.i:                                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i = getelementptr inbounds %struct.device_node, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %full_name.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %full_name.i.i, align 4
  br label %ccu_pll_find_sys_regs.exit

ccu_pll_find_sys_regs.exit:                       ; preds = %cond.true.i.i, %do.end.i.ccu_pll_find_sys_regs.exit_crit_edge
  %cond.i.i = phi ptr [ %10, %cond.true.i.i ], [ @.str.3, %do.end.i.ccu_pll_find_sys_regs.exit_crit_edge ]
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %cond.i.i) #10
  %11 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sys_regs.i, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %ccu_pll_find_sys_regs.exit.if.end4_crit_edge, label %ccu_pll_find_sys_regs.exit.err_free_data_crit_edge

ccu_pll_find_sys_regs.exit.err_free_data_crit_edge: ; preds = %ccu_pll_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

ccu_pll_find_sys_regs.exit.if.end4_crit_edge:     ; preds = %ccu_pll_find_sys_regs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %ccu_pll_find_sys_regs.exit.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %name2.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 1
  %parent_name3.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 2
  %base4.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 3
  %sys_regs5.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 4
  %np6.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 5
  %flags7.i = getelementptr inbounds %struct.ccu_pll_init_data, ptr %init.i, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %13 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %init.i, align 4
  %14 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.9, ptr %name2.i, align 4
  %15 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.10, ptr %parent_name3.i, align 4
  %16 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %base4.i, align 4
  %17 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sys_regs.i, align 4
  %19 = ptrtoint ptr %sys_regs5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %sys_regs5.i, align 4
  %20 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call7.i.i.i, align 8
  %22 = ptrtoint ptr %np6.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %np6.i, align 4
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2048, ptr %flags7.i, align 4
  %call.i16 = call ptr @ccu_pll_hw_register(ptr noundef nonnull %init.i) #6
  %arrayidx8.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 0
  %24 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i16, ptr %arrayidx8.i, align 8
  %cmp.i.i17 = icmp ugt ptr %call.i16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i17, label %ccu_pll_clk_register.exit.thread, label %for.inc.i

for.inc.i:                                        ; preds = %if.end4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %25 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %init.i, align 4
  %26 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @.str.11, ptr %name2.i, align 4
  %27 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @.str.10, ptr %parent_name3.i, align 4
  %28 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %base4.i, align 4
  %29 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sys_regs.i, align 4
  %31 = ptrtoint ptr %sys_regs5.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %sys_regs5.i, align 4
  %32 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %call7.i.i.i, align 8
  %34 = ptrtoint ptr %np6.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %np6.i, align 4
  %35 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2049, ptr %flags7.i, align 4
  %call.1.i = call ptr @ccu_pll_hw_register(ptr noundef nonnull %init.i) #6
  %arrayidx8.1.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %arrayidx8.1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.1.i, ptr %arrayidx8.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.err_hw_unregister.thread77.i_crit_edge, label %for.inc.1.i

for.inc.i.err_hw_unregister.thread77.i_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_unregister.thread77.i

for.inc.1.i:                                      ; preds = %for.inc.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %37 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %init.i, align 4
  %38 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @.str.12, ptr %name2.i, align 4
  %39 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @.str.10, ptr %parent_name3.i, align 4
  %40 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 16, ptr %base4.i, align 4
  %41 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sys_regs.i, align 4
  %43 = ptrtoint ptr %sys_regs5.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %sys_regs5.i, align 4
  %44 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call7.i.i.i, align 8
  %46 = ptrtoint ptr %np6.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %np6.i, align 4
  %47 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2049, ptr %flags7.i, align 4
  %call.2.i = call ptr @ccu_pll_hw_register(ptr noundef nonnull %init.i) #6
  %arrayidx8.2.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %arrayidx8.2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call.2.i, ptr %arrayidx8.2.i, align 8
  %cmp.i.2.i = icmp ugt ptr %call.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.err_hw_unregister.thread77.i_crit_edge, label %for.inc.2.i

for.inc.1.i.err_hw_unregister.thread77.i_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_unregister.thread77.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %49 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 3, ptr %init.i, align 4
  %50 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @.str.13, ptr %name2.i, align 4
  %51 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @.str.10, ptr %parent_name3.i, align 4
  %52 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 24, ptr %base4.i, align 4
  %53 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sys_regs.i, align 4
  %55 = ptrtoint ptr %sys_regs5.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %sys_regs5.i, align 4
  %56 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %call7.i.i.i, align 8
  %58 = ptrtoint ptr %np6.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %57, ptr %np6.i, align 4
  %59 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2048, ptr %flags7.i, align 4
  %call.3.i = call ptr @ccu_pll_hw_register(ptr noundef nonnull %init.i) #6
  %arrayidx8.3.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %60 = ptrtoint ptr %arrayidx8.3.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.3.i, ptr %arrayidx8.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %call.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.err_hw_unregister.thread77.i_crit_edge, label %for.inc.3.i

for.inc.2.i.err_hw_unregister.thread77.i_crit_edge: ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_unregister.thread77.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %61 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 4, ptr %init.i, align 4
  %62 = ptrtoint ptr %name2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @.str.14, ptr %name2.i, align 4
  %63 = ptrtoint ptr %parent_name3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @.str.10, ptr %parent_name3.i, align 4
  %64 = ptrtoint ptr %base4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 32, ptr %base4.i, align 4
  %65 = ptrtoint ptr %sys_regs.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %sys_regs.i, align 4
  %67 = ptrtoint ptr %sys_regs5.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %66, ptr %sys_regs5.i, align 4
  %68 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %call7.i.i.i, align 8
  %70 = ptrtoint ptr %np6.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %69, ptr %np6.i, align 4
  %71 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2049, ptr %flags7.i, align 4
  %call.4.i = call ptr @ccu_pll_hw_register(ptr noundef nonnull %init.i) #6
  %arrayidx8.4.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 4
  %72 = ptrtoint ptr %arrayidx8.4.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.4.i, ptr %arrayidx8.4.i, align 8
  %cmp.i.4.i = icmp ugt ptr %call.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.inc.3.i.err_hw_unregister.thread77.i_crit_edge, label %for.inc.4.i

for.inc.3.i.err_hw_unregister.thread77.i_crit_edge: ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_unregister.thread77.i

for.inc.4.i:                                      ; preds = %for.inc.3.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %73 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %call7.i.i.i, align 8
  %call19.i = call i32 @of_clk_add_hw_provider(ptr noundef %74, ptr noundef nonnull @ccu_pll_of_clk_hw_get, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool.not.i18 = icmp eq i32 %call19.i, 0
  br i1 %tobool.not.i18, label %for.inc.4.i.cleanup_crit_edge, label %do.end23.i

for.inc.4.i.cleanup_crit_edge:                    ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end23.i:                                       ; preds = %for.inc.4.i
  %75 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %call7.i.i.i, align 8
  %tobool.not.i.i19 = icmp eq ptr %76, null
  br i1 %tobool.not.i.i19, label %do.end23.i.err_hw_unregister.thread.i_crit_edge, label %cond.true.i.i21

do.end23.i.err_hw_unregister.thread.i_crit_edge:  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_hw_unregister.thread.i

cond.true.i.i21:                                  ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i.i20 = getelementptr inbounds %struct.device_node, ptr %76, i32 0, i32 2
  %77 = ptrtoint ptr %full_name.i.i20 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %full_name.i.i20, align 4
  br label %err_hw_unregister.thread.i

err_hw_unregister.thread.i:                       ; preds = %cond.true.i.i21, %do.end23.i.err_hw_unregister.thread.i_crit_edge
  %cond.i.i22 = phi ptr [ %78, %cond.true.i.i21 ], [ @.str.3, %do.end23.i.err_hw_unregister.thread.i_crit_edge ]
  %call27.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %cond.i.i22) #10
  br label %for.body31.preheader.i

err_hw_unregister.thread77.i:                     ; preds = %for.inc.3.i.err_hw_unregister.thread77.i_crit_edge, %for.inc.2.i.err_hw_unregister.thread77.i_crit_edge, %for.inc.1.i.err_hw_unregister.thread77.i_crit_edge, %for.inc.i.err_hw_unregister.thread77.i_crit_edge
  %idx.066.lcssa.ph.i = phi i32 [ 4, %for.inc.3.i.err_hw_unregister.thread77.i_crit_edge ], [ 3, %for.inc.2.i.err_hw_unregister.thread77.i_crit_edge ], [ 2, %for.inc.1.i.err_hw_unregister.thread77.i_crit_edge ], [ 1, %for.inc.i.err_hw_unregister.thread77.i_crit_edge ]
  %call.lcssa.ph.i = phi ptr [ %call.4.i, %for.inc.3.i.err_hw_unregister.thread77.i_crit_edge ], [ %call.3.i, %for.inc.2.i.err_hw_unregister.thread77.i_crit_edge ], [ %call.2.i, %for.inc.1.i.err_hw_unregister.thread77.i_crit_edge ], [ %call.1.i, %for.inc.i.err_hw_unregister.thread77.i_crit_edge ]
  %79 = ptrtoint ptr %call.lcssa.ph.i to i32
  %80 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %name2.i, align 4
  %call1680.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %81) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %for.body31.preheader.i

ccu_pll_clk_register.exit.thread:                 ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %82 = ptrtoint ptr %name2.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %name2.i, align 4
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %83) #10
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  br label %err_free_data

for.body31.preheader.i:                           ; preds = %err_hw_unregister.thread77.i, %err_hw_unregister.thread.i
  %ret.276.i = phi i32 [ 1, %err_hw_unregister.thread.i ], [ %79, %err_hw_unregister.thread77.i ]
  %idx.06575.i = phi i32 [ 5, %err_hw_unregister.thread.i ], [ %idx.066.lcssa.ph.i, %err_hw_unregister.thread77.i ]
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.body31.i.for.body31.i_crit_edge, %for.body31.preheader.i
  %idx.169.in.i = phi i32 [ %idx.169.i, %for.body31.i.for.body31.i_crit_edge ], [ %idx.06575.i, %for.body31.preheader.i ]
  %idx.169.i = add nsw i32 %idx.169.in.i, -1
  %arrayidx33.i = getelementptr %struct.ccu_pll_data, ptr %call7.i.i.i, i32 0, i32 2, i32 %idx.169.i
  %84 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx33.i, align 4
  call void @ccu_pll_hw_unregister(ptr noundef %85) #6
  %cmp30.i = icmp ugt i32 %idx.169.in.i, 1
  br i1 %cmp30.i, label %for.body31.i.for.body31.i_crit_edge, label %ccu_pll_clk_register.exit

for.body31.i.for.body31.i_crit_edge:              ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31.i

ccu_pll_clk_register.exit:                        ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.276.i)
  %tobool6.not = icmp eq i32 %ret.276.i, 0
  br i1 %tobool6.not, label %ccu_pll_clk_register.exit.cleanup_crit_edge, label %ccu_pll_clk_register.exit.err_free_data_crit_edge

ccu_pll_clk_register.exit.err_free_data_crit_edge: ; preds = %ccu_pll_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

ccu_pll_clk_register.exit.cleanup_crit_edge:      ; preds = %ccu_pll_clk_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_free_data:                                    ; preds = %ccu_pll_clk_register.exit.err_free_data_crit_edge, %ccu_pll_clk_register.exit.thread, %ccu_pll_find_sys_regs.exit.err_free_data_crit_edge
  call void @kfree(ptr noundef %call7.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_free_data, %ccu_pll_clk_register.exit.cleanup_crit_edge, %for.inc.4.i.cleanup_crit_edge, %ccu_pll_create_data.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ccu_pll_hw_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ccu_pll_of_clk_hw_get(ptr nocapture noundef readonly %clkspec, ptr nocapture noundef readonly %priv) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %arrayidx.i = getelementptr %struct.ccu_pll_data, ptr %priv, i32 0, i32 2, i32 0
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.for.inc.i_crit_edge, label %land.lhs.true.i

entry.for.inc.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %entry
  %id.i = getelementptr inbounds %struct.ccu_pll, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp1.i = icmp eq i32 %5, %1
  br i1 %cmp1.i, label %land.lhs.true.i.ccu_pll_find_desc.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i.ccu_pll_find_desc.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_desc.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %entry.for.inc.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.ccu_pll_data, ptr %priv, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %7, null
  br i1 %tobool.not.1.i, label %for.inc.i.for.inc.1.i_crit_edge, label %land.lhs.true.1.i

for.inc.i.for.inc.1.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.inc.i
  %id.1.i = getelementptr inbounds %struct.ccu_pll, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %id.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp1.1.i = icmp eq i32 %9, %1
  br i1 %cmp1.1.i, label %land.lhs.true.1.i.ccu_pll_find_desc.exit_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1.i

land.lhs.true.1.i.ccu_pll_find_desc.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_desc.exit

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.inc.i.for.inc.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.ccu_pll_data, ptr %priv, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %11, null
  br i1 %tobool.not.2.i, label %for.inc.1.i.for.inc.2.i_crit_edge, label %land.lhs.true.2.i

for.inc.1.i.for.inc.2.i_crit_edge:                ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

land.lhs.true.2.i:                                ; preds = %for.inc.1.i
  %id.2.i = getelementptr inbounds %struct.ccu_pll, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %id.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %1)
  %cmp1.2.i = icmp eq i32 %13, %1
  br i1 %cmp1.2.i, label %land.lhs.true.2.i.ccu_pll_find_desc.exit_crit_edge, label %land.lhs.true.2.i.for.inc.2.i_crit_edge

land.lhs.true.2.i.for.inc.2.i_crit_edge:          ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2.i

land.lhs.true.2.i.ccu_pll_find_desc.exit_crit_edge: ; preds = %land.lhs.true.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_desc.exit

for.inc.2.i:                                      ; preds = %land.lhs.true.2.i.for.inc.2.i_crit_edge, %for.inc.1.i.for.inc.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.ccu_pll_data, ptr %priv, i32 0, i32 2, i32 3
  %14 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %15, null
  br i1 %tobool.not.3.i, label %for.inc.2.i.for.inc.3.i_crit_edge, label %land.lhs.true.3.i

for.inc.2.i.for.inc.3.i_crit_edge:                ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

land.lhs.true.3.i:                                ; preds = %for.inc.2.i
  %id.3.i = getelementptr inbounds %struct.ccu_pll, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %id.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %1)
  %cmp1.3.i = icmp eq i32 %17, %1
  br i1 %cmp1.3.i, label %land.lhs.true.3.i.ccu_pll_find_desc.exit_crit_edge, label %land.lhs.true.3.i.for.inc.3.i_crit_edge

land.lhs.true.3.i.for.inc.3.i_crit_edge:          ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3.i

land.lhs.true.3.i.ccu_pll_find_desc.exit_crit_edge: ; preds = %land.lhs.true.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_desc.exit

for.inc.3.i:                                      ; preds = %land.lhs.true.3.i.for.inc.3.i_crit_edge, %for.inc.2.i.for.inc.3.i_crit_edge
  %arrayidx.4.i = getelementptr %struct.ccu_pll_data, ptr %priv, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.4.i, align 4
  %tobool.not.4.i = icmp eq ptr %19, null
  br i1 %tobool.not.4.i, label %for.inc.3.i.do.end_crit_edge, label %land.lhs.true.4.i

for.inc.3.i.do.end_crit_edge:                     ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.4.i:                                ; preds = %for.inc.3.i
  %id.4.i = getelementptr inbounds %struct.ccu_pll, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %id.4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %1)
  %cmp1.4.i = icmp eq i32 %21, %1
  br i1 %cmp1.4.i, label %land.lhs.true.4.i.ccu_pll_find_desc.exit_crit_edge, label %land.lhs.true.4.i.do.end_crit_edge

land.lhs.true.4.i.do.end_crit_edge:               ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

land.lhs.true.4.i.ccu_pll_find_desc.exit_crit_edge: ; preds = %land.lhs.true.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ccu_pll_find_desc.exit

ccu_pll_find_desc.exit:                           ; preds = %land.lhs.true.4.i.ccu_pll_find_desc.exit_crit_edge, %land.lhs.true.3.i.ccu_pll_find_desc.exit_crit_edge, %land.lhs.true.2.i.ccu_pll_find_desc.exit_crit_edge, %land.lhs.true.1.i.ccu_pll_find_desc.exit_crit_edge, %land.lhs.true.i.ccu_pll_find_desc.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %land.lhs.true.i.ccu_pll_find_desc.exit_crit_edge ], [ %7, %land.lhs.true.1.i.ccu_pll_find_desc.exit_crit_edge ], [ %11, %land.lhs.true.2.i.ccu_pll_find_desc.exit_crit_edge ], [ %15, %land.lhs.true.3.i.ccu_pll_find_desc.exit_crit_edge ], [ %19, %land.lhs.true.4.i.ccu_pll_find_desc.exit_crit_edge ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %ccu_pll_find_desc.exit.do.end_crit_edge, label %ccu_pll_find_desc.exit.cleanup_crit_edge

ccu_pll_find_desc.exit.cleanup_crit_edge:         ; preds = %ccu_pll_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

ccu_pll_find_desc.exit.do.end_crit_edge:          ; preds = %ccu_pll_find_desc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %ccu_pll_find_desc.exit.do.end_crit_edge, %land.lhs.true.4.i.do.end_crit_edge, %for.inc.3.i.do.end_crit_edge
  %retval.0.i13 = phi ptr [ %retval.0.i, %ccu_pll_find_desc.exit.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %for.inc.3.i.do.end_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true.4.i.do.end_crit_edge ]
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %ccu_pll_find_desc.exit.cleanup_crit_edge
  %retval.0.i12 = phi ptr [ %retval.0.i13, %do.end ], [ %retval.0.i, %ccu_pll_find_desc.exit.cleanup_crit_edge ]
  ret ptr %retval.0.i12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_pll_hw_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !24, !26, !28, !30, !32, !34, !35, !36}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__of_table_ccu_pll, !1, !"__of_table_ccu_pll", i1 false, i1 false}
!1 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 206, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 118, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ccu_pll_find_sys_regs._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @ccu_pll_find_sys_regs._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../include/linux/of.h", i32 261, i32 30}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 162, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @ccu_pll_clk_register._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @ccu_pll_clk_register._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 170, i32 3}
!17 = !{ptr @ccu_pll_clk_register._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @ccu_pll_clk_register._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 63, i32 2}
!21 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 65, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 67, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 69, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 71, i32 2}
!30 = distinct !{null, !31, !"pll_info", i1 false, i1 false}
!31 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 62, i32 34}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/baikal-t1/clk-ccu-pll.c", i32 136, i32 3}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @ccu_pll_of_clk_hw_get._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @ccu_pll_of_clk_hw_get._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
