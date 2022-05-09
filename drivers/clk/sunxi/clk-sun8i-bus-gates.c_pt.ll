; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun8i-bus-gates.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun8i-bus-gates.c"
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
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun8i_h3_bus_gates = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-bus-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_bus_gates_init }, section "__clk_of_table", align 4
@__of_table_sun8i_a83t_bus_gates = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-bus-gates-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_bus_gates_init }, section "__clk_of_table", align 4
@sun8i_h3_bus_gates_init.names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb1\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ahb2\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb1\00", [27 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apb2\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clock-names\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clock-indices\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/clk/sunxi/clk-sun8i-bus-gates.c\00", [56 x i8] zeroinitializer }, align 32
@gates_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gates_lock\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 17, i64 29, i64 30, i64 31]
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"names\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 28 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 40 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 48 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 56 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 22, i32 64 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 41, i32 44 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 53, i32 45 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 62, i32 39 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 74, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant [11 x i8] c"gates_lock\00", align 1
@___asan_gen_.41 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 261, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [43 x i8] c"../drivers/clk/sunxi/clk-sun8i-bus-gates.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 18, i32 8 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__of_table_sun8i_a83t_bus_gates, ptr @__of_table_sun8i_h3_bus_gates, ptr @sun8i_h3_bus_gates_init.names, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @gates_lock, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_bus_gates_init.names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gates_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_h3_bus_gates_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %parents = alloca [4 x ptr], align 4
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  %number = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parents) #6
  %0 = call ptr @memset(ptr %parents, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #6
  %1 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %2 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %3 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %number) #6
  %4 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %number, align 4, !annotation !36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #6
  %5 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %index, align 4, !annotation !36
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %6 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ @.str.8, %entry.of_node_full_name.exit_crit_edge ]
  %call1 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_node_full_name.exit.cleanup108_crit_edge, label %of_node_full_name.exit.for.body_crit_edge

of_node_full_name.exit.for.body_crit_edge:        ; preds = %of_node_full_name.exit
  br label %for.body

of_node_full_name.exit.cleanup108_crit_edge:      ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

for.body:                                         ; preds = %if.end6.for.body_crit_edge, %of_node_full_name.exit.for.body_crit_edge
  %i.0163 = phi i32 [ %inc, %if.end6.for.body_crit_edge ], [ 0, %of_node_full_name.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x ptr], ptr @sun8i_h3_bus_gates_init.names, i32 0, i32 %i.0163
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %call3 = tail call i32 @of_property_match_string(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %for.body.cleanup108_crit_edge, label %if.end6

for.body.cleanup108_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup108

if.end6:                                          ; preds = %for.body
  %call7 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef %call3) #6
  %arrayidx8 = getelementptr [4 x ptr], ptr %parents, i32 0, i32 %i.0163
  %10 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 8) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %for.end.err_unmap_crit_edge, label %if.end11

for.end.err_unmap_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_unmap

if.end11:                                         ; preds = %for.end
  %call.i = tail call i32 @of_property_count_elems_of_size(ptr noundef %node, ptr noundef nonnull @.str.5, i32 noundef 4) #6
  %12 = ptrtoint ptr %number to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call.i, ptr %number, align 4
  %sub = add i32 %call.i, -1
  %call13 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.5, i32 noundef %sub, ptr noundef nonnull %number) #6
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %add = add i32 %14, 1
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 4) #6
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !37

kcalloc.exit.thread:                              ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call7.i, align 8
  br label %err_free_data

if.end7.i.i:                                      ; preds = %if.end11
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #10
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.err_free_data_crit_edge, label %if.end18

if.end7.i.i.err_free_data_crit_edge:              ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_data

if.end18:                                         ; preds = %if.end7.i.i
  %call19 = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.5, ptr noundef null) #6
  %call20 = call ptr @of_prop_next_u32(ptr noundef %call19, ptr noundef null, ptr noundef nonnull %index) #6
  %tobool22.not164 = icmp eq ptr %call20, null
  br i1 %tobool22.not164, label %if.end18.for.end103_crit_edge, label %if.end18.for.body23_crit_edge

if.end18.for.body23_crit_edge:                    ; preds = %if.end18
  br label %for.body23

if.end18.for.end103_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.body23:                                       ; preds = %for.inc101.for.body23_crit_edge, %if.end18.for.body23_crit_edge
  %i.1166 = phi i32 [ %inc69, %for.inc101.for.body23_crit_edge ], [ 0, %if.end18.for.body23_crit_edge ]
  %p.0165 = phi ptr [ %call102, %for.inc101.for.body23_crit_edge ], [ %call20, %if.end18.for.body23_crit_edge ]
  %call.i155 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.1166) #6
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %if.else [
    i32 31, label %for.body23.if.end64_crit_edge
    i32 30, label %for.body23.if.end64_crit_edge167
    i32 29, label %for.body23.if.end64_crit_edge168
    i32 17, label %for.body23.if.end64_crit_edge169
  ]

for.body23.if.end64_crit_edge169:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

for.body23.if.end64_crit_edge168:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

for.body23.if.end64_crit_edge167:                 ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

for.body23.if.end64_crit_edge:                    ; preds = %for.body23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

