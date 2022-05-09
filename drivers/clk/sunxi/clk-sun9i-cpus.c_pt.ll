; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun9i-cpus.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun9i-cpus.c"
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
%struct.sun9i_a80_cpus_clk = type { %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_sun9i_a80_cpus = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-cpus-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_cpus_setup }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun9i_a80_cpus_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@sun9i_a80_cpus_clk_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sun9i_a80_cpus_clk_recalc_rate, ptr null, ptr @sun9i_a80_cpus_clk_determine_rate, ptr null, ptr null, ptr @sun9i_a80_cpus_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@iomem_resource = external dso_local global %struct.resource, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun9i_a80_cpus_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 201, i32 32 }
@___asan_gen_.6 = private unnamed_addr constant [20 x i8] c"sun9i_a80_cpus_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [23 x i8] c"sun9i_a80_cpus_clk_ops\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 177, i32 29 }
@___asan_gen_.13 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 261, i32 30 }
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private constant [38 x i8] c"../drivers/clk/sunxi/clk-sun9i-cpus.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 19, i32 8 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @__of_table_sun9i_a80_cpus, ptr @.str, ptr @sun9i_a80_cpus_lock, ptr @sun9i_a80_cpus_clk_ops, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_cpus_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_cpus_clk_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun9i_a80_cpus_setup(ptr noundef %node) #0 align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parents = alloca [4 x ptr], align 4
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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parents) #5
  %3 = call ptr @memset(ptr %parents, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #5
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 16) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %if.end.of_node_full_name.exit_crit_edge, label %cond.true.i

if.end.of_node_full_name.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %7 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %if.end.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %8, %cond.true.i ], [ @.str.1, %if.end.of_node_full_name.exit_crit_edge ]
  %call2 = tail call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #5
  %reg = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %reg, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %of_node_full_name.exit.err_free_cpus_crit_edge, label %if.end6

of_node_full_name.exit.err_free_cpus_crit_edge:   ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_cpus

if.end6:                                          ; preds = %of_node_full_name.exit
  %call7 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name) #5
  %call8 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef 4) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 32) #8
  %tobool10.not = icmp eq ptr %call7.i.i55, null
  br i1 %tobool10.not, label %if.end6.err_unmap_crit_edge, label %if.end12

if.end6.err_unmap_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_unmap

if.end12:                                         ; preds = %if.end6
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg, align 4
  %reg14 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i55, i32 0, i32 1
  %13 = ptrtoint ptr %reg14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %reg14, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i55, i32 0, i32 4
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %shift, align 8
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i55, i32 0, i32 3
  %15 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %mask, align 4
  %lock = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i55, i32 0, i32 6
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @sun9i_a80_cpus_lock, ptr %lock, align 4
  %17 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk_name, align 4
  %call17 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %18, ptr noundef nonnull %parents, i32 noundef %call8, ptr noundef nonnull %call7.i.i55, ptr noundef nonnull @clk_mux_ops, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @sun9i_a80_cpus_clk_ops, ptr noundef null, ptr noundef null, i32 noundef 0) #5
  %cmp.i56 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i56, label %if.end12.err_free_mux_crit_edge, label %if.end20

if.end12.err_free_mux_crit_edge:                  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_free_mux

if.end20:                                         ; preds = %if.end12
  %call21 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call17) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end20.cleanup_crit_edge, label %err_unregister

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_unregister:                                   ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_unregister(ptr noundef %call17) #5
  br label %err_free_mux

err_free_mux:                                     ; preds = %err_unregister, %if.end12.err_free_mux_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i55) #5
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_mux, %if.end6.err_unmap_crit_edge
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg, align 4
  call void @iounmap(ptr noundef %20) #5
  %call26 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #5
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  %sub.i = sub i32 1, %22
  %add.i = add i32 %sub.i, %24
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %22, i32 noundef %add.i) #5
  br label %err_free_cpus

err_free_cpus:                                    ; preds = %err_unmap, %of_node_full_name.exit.err_free_cpus_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %err_free_cpus, %if.end20.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parents) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !20
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !21
  %4 = and i32 %3, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %4)
  %cmp = icmp eq i32 %4, 196608
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %and4 = lshr i32 %3, 8
  %shr5 = and i32 %and4, 31
  %add = add nuw nsw i32 %shr5, 1
  %div = udiv i32 %parent_rate, %add
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %parent_rate.addr.0 = phi i32 [ %div, %if.then ], [ %parent_rate, %entry.if.end_crit_edge ]
  %and6 = lshr i32 %3, 4
  %shr7 = and i32 %and6, 3
  %add8 = add nuw nsw i32 %shr7, 1
  %div9 = udiv i32 %parent_rate.addr.0, %add8
  ret i32 %div9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_determine_rate(ptr noundef %clk, ptr nocapture noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %clk) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp46 = icmp sgt i32 %call, 0
  br i1 %cmp46, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %best_child_rate.051 = phi i32 [ %best_child_rate.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best.050 = phi i32 [ %best.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %best_parent.047 = phi ptr [ %best_parent.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %call2 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %clk, i32 noundef %i.048) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call3 = tail call i32 @clk_hw_get_flags(ptr noundef %clk) #5
  %and = and i32 %call3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @clk_hw_round_rate(ptr noundef nonnull %call2, i32 noundef %1) #5
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call2) #5
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %parent_rate.0 = phi i32 [ %call6, %if.then5 ], [ %call7, %if.else ]
  %conv = trunc i32 %i.048 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate.0)
  %tobool.not.i = icmp ne i32 %parent_rate.0, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %parent_rate.0)
  %cmp.i = icmp ugt i32 %1, %parent_rate.0
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  %rate.addr.0.i = select i1 %or.cond.i, i32 %parent_rate.0, i32 %1
  %add.i = add i32 %parent_rate.0, -1
  %sub.i = add i32 %add.i, %rate.addr.0.i
  %div1.i = udiv i32 %sub.i, %rate.addr.0.i
  %conv.i = trunc i32 %div1.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %conv)
  %cmp3.i = icmp eq i8 %conv, 3
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.end8.sun9i_a80_cpus_clk_round.exit_crit_edge

