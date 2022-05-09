; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-a10-pll2.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-a10-pll2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_multiplier = type { %struct.clk_hw, ptr, i8, i8, i8, ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun4i_a10_pll2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_pll2_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_a13_pll2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-pll2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_pll2_setup }, section "__clk_of_table", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll2-prediv\00", [20 x i8] zeroinitializer }, align 32
@sun4i_a10_pll2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@sun4i_pll2_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 69, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Couldn't register the prediv clock\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun4i_pll2_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/sunxi/clk-a10-pll2.c\00", [63 x i8] zeroinitializer }, align 32
@sun4i_pll2_setup._entry_ptr = internal global ptr @sun4i_pll2_setup._entry, section ".printk_index", align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll2-base\00", [22 x i8] zeroinitializer }, align 32
@clk_multiplier_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@sun4i_pll2_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Couldn't register the base multiplier clock\0A\00", [49 x i8] zeroinitializer }, align 32
@sun4i_pll2_setup._entry_ptr.7 = internal global ptr @sun4i_pll2_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_a10_pll2_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 62, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"sun4i_a10_pll2_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 69, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 95, i32 42 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 102, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 120, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 261, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private constant [36 x i8] c"../drivers/clk/sunxi/clk-a10-pll2.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 36, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__of_table_sun4i_a10_pll2, ptr @__of_table_sun5i_a13_pll2, ptr @sun4i_pll2_setup._entry, ptr @sun4i_pll2_setup._entry.5, ptr @sun4i_pll2_setup._entry_ptr, ptr @sun4i_pll2_setup._entry_ptr.7, ptr @.str, ptr @sun4i_a10_pll2_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_pll2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pll2_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pll2_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_pll2_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sun4i_pll2_setup(ptr noundef %node, i32 noundef 0) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun5i_a13_pll2_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sun4i_pll2_setup(ptr noundef %node, i32 noundef 1) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_pll2_setup(ptr noundef %node, i32 noundef %post_div_offset) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parent = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #6
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent, align 4, !annotation !34
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %4 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %5, %cond.true.i ], [ @.str.9, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_node_full_name.exit.cleanup_crit_edge, label %if.end

of_node_full_name.exit.cleanup_crit_edge:         ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 8) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_unmap_crit_edge, label %if.end5

if.end.err_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end5:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 16) #10
  %tobool7.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool7.not, label %if.end5.err_free_data_crit_edge, label %if.end9

if.end5.err_free_data_crit_edge:                  ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #6
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %parent, align 4
  %call11 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str, ptr noundef %call10, i32 noundef 0, ptr noundef %call1, i8 noundef zeroext 0, i8 noundef zeroext 5, i8 noundef zeroext 5, ptr noundef null, ptr noundef nonnull @sun4i_a10_pll2_lock) #6
  %cmp.i239 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i239, label %do.end, label %if.end15

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #11
  br label %err_free_array

if.end15:                                         ; preds = %if.end9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i240 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 24) #10
  %tobool17.not = icmp eq ptr %call7.i.i240, null
  br i1 %tobool17.not, label %if.end15.err_unregister_prediv_crit_edge, label %if.end19

if.end15.err_unregister_prediv_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unregister_prediv

if.end19:                                         ; preds = %if.end15
  %reg20 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i240, i32 0, i32 1
  %10 = ptrtoint ptr %reg20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call1, ptr %reg20, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i240, i32 0, i32 2
  %11 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 31, ptr %bit_idx, align 8
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i240, i32 0, i32 4
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @sun4i_a10_pll2_lock, ptr %lock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i241 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #10
  %tobool22.not = icmp eq ptr %call7.i.i241, null
  br i1 %tobool22.not, label %if.end19.err_free_gate_crit_edge, label %if.end24

if.end19.err_free_gate_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_gate

if.end24:                                         ; preds = %if.end19
  %reg25 = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i241, i32 0, i32 1
  %14 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call1, ptr %reg25, align 4
  %shift = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i241, i32 0, i32 2
  %15 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 8, ptr %shift, align 8
  %width = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i241, i32 0, i32 3
  %16 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 7, ptr %width, align 1
  %flags = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i241, i32 0, i32 4
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 3, ptr %flags, align 2
  %lock26 = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i241, i32 0, i32 5
  %18 = ptrtoint ptr %lock26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sun4i_a10_pll2_lock, ptr %lock26, align 4
  %call27 = tail call ptr @__clk_get_name(ptr noundef %call11) #6
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call27, ptr %parent, align 4
  %call29 = call ptr @clk_register_composite(ptr noundef null, ptr noundef nonnull @.str.4, ptr noundef nonnull %parent, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i241, ptr noundef nonnull @clk_multiplier_ops, ptr noundef nonnull %call7.i.i240, ptr noundef nonnull @clk_gate_ops, i32 noundef 4) #6
  %cmp.i242 = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242, label %do.end34, label %if.end37

do.end34:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #11
  call void @kfree(ptr noundef nonnull %call7.i.i241) #6
  br label %err_free_gate

