; ModuleID = '/llk/IR_all_yes/drivers/clk/mmp/clk-apbc.c_pt.bc'
source_filename = "../drivers/clk/mmp/clk-apbc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_apbc = type { %struct.clk_hw, ptr, i32, i32, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_apbc_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @clk_apbc_prepare, ptr @clk_apbc_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"clk_apbc_ops\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../drivers/clk/mmp/clk-apbc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 117, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @clk_apbc_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_apbc_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mmp_clk_register_apbc(ptr noundef %name, ptr noundef %parent_name, ptr noundef %base, i32 noundef %delay, i32 noundef %apbc_flags, ptr noundef %lock) local_unnamed_addr #0 align 64 {
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
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @clk_apbc_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %flags, align 4
  %7 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent_name.addr, align 4
  %tobool2.not = icmp eq ptr %8, null
  %parent_name.addr. = select i1 %tobool2.not, ptr null, ptr %parent_name.addr
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr., ptr %parent_names, align 4
  %tobool3.not = icmp ne ptr %8, null
  %conv = zext i1 %tobool3.not to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  %base5 = getelementptr inbounds %struct.clk_apbc, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %base5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base, ptr %base5, align 4
  %delay6 = getelementptr inbounds %struct.clk_apbc, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %delay6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %delay, ptr %delay6, align 8
  %flags7 = getelementptr inbounds %struct.clk_apbc, ptr %call7.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %apbc_flags, ptr %flags7, align 4
  %lock8 = getelementptr inbounds %struct.clk_apbc, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %lock8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock8, align 8
  %init9 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %init9 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init9, align 8
  %call11 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #5
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call11, %if.then13 ], [ %call11, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #5
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_apbc_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %base = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !11
  %flags9 = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags9, align 4
  %and = shl i32 %6, 6
  %7 = and i32 %and, 128
  %8 = or i32 %4, 33554432
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %or13 = or i32 %9, %7
  %10 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %10) #5, !srcloc !12
  %13 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock, align 4
  %tobool16.not = icmp eq ptr %14, null
  br i1 %tobool16.not, label %if.end.if.end19_crit_edge, label %if.then17

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end19

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %14, i32 noundef %flags.0) #5
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end.if.end19_crit_edge
  %delay = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 2
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #5
  %18 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lock, align 4
  %tobool29.not = icmp eq ptr %19, null
  br i1 %tobool29.not, label %if.end19.if.end45_crit_edge, label %do.body32

if.end19.if.end45_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45

do.body32:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %call40 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %19) #5
  br label %if.end45

if.end45:                                         ; preds = %do.body32, %if.end19.if.end45_crit_edge
  %flags.1 = phi i32 [ %call40, %do.body32 ], [ %flags.0, %if.end19.if.end45_crit_edge ]
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #5, !srcloc !11
  %23 = or i32 %22, 16777216
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #5, !srcloc !12
  %26 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock, align 4
  %tobool53.not = icmp eq ptr %27, null
  br i1 %tobool53.not, label %if.end45.cond.false67_crit_edge, label %if.then54

if.end45.cond.false67_crit_edge:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false67

if.then54:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %27, i32 noundef %flags.1) #5
  br label %cond.false67

cond.false67:                                     ; preds = %if.then54, %if.end45.cond.false67_crit_edge
  %28 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %delay, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %29) #5
  %31 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags9, align 4
  %and71 = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool72.not = icmp eq i32 %and71, 0
  br i1 %tobool72.not, label %if.then73, label %cond.false67.if.end103_crit_edge

cond.false67.if.end103_crit_edge:                 ; preds = %cond.false67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then73:                                        ; preds = %cond.false67
  %33 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock, align 4
  %tobool75.not = icmp eq ptr %34, null
  br i1 %tobool75.not, label %if.then73.if.end91_crit_edge, label %do.body78

if.then73.if.end91_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end91

do.body78:                                        ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #7
  %call86 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %34) #5
  br label %if.end91

if.end91:                                         ; preds = %do.body78, %if.then73.if.end91_crit_edge
  %flags.2 = phi i32 [ %call86, %do.body78 ], [ %flags.1, %if.then73.if.end91_crit_edge ]
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #5, !srcloc !11
  %38 = and i32 %37, -67108865
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #5, !srcloc !12
  %41 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %lock, align 4
  %tobool99.not = icmp eq ptr %42, null
  br i1 %tobool99.not, label %if.end91.if.end103_crit_edge, label %if.then100

if.end91.if.end103_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end103

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %42, i32 noundef %flags.2) #5
  br label %if.end103

if.end103:                                        ; preds = %if.then100, %if.end91.if.end103_crit_edge, %cond.false67.if.end103_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_apbc_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #5
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %base = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !11
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %flags9 = getelementptr inbounds %struct.clk_apbc, ptr %hw, i32 0, i32 3
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags9, align 4
  %and = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  %and12 = and i32 %5, -131
  %spec.select = select i1 %tobool10.not, i32 %5, i32 %and12
  %and14 = and i32 %spec.select, -3
  %8 = tail call i32 @llvm.bswap.i32(i32 %and14)
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #5, !srcloc !12
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  %tobool17.not = icmp eq ptr %12, null
  br i1 %tobool17.not, label %if.end.if.end20_crit_edge, label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %12, i32 noundef %flags.0) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 2147480) #5
  %14 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lock, align 4
  %tobool22.not = icmp eq ptr %15, null
  br i1 %tobool22.not, label %if.end20.if.end38_crit_edge, label %do.body25

if.end20.if.end38_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.body25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %15) #5
  br label %if.end38

if.end38:                                         ; preds = %do.body25, %if.end20.if.end38_crit_edge
  %flags.1 = phi i32 [ %call33, %do.body25 ], [ %flags.0, %if.end20.if.end38_crit_edge ]
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #5, !srcloc !11
  %19 = and i32 %18, -16777217
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #5, !srcloc !12
  %22 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %lock, align 4
  %tobool46.not = icmp eq ptr %23, null
  br i1 %tobool46.not, label %if.end38.if.end49_crit_edge, label %if.then47

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %23, i32 noundef %flags.1) #5
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end38.if.end49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
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

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @clk_apbc_ops, !1, !"clk_apbc_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/mmp/clk-apbc.c", i32 117, i32 29}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 1247750}
!12 = !{i64 1247332}