if.end8.sun9i_a80_cpus_clk_round.exit_crit_edge:  ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

land.lhs.true5.i:                                 ; preds = %if.end8
  %conv6.i = and i32 %div1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv6.i)
  %cmp7.i = icmp ugt i32 %conv6.i, 4
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge

land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv6.i)
  %cmp11.i = icmp ult i32 %conv6.i, 32
  br i1 %cmp11.i, label %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge, label %if.else.i

if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv6.i)
  %cmp15.i = icmp ult i32 %conv6.i, 64
  br i1 %cmp15.i, label %if.then17.i, label %if.else23.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub20.i = add nuw nsw i32 %conv6.i, 1
  %div2174.i = lshr i32 %sub20.i, 1
  %conv22.i = trunc i32 %div2174.i to i8
  br label %sun9i_a80_cpus_clk_round.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %conv6.i)
  %cmp25.i = icmp ult i32 %conv6.i, 96
  br i1 %cmp25.i, label %if.then27.i, label %if.else33.i

if.then27.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  %div31.lhs.trunc.i = add i8 %conv.i, 2
  %div3175.i = udiv i8 %div31.lhs.trunc.i, 3
  br label %sun9i_a80_cpus_clk_round.exit

if.else33.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub36.i = add nuw nsw i32 %conv6.i, 3
  %div3773.i = lshr i32 %sub36.i, 2
  %conv38.i = trunc i32 %div3773.i to i8
  br label %sun9i_a80_cpus_clk_round.exit

sun9i_a80_cpus_clk_round.exit:                    ; preds = %if.else33.i, %if.then27.i, %if.then17.i, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge, %if.end8.sun9i_a80_cpus_clk_round.exit_crit_edge
  %div.0.i = phi i32 [ 2, %if.then17.i ], [ 3, %if.then27.i ], [ 4, %if.else33.i ], [ %div1.i, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ %div1.i, %if.end8.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ 1, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge ]
  %pre_div.0.i = phi i8 [ %conv22.i, %if.then17.i ], [ %div3175.i, %if.then27.i ], [ %conv38.i, %if.else33.i ], [ 1, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ 1, %if.end8.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ %conv.i, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge ]
  %conv52.i = zext i8 %pre_div.0.i to i32
  %div53.i = udiv i32 %parent_rate.0, %conv52.i
  %conv54.i = and i32 %div.0.i, 255
  %div55.i = udiv i32 %div53.i, %conv54.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div55.i, i32 %1)
  %cmp10.not = icmp ule i32 %div55.i, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %div55.i, i32 %best_child_rate.051)
  %cmp12 = icmp ugt i32 %div55.i, %best_child_rate.051
  %or.cond = select i1 %cmp10.not, i1 %cmp12, i1 false
  br i1 %or.cond, label %if.then14, label %sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge

sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge:  ; preds = %sun9i_a80_cpus_clk_round.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then14:                                        ; preds = %sun9i_a80_cpus_clk_round.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %best_parent.1 = phi ptr [ %call2, %if.then14 ], [ %best_parent.047, %sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge ], [ %best_parent.047, %for.body.for.inc_crit_edge ]
  %best.1 = phi i32 [ %parent_rate.0, %if.then14 ], [ %best.050, %sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge ], [ %best.050, %for.body.for.inc_crit_edge ]
  %best_child_rate.1 = phi i32 [ %div55.i, %if.then14 ], [ %best_child_rate.051, %sun9i_a80_cpus_clk_round.exit.for.inc_crit_edge ], [ %best_child_rate.051, %for.body.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool16.not = icmp eq ptr %best_parent.1, null
  br i1 %tobool16.not, label %for.end.cleanup_crit_edge, label %if.end18

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  %2 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %best_parent.1, ptr %best_parent_hw, align 4
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %3 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %best.1, ptr %best_parent_rate, align 4
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %best_child_rate.1, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ -22, %for.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun9i_a80_cpus_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @sun9i_a80_cpus_lock) #5
  %reg6 = getelementptr inbounds %struct.sun9i_a80_cpus_clk, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg6, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !20
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool.not.i = icmp ne i32 %parent_rate, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp.i = icmp ugt i32 %rate, %parent_rate
  %or.cond.i = and i1 %tobool.not.i, %cmp.i
  %rate.addr.0.i = select i1 %or.cond.i, i32 %parent_rate, i32 %rate
  %add.i = add i32 %parent_rate, -1
  %sub.i = add i32 %add.i, %rate.addr.0.i
  %div1.i = udiv i32 %sub.i, %rate.addr.0.i
  %conv.i = trunc i32 %div1.i to i8
  %4 = and i32 %3, 196608
  call void @__sanitizer_cov_trace_const_cmp4(i32 196608, i32 %4)
  %cmp3.i = icmp eq i32 %4, 196608
  br i1 %cmp3.i, label %land.lhs.true5.i, label %entry.sun9i_a80_cpus_clk_round.exit_crit_edge