if.end37:                                         ; preds = %if.end24
  %call38 = call ptr @__clk_get_name(ptr noundef %call29) #6
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call38, ptr %parent, align 4
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call1) #6, !srcloc !35
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !36
  %22 = and i32 %21, -61
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %.neg = mul i32 %post_div_offset, -67108864
  %shl = add i32 %.neg, 268435456
  %or = or i32 %23, %shl
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !37
  call void @arm_heavy_mb() #6
  %24 = call i32 @llvm.bswap.i32(i32 %or)
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %call1, i32 %24) #6, !srcloc !38
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 0) #6
  %25 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_name, align 4
  %27 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %parent, align 4
  %call46 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %26, ptr noundef %28, i32 noundef 4, i32 noundef 1, i32 noundef 4) #6
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call46, ptr %call7.i.i.i, align 8
  %cmp.i243 = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243, label %do.end60, label %if.end37.if.end66_crit_edge, !prof !39

if.end37.if.end66_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end60:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 127, i32 noundef 9, ptr noundef null) #6
  br label %if.end66

if.end66:                                         ; preds = %do.end60, %if.end37.if.end66_crit_edge
  %call.i244 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 1) #6
  %30 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %clk_name, align 4
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 4
  %call75 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %31, ptr noundef %33, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %arrayidx76 = getelementptr ptr, ptr %call7.i.i.i, i32 1
  %34 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call75, ptr %arrayidx76, align 4
  %cmp.i245 = icmp ugt ptr %call75, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245, label %do.end95, label %if.end66.if.end101_crit_edge, !prof !39

if.end66.if.end101_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end101

do.end95:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 141, i32 noundef 9, ptr noundef null) #6
  br label %if.end101

if.end101:                                        ; preds = %do.end95, %if.end66.if.end101_crit_edge
  %call.i246 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 2) #6
  %35 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %clk_name, align 4
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 4
  %call110 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %36, ptr noundef %38, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %arrayidx111 = getelementptr ptr, ptr %call7.i.i.i, i32 2
  %39 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call110, ptr %arrayidx111, align 8
  %cmp.i247 = icmp ugt ptr %call110, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i247, label %do.end130, label %if.end101.if.end136_crit_edge, !prof !39

if.end101.if.end136_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end136

do.end130:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 150, i32 noundef 9, ptr noundef null) #6
  br label %if.end136

if.end136:                                        ; preds = %do.end130, %if.end101.if.end136_crit_edge
  %call.i248 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 3) #6
  %40 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clk_name, align 4
  %42 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent, align 4
  %call145 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %41, ptr noundef %43, i32 noundef 4, i32 noundef 2, i32 noundef 1) #6
  %arrayidx146 = getelementptr ptr, ptr %call7.i.i.i, i32 3
  %44 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call145, ptr %arrayidx146, align 4
  %cmp.i249 = icmp ugt ptr %call145, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i249, label %do.end165, label %if.end136.if.end171_crit_edge, !prof !39

if.end136.if.end171_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end171

do.end165:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 159, i32 noundef 9, ptr noundef null) #6
  br label %if.end171

if.end171:                                        ; preds = %do.end165, %if.end136.if.end171_crit_edge
  %45 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i, ptr %call7.i.i, align 8
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 4, ptr %clk_num, align 4
  %call180 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

err_free_gate:                                    ; preds = %do.end34, %if.end19.err_free_gate_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i240) #6
  br label %err_unregister_prediv

err_unregister_prediv:                            ; preds = %err_free_gate, %if.end15.err_unregister_prediv_crit_edge
  call void @clk_unregister_divider(ptr noundef %call11) #6
  br label %err_free_array

err_free_array:                                   ; preds = %err_unregister_prediv, %do.end
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #6
  br label %err_free_data

err_free_data:                                    ; preds = %err_free_array, %if.end5.err_free_data_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_data, %if.end.err_unmap_crit_edge
  call void @iounmap(ptr noundef %call1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end171, %of_node_full_name.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !16, !17, !18, !20, !22, !24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__of_table_sun4i_a10_pll2, !1, !"__of_table_sun4i_a10_pll2", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 186, i32 1}
!2 = !{ptr @__of_table_sun5i_a13_pll2, !3, !"__of_table_sun5i_a13_pll2", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 194, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 62, i32 15}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 69, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sun4i_pll2_setup._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun4i_pll2_setup._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 95, i32 42}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 102, i32 3}
!16 = !{ptr @sun4i_pll2_setup._entry.5, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun4i_pll2_setup._entry_ptr.7, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 120, i32 38}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/of.h", i32 261, i32 30}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi/clk-a10-pll2.c", i32 36, i32 8}
!24 = !{ptr @sun4i_a10_pll2_lock, !23, !"sun4i_a10_pll2_lock", i1 false, i1 false}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"auto-init"}
!35 = !{i64 4030367}
!36 = !{i64 2152533212}
!37 = !{i64 2152534156}
!38 = !{i64 4029949}
!39 = !{!"branch_weights", i32 1, i32 2000}
