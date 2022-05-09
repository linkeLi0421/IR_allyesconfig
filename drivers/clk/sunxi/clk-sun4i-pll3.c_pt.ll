; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun4i-pll3.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun4i-pll3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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

@__of_table_sun4i_a10_pll3 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll3-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_pll3_setup }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun4i_a10_pll3_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 36, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Could not map the clock registers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun4i_a10_pll3_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/sunxi/clk-sun4i-pll3.c\00", [61 x i8] zeroinitializer }, align 32
@sun4i_a10_pll3_setup._entry_ptr = internal global ptr @sun4i_a10_pll3_setup._entry, section ".printk_index", align 4
@sun4i_a10_pll3_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_multiplier_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@sun4i_a10_pll3_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 64, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Couldn't register the clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_a10_pll3_setup._entry_ptr.6 = internal global ptr @sun4i_a10_pll3_setup._entry.4, section ".printk_index", align 4
@sun4i_a10_pll3_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 71, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Couldn't register DT provider\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_a10_pll3_setup._entry_ptr.9 = internal global ptr @sun4i_a10_pll3_setup._entry.7, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_a10_pll3_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 31, i32 32 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 36, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"sun4i_a10_pll3_lock\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 64, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 70, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 261, i32 30 }
@___asan_gen_.45 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.46 = private constant [38 x i8] c"../drivers/clk/sunxi/clk-sun4i-pll3.c\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.46, i32 19, i32 8 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__of_table_sun4i_a10_pll3, ptr @sun4i_a10_pll3_setup._entry, ptr @sun4i_a10_pll3_setup._entry.4, ptr @sun4i_a10_pll3_setup._entry.7, ptr @sun4i_a10_pll3_setup._entry_ptr, ptr @sun4i_a10_pll3_setup._entry_ptr.6, ptr @sun4i_a10_pll3_setup._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sun4i_a10_pll3_lock, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_pll3_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_pll3_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_pll3_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_pll3_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_pll3_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parent = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #5
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name) #5
  %call1 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #5
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call1, ptr %parent, align 4
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %6 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ @.str.10, %entry.of_node_full_name.exit_crit_edge ]
  %call3 = call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_name, align 4
  %call5 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #8
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 24) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.err_unmap_crit_edge, label %if.end8

if.end.err_unmap_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.end8:                                          ; preds = %if.end
  %reg9 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call3, ptr %reg9, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 31, ptr %bit_idx, align 8
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 4
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @sun4i_a10_pll3_lock, ptr %lock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i66 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 24) #9
  %tobool11.not = icmp eq ptr %call7.i.i66, null
  br i1 %tobool11.not, label %if.end8.err_free_gate_crit_edge, label %if.end13

if.end8.err_free_gate_crit_edge:                  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_gate

if.end13:                                         ; preds = %if.end8
  %reg14 = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i66, i32 0, i32 1
  %15 = ptrtoint ptr %reg14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call3, ptr %reg14, align 4
  %shift = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i66, i32 0, i32 2
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %shift, align 8
  %width = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i66, i32 0, i32 3
  %17 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 7, ptr %width, align 1
  %lock15 = getelementptr inbounds %struct.clk_multiplier, ptr %call7.i.i66, i32 0, i32 5
  %18 = ptrtoint ptr %lock15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sun4i_a10_pll3_lock, ptr %lock15, align 4
  %19 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %clk_name, align 4
  %call17 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %20, ptr noundef nonnull %parent, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i66, ptr noundef nonnull @clk_multiplier_ops, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_gate_ops, i32 noundef 0) #5
  %cmp.i67 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i67, label %do.end22, label %if.end25

do.end22:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %clk_name, align 4
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %22) #8
  br label %err_free_mult

if.end25:                                         ; preds = %if.end13
  %call26 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.cleanup_crit_edge, label %do.end31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_name, align 4
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %24) #8
  call void @clk_unregister_composite(ptr noundef %call17) #5
  br label %err_free_mult

err_free_mult:                                    ; preds = %do.end31, %do.end22
  call void @kfree(ptr noundef nonnull %call7.i.i66) #5
  br label %err_free_gate

err_free_gate:                                    ; preds = %err_free_mult, %if.end8.err_free_gate_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_gate, %if.end.err_unmap_crit_edge
  call void @iounmap(ptr noundef %call3) #5
  %call35 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #5
  %25 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %res, align 4
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %3, align 4
  %sub.i = sub i32 1, %26
  %add.i = add i32 %sub.i, %28
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %26, i32 noundef %add.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end25.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_composite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__of_table_sun4i_a10_pll3, !1, !"__of_table_sun4i_a10_pll3", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 89, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 31, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 36, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @sun4i_a10_pll3_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @sun4i_a10_pll3_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 64, i32 3}
!12 = !{ptr @sun4i_a10_pll3_setup._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @sun4i_a10_pll3_setup._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 70, i32 3}
!16 = !{ptr @sun4i_a10_pll3_setup._entry.7, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun4i_a10_pll3_setup._entry_ptr.9, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/of.h", i32 261, i32 30}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-sun4i-pll3.c", i32 19, i32 8}
!22 = !{ptr @sun4i_a10_pll3_lock, !21, !"sun4i_a10_pll3_lock", i1 false, i1 false}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