entry.sun9i_a80_cpus_clk_round.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

land.lhs.true5.i:                                 ; preds = %entry
  %conv6.i = and i32 %div1.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv6.i)
  %cmp7.i = icmp ugt i32 %conv6.i, 4
  br i1 %cmp7.i, label %if.then9.i, label %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge

land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

if.then9.i:                                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv6.i)
  %cmp11.i = icmp ult i32 %conv6.i, 32
  br i1 %cmp11.i, label %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge, label %if.else.i

if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sun9i_a80_cpus_clk_round.exit

if.else.i:                                        ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv6.i)
  %cmp15.i = icmp ult i32 %conv6.i, 64
  br i1 %cmp15.i, label %if.then17.i, label %if.else23.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub20.i = add nuw nsw i32 %conv6.i, 1
  %div2174.i = lshr i32 %sub20.i, 1
  %conv22.i = trunc i32 %div2174.i to i8
  br label %sun9i_a80_cpus_clk_round.exit

if.else23.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %conv6.i)
  %cmp25.i = icmp ult i32 %conv6.i, 96
  br i1 %cmp25.i, label %if.then27.i, label %if.else33.i

if.then27.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  %div31.lhs.trunc.i = add i8 %conv.i, 2
  %div3175.i = udiv i8 %div31.lhs.trunc.i, 3
  br label %sun9i_a80_cpus_clk_round.exit

if.else33.i:                                      ; preds = %if.else23.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub36.i = add nuw nsw i32 %conv6.i, 3
  %div3773.i = lshr i32 %sub36.i, 2
  %conv38.i = trunc i32 %div3773.i to i8
  br label %sun9i_a80_cpus_clk_round.exit

sun9i_a80_cpus_clk_round.exit:                    ; preds = %if.else33.i, %if.then27.i, %if.then17.i, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge, %entry.sun9i_a80_cpus_clk_round.exit_crit_edge
  %div.0.i = phi i32 [ 2, %if.then17.i ], [ 3, %if.then27.i ], [ 4, %if.else33.i ], [ %div1.i, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ %div1.i, %entry.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ 1, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge ]
  %pre_div.0.i = phi i8 [ %conv22.i, %if.then17.i ], [ %div3175.i, %if.then27.i ], [ %conv38.i, %if.else33.i ], [ 1, %land.lhs.true5.i.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ 1, %entry.sun9i_a80_cpus_clk_round.exit_crit_edge ], [ %conv.i, %if.then9.i.sun9i_a80_cpus_clk_round.exit_crit_edge ]
  %sub49.i = add i8 %pre_div.0.i, -1
  %and12 = and i32 %3, -7985
  %sub46.i = shl i32 %div.0.i, 4
  %conv13 = add i32 %sub46.i, 240
  %shl.masked = and i32 %conv13, 240
  %and14 = or i32 %shl.masked, %and12
  %conv15 = zext i8 %sub49.i to i32
  %shl16 = shl nuw nsw i32 %conv15, 8
  %or17 = or i32 %and14, %shl16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !23
  tail call void @arm_heavy_mb() #5
  %5 = tail call i32 @llvm.bswap.i32(i32 %or17)
  %6 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !24
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @sun9i_a80_cpus_lock, i32 noundef %call3) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_flags(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__of_table_sun9i_a80_cpus, !1, !"__of_table_sun9i_a80_cpus", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun9i-cpus.c", i32 241, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun9i-cpus.c", i32 201, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../include/linux/of.h", i32 261, i32 30}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun9i-cpus.c", i32 19, i32 8}
!8 = !{ptr @sun9i_a80_cpus_lock, !7, !"sun9i_a80_cpus_lock", i1 false, i1 false}
!9 = !{ptr @sun9i_a80_cpus_clk_ops, !10, !"sun9i_a80_cpus_clk_ops", i1 false, i1 false}
!10 = !{!"../drivers/clk/sunxi/clk-sun9i-cpus.c", i32 177, i32 29}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i64 4062974}
!21 = !{i64 2152559827}
!22 = !{i64 2152564515}
!23 = !{i64 2152567015}
!24 = !{i64 4062556}