if.else:                                          ; preds = %for.body23
  %23 = add i32 %21, -128
  call void @__sanitizer_cov_trace_const_cmp4(i32 -64, i32 %23)
  %24 = icmp ult i32 %23, -64
  br i1 %24, label %if.else.if.end64_crit_edge, label %land.lhs.true35

if.else.if.end64_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end64

land.lhs.true35:                                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %21)
  %cmp36 = icmp ult i32 %21, 96
  %spec.select = select i1 %cmp36, i32 2, i32 3
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true35, %if.else.if.end64_crit_edge, %for.body23.if.end64_crit_edge, %for.body23.if.end64_crit_edge167, %for.body23.if.end64_crit_edge168, %for.body23.if.end64_crit_edge169
  %clk_parent.0 = phi i32 [ 1, %for.body23.if.end64_crit_edge ], [ 0, %if.else.if.end64_crit_edge ], [ %spec.select, %land.lhs.true35 ], [ 1, %for.body23.if.end64_crit_edge167 ], [ 1, %for.body23.if.end64_crit_edge168 ], [ 1, %for.body23.if.end64_crit_edge169 ]
  %div = sdiv i32 %21, 32
  %mul = shl nsw i32 %div, 2
  %add.ptr = getelementptr i8, ptr %call1, i32 %mul
  %25 = mul i32 %div, 32
  %rem.decomposed = sub i32 %21, %25
  %conv = trunc i32 %rem.decomposed to i8
  %26 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk_name, align 4
  %arrayidx65 = getelementptr [4 x ptr], ptr %parents, i32 0, i32 %clk_parent.0
  %28 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx65, align 4
  %call66 = call ptr @clk_register_gate(ptr noundef null, ptr noundef %27, ptr noundef %29, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext %conv, i8 noundef zeroext 0, ptr noundef nonnull @gates_lock) #6
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %call7.i, align 8
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  %arrayidx68 = getelementptr ptr, ptr %31, i32 %33
  %34 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call66, ptr %arrayidx68, align 4
  %inc69 = add i32 %i.1166, 1
  %35 = load ptr, ptr %call7.i, align 8
  %36 = load i32, ptr %index, align 4
  %arrayidx71 = getelementptr ptr, ptr %35, i32 %36
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx71, align 4
  %cmp.i156 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %do.end86, label %if.end64.for.inc101_crit_edge

if.end64.for.inc101_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc101

do.end86:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 88, i32 noundef 9, ptr noundef null) #6
  br label %for.inc101

for.inc101:                                       ; preds = %do.end86, %if.end64.for.inc101_crit_edge
  %call102 = call ptr @of_prop_next_u32(ptr noundef %call19, ptr noundef nonnull %p.0165, ptr noundef nonnull %index) #6
  %tobool22.not = icmp eq ptr %call102, null
  br i1 %tobool22.not, label %for.inc101.for.end103_crit_edge, label %for.inc101.for.body23_crit_edge

for.inc101.for.body23_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body23

for.inc101.for.end103_crit_edge:                  ; preds = %for.inc101
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end103

for.end103:                                       ; preds = %for.inc101.for.end103_crit_edge, %if.end18.for.end103_crit_edge
  %39 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %number, align 4
  %add104 = add i32 %40, 1
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %41 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %add104, ptr %clk_num, align 4
  %call105 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #6
  br label %cleanup108

err_free_data:                                    ; preds = %if.end7.i.i.err_free_data_crit_edge, %kcalloc.exit.thread
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_data, %for.end.err_unmap_crit_edge
  call void @iounmap(ptr noundef %call1) #6
  %call106 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #6
  %42 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %res, align 4
  %44 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %2, align 4
  %sub.i = sub i32 1, %43
  %add.i = add i32 %sub.i, %45
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %43, i32 noundef %add.i) #6
  br label %cleanup108

cleanup108:                                       ; preds = %err_unmap, %for.end103, %for.body.cleanup108_crit_edge, %of_node_full_name.exit.cleanup108_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %number) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #6
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parents) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!27, !28, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!35}

!0 = !{ptr @__of_table_sun8i_h3_bus_gates, !1, !"__of_table_sun8i_h3_bus_gates", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 106, i32 1}
!2 = !{ptr @__of_table_sun8i_a83t_bus_gates, !3, !"__of_table_sun8i_a83t_bus_gates", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 108, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 22, i32 40}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 22, i32 48}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 22, i32 56}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 22, i32 64}
!12 = !{ptr @sun8i_h3_bus_gates_init.names, !13, !"names", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 22, i32 28}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 41, i32 44}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 53, i32 45}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 62, i32 39}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 74, i32 4}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/of.h", i32 261, i32 30}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi/clk-sun8i-bus-gates.c", i32 18, i32 8}
!26 = !{ptr @gates_lock, !25, !"gates_lock", i1 false, i1 false}
!27 = !{i32 1, !"wchar_size", i32 2}
!28 = !{i32 1, !"min_enum_size", i32 4}
!29 = !{i32 8, !"branch-target-enforcement", i32 0}
!30 = !{i32 8, !"sign-return-address", i32 0}
!31 = !{i32 8, !"sign-return-address-all", i32 0}
!32 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!33 = !{i32 7, !"uwtable", i32 1}
!34 = !{i32 7, !"frame-pointer", i32 2}
!35 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!36 = !{!"auto-init"}
!37 = !{!"branch_weights", i32 1, i32 2000}
