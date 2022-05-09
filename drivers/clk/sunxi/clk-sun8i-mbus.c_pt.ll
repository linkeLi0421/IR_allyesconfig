; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun8i-mbus.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun8i-mbus.c"
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
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }

@__of_table_sun8i_a23_mbus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-mbus-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_mbus_setup }, section "__clk_of_table", align 4
@sun8i_a23_mbus_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Could not get registers for sun8i-mbus-clk\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun8i_a23_mbus_setup\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/sunxi/clk-sun8i-mbus.c\00", [61 x i8] zeroinitializer }, align 32
@sun8i_a23_mbus_setup._entry_ptr = internal global ptr @sun8i_a23_mbus_setup._entry, section ".printk_index", align 4
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun8i_a23_mbus_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun8i_a23_mbus_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 43, i32 3 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 59, i32 32 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"sun8i_a23_mbus_lock\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 261, i32 30 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [38 x i8] c"../drivers/clk/sunxi/clk-sun8i-mbus.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 22, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__of_table_sun8i_a23_mbus, ptr @sun8i_a23_mbus_setup._entry, ptr @sun8i_a23_mbus_setup._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sun8i_a23_mbus_lock, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_mbus_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_mbus_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_a23_mbus_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %3 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 4) #7
  %5 = extractvalue { i32, i1 } %4, 1
  %6 = call ptr @memset(ptr %res, i32 255, i32 32)
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end7.i.i, !prof !24

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i:                                      ; preds = %entry
  %7 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %if.end7.i.i
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %if.end.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end.of_node_full_name.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %8 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %9, %cond.true.i ], [ @.str.4, %if.end.of_node_full_name.exit_crit_edge ]
  %call3 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end7

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup.sink.split

if.end7:                                          ; preds = %of_node_full_name.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #12
  %tobool9.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool9.not, label %if.end7.err_unmap_crit_edge, label %if.end11

if.end7.err_unmap_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

if.end11:                                         ; preds = %if.end7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 32) #12
  %tobool13.not = icmp eq ptr %call7.i.i89, null
  br i1 %tobool13.not, label %if.end11.err_free_div_crit_edge, label %if.end15

if.end11.err_free_div_crit_edge:                  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_div

if.end15:                                         ; preds = %if.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i92 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 24) #12
  %tobool17.not = icmp eq ptr %call7.i.i92, null
  br i1 %tobool17.not, label %if.end15.err_free_mux_crit_edge, label %if.end19

if.end15.err_free_mux_crit_edge:                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_mux

if.end19:                                         ; preds = %if.end15
  %call20 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.3, ptr noundef nonnull %clk_name) #7
  %call21 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %call8.i.i, i32 noundef %call) #7
  %reg22 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i92, i32 0, i32 1
  %13 = ptrtoint ptr %reg22 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call3, ptr %reg22, align 4
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i92, i32 0, i32 2
  %14 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 31, ptr %bit_idx, align 8
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i92, i32 0, i32 4
  %15 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @sun8i_a23_mbus_lock, ptr %lock, align 4
  %reg23 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %reg23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call3, ptr %reg23, align 4
  %shift = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %shift, align 8
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 3, ptr %width, align 1
  %lock24 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %19 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @sun8i_a23_mbus_lock, ptr %lock24, align 8
  %reg25 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i89, i32 0, i32 1
  %20 = ptrtoint ptr %reg25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3, ptr %reg25, align 4
  %shift26 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i89, i32 0, i32 4
  %21 = ptrtoint ptr %shift26 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 24, ptr %shift26, align 8
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i89, i32 0, i32 3
  %22 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %mask, align 4
  %lock27 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i89, i32 0, i32 6
  %23 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @sun8i_a23_mbus_lock, ptr %lock27, align 4
  %24 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %clk_name, align 4
  %call30 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %25, ptr noundef nonnull %call8.i.i, i32 noundef %call, ptr noundef nonnull %call7.i.i89, ptr noundef nonnull @clk_mux_ops, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_divider_ops, ptr noundef nonnull %call7.i.i92, ptr noundef nonnull @clk_gate_ops, i32 noundef 2048) #7
  %cmp.i93 = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.end19.err_free_gate_crit_edge, label %if.end33

if.end19.err_free_gate_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_gate

if.end33:                                         ; preds = %if.end19
  %call34 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call30) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup.sink.split_crit_edge, label %err_unregister_clk

if.end33.cleanup.sink.split_crit_edge:            ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

err_unregister_clk:                               ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unregister(ptr noundef %call30) #7
  br label %err_free_gate

err_free_gate:                                    ; preds = %err_unregister_clk, %if.end19.err_free_gate_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i92) #7
  br label %err_free_mux

err_free_mux:                                     ; preds = %err_free_gate, %if.end15.err_free_mux_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i89) #7
  br label %err_free_div

err_free_div:                                     ; preds = %err_free_mux, %if.end11.err_free_div_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_div, %if.end7.err_unmap_crit_edge
  call void @iounmap(ptr noundef %call3) #7
  %call38 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #7
  %26 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %res, align 4
  %28 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %3, align 4
  %sub.i = sub i32 1, %27
  %add.i = add i32 %sub.i, %29
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %add.i) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %err_unmap, %if.end33.cleanup.sink.split_crit_edge, %do.end
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @__of_table_sun8i_a23_mbus, !1, !"__of_table_sun8i_a23_mbus", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun8i-mbus.c", i32 109, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun8i-mbus.c", i32 43, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_a23_mbus_setup._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_a23_mbus_setup._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-sun8i-mbus.c", i32 59, i32 32}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../include/linux/of.h", i32 261, i32 30}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-sun8i-mbus.c", i32 22, i32 8}
!14 = !{ptr @sun8i_a23_mbus_lock, !13, !"sun8i_a23_mbus_lock", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"branch_weights", i32 1, i32 2000}
