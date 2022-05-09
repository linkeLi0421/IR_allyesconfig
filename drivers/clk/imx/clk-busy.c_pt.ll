; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-busy.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-busy.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_busy_divider = type { %struct.clk_divider, ptr, ptr, i8 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_busy_mux = type { %struct.clk_mux, ptr, ptr, i8 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }

@imx_ccm_lock = external dso_local global %struct.spinlock, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_busy_divider_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_busy_divider_recalc_rate, ptr @clk_busy_divider_round_rate, ptr null, ptr null, ptr null, ptr @clk_busy_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_busy_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_busy_mux_set_parent, ptr @clk_busy_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"clk_busy_divider_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 70, i32 29 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"clk_busy_mux_ops\00", align 1
@___asan_gen_.5 = private constant [30 x i8] c"../drivers/clk/imx/clk-busy.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 150, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @clk_busy_divider_ops, ptr @clk_busy_mux_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_busy_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_busy_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_busy_divider(ptr noundef %name, ptr noundef %parent_name, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, ptr noundef %busy_reg, i8 noundef zeroext %busy_shift) local_unnamed_addr #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg2 = getelementptr inbounds %struct.clk_busy_divider, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %busy_reg, ptr %reg2, align 8
  %shift3 = getelementptr inbounds %struct.clk_busy_divider, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %shift3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %busy_shift, ptr %shift3, align 4
  %reg4 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %reg4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %reg, ptr %reg4, align 4
  %shift6 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %shift6 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %shift, ptr %shift6, align 8
  %width8 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 3
  %8 = ptrtoint ptr %width8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %width, ptr %width8, align 1
  %lock = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i, i32 0, i32 6
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @imx_ccm_lock, ptr %lock, align 8
  %div_ops = getelementptr inbounds %struct.clk_busy_divider, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %div_ops to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @clk_divider_ops, ptr %div_ops, align 4
  %11 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %12 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_busy_divider_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2052, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %num_parents, align 4
  %init13 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %init13 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init, ptr %init13, align 8
  %call16 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.then18

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %17 = inttoptr i32 %call16 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %17, %if.then18 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_busy_mux(ptr noundef %name, ptr noundef %reg, i8 noundef zeroext %shift, i8 noundef zeroext %width, ptr noundef %busy_reg, i8 noundef zeroext %busy_shift, ptr noundef %parent_names, i32 noundef %num_parents) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #5
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 44) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg2 = getelementptr inbounds %struct.clk_busy_mux, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %reg2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %busy_reg, ptr %reg2, align 4
  %shift3 = getelementptr inbounds %struct.clk_busy_mux, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %shift3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %busy_shift, ptr %shift3, align 8
  %reg4 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %reg4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %reg, ptr %reg4, align 4
  %shift6 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %shift6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %shift, ptr %shift6, align 8
  %conv = zext i8 %width to i32
  %notmask = shl nsw i32 -1, %conv
  %sub = xor i32 %notmask, -1
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %mask, align 4
  %lock = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @imx_ccm_lock, ptr %lock, align 4
  %mux_ops = getelementptr inbounds %struct.clk_busy_mux, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %mux_ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clk_mux_ops, ptr %mux_ops, align 8
  %10 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @clk_busy_mux_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2048, ptr %flags, align 4
  %parent_names10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %13 = ptrtoint ptr %parent_names10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %parent_names, ptr %parent_names10, align 4
  %conv11 = trunc i32 %num_parents to i8
  %num_parents12 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %14 = ptrtoint ptr %num_parents12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv11, ptr %num_parents12, align 4
  %init15 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %init15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init15, align 8
  %call18 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end.cleanup_crit_edge, label %if.then20

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then20:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %16 = inttoptr i32 %call18 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %16, %if.then20 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops = getelementptr inbounds %struct.clk_busy_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recalc_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i32 noundef %parent_rate) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops = getelementptr inbounds %struct.clk_busy_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %round_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #5
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_busy_divider_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %div_ops = getelementptr inbounds %struct.clk_busy_divider, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %div_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div_ops, align 4
  %set_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %set_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %reg = getelementptr inbounds %struct.clk_busy_divider, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_busy_divider, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !13
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %and.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end_crit_edge, label %while.body.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ 0, %while.cond.i.if.end_crit_edge ], [ -110, %while.body.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_busy_mux_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops = getelementptr inbounds %struct.clk_busy_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mux_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops, align 4
  %set_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %set_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_parent, align 4
  %call2 = tail call i32 %3(ptr noundef %hw, i8 noundef zeroext %index) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %reg = getelementptr inbounds %struct.clk_busy_mux, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.clk_busy_mux, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 1
  %conv.i = zext i8 %7 to i32
  %shl.i = shl nuw i32 1, %conv.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.then
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #5, !srcloc !13
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #5
  %and.i = and i32 %10, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %while.cond.i.if.end_crit_edge, label %while.body.i

while.cond.i.if.end_crit_edge:                    ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

while.body.i:                                     ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %11 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %11
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %while.body.i.if.end_crit_edge, label %while.body.i.while.cond.i_crit_edge

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %while.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %call2, %entry.if.end_crit_edge ], [ 0, %while.cond.i.if.end_crit_edge ], [ -110, %while.body.i.if.end_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @clk_busy_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mux_ops = getelementptr inbounds %struct.clk_busy_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mux_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux_ops, align 4
  %get_parent = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %get_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %get_parent, align 4
  %call2 = tail call zeroext i8 %3(ptr noundef %hw) #5
  ret i8 %call2
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
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

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @clk_busy_divider_ops, !1, !"clk_busy_divider_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-busy.c", i32 70, i32 29}
!2 = !{ptr @clk_busy_mux_ops, !3, !"clk_busy_mux_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-busy.c", i32 150, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{i64 4060973}
