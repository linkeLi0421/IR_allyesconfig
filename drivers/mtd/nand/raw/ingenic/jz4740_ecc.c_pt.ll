; ModuleID = '/llk/IR_all_yes/drivers/mtd/nand/raw/ingenic/jz4740_ecc.c_pt.bc'
source_filename = "../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ingenic_ecc_ops = type { ptr, ptr, ptr }
%struct.ingenic_ecc = type { ptr, ptr, ptr, ptr, %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ingenic_ecc_params = type { i32, i32, i32 }

@__initcall__kmod_jz4740_ecc__170_193_jz4740_ecc_driver_init6 = internal global ptr @jz4740_ecc_driver_init, section ".initcall6.init", align 4
@jz4740_ecc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ingenic_ecc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4740_ecc_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4740_ecc_driver_exit = internal global ptr @jz4740_ecc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author171 = internal constant [55 x i8] c"jz4740_ecc.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description172 = internal constant [60 x i8] c"jz4740_ecc.description=Ingenic JZ4740 ECC controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file173 = internal constant [56 x i8] c"jz4740_ecc.file=drivers/mtd/nand/raw/ingenic/jz4740_ecc\00", section ".modinfo", align 1
@__UNIQUE_ID_license174 = internal constant [26 x i8] c"jz4740_ecc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jz4740-ecc\00", [21 x i8] zeroinitializer }, align 32
@jz4740_ecc_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4740-ecc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jz4740_ecc_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@jz4740_ecc_ops = internal constant { %struct.ingenic_ecc_ops, [20 x i8] } { %struct.ingenic_ecc_ops { ptr @jz4740_ecc_disable, ptr @jz4740_ecc_calculate, ptr @jz4740_ecc_correct }, [20 x i8] zeroinitializer }, align 32
@empty_block_ecc = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\CD\9D\90X\F4\8B\FF\B7o", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [18 x i8] c"jz4740_ecc_driver\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 186, i32 31 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 189, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [20 x i8] c"jz4740_ecc_dt_match\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 180, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"jz4740_ecc_ops\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 174, i32 37 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"empty_block_ecc\00", align 1
@___asan_gen_.14 = private constant [45 x i8] c"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 41, i32 22 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author171, ptr @__UNIQUE_ID_description172, ptr @__UNIQUE_ID_file173, ptr @__UNIQUE_ID_license174, ptr @__exitcall_jz4740_ecc_driver_exit, ptr @__initcall__kmod_jz4740_ecc__170_193_jz4740_ecc_driver_init6, ptr @jz4740_ecc_driver_exit, ptr @jz4740_ecc_driver, ptr @.str, ptr @jz4740_ecc_dt_match, ptr @jz4740_ecc_ops, ptr @empty_block_ecc], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_ecc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_ecc_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4740_ecc_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @empty_block_ecc to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_ecc_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4740_ecc_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_ecc_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4740_ecc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ingenic_ecc_probe(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @jz4740_ecc_disable(ptr nocapture noundef readonly %ecc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !29
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.ingenic_ecc, ptr %ecc, i32 0, i32 2
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #5, !srcloc !30
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %5 = and i32 %4, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !30
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_ecc_calculate(ptr nocapture noundef readonly %ecc, ptr nocapture noundef readonly %params, ptr nocapture noundef readnone %buf, ptr nocapture noundef %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %ecc, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !30
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = or i32 %4, 251658240
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !30
  br label %do.body

do.body:                                          ; preds = %land.rhs.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 1000, %entry ], [ %dec, %land.rhs.do.body_crit_edge ]
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !37
  %11 = and i32 %10, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %do.body
  %dec = add nsw i32 %timeout.0, -1
  %tobool2.not = icmp eq i32 %dec, 0
  br i1 %tobool2.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body_crit_edge

land.rhs.do.body_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !38
  %15 = and i32 %14, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #5, !srcloc !30
  %bytes = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %18 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1645 = icmp sgt i32 %19, 0
  br i1 %cmp1645, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.046 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr20 = getelementptr i8, ptr %21, i32 8
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 %i.046
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr21) #5, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !41
  %arrayidx = getelementptr i8, ptr %ecc_code, i32 %i.046
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.046, 1
  %24 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bytes, align 4
  %cmp16 = icmp slt i32 %inc, %25
  br i1 %cmp16, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(9) %ecc_code, ptr noundef nonnull dereferenceable(9) @empty_block_ecc, i32 9) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp26 = icmp eq i32 %bcmp, 0
  br i1 %cmp26, label %if.then27, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then27:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  %26 = call ptr @memset(ptr %ecc_code, i32 255, i32 9)
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %for.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then27 ], [ 0, %for.end.cleanup_crit_edge ], [ -110, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4740_ecc_correct(ptr nocapture noundef readonly %ecc, ptr nocapture noundef readonly %params, ptr nocapture noundef %buf, ptr nocapture noundef readonly %ecc_code) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %base.i = getelementptr inbounds %struct.ingenic_ecc, ptr %ecc, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #5, !srcloc !30
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %5 = and i32 %4, -251658241
  %6 = or i32 %5, 117440512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !36
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #5, !srcloc !30
  %bytes = getelementptr inbounds %struct.ingenic_ecc_params, ptr %params, i32 0, i32 1
  %9 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bytes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp101 = icmp sgt i32 %10, 0
  br i1 %cmp101, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %i.0102 = phi i32 [ %inc, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !42
  tail call void @arm_heavy_mb() #5
  %arrayidx = getelementptr i8, ptr %ecc_code, i32 %i.0102
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx, align 1
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 8
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %i.0102
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr1, i8 %12) #5, !srcloc !43
  %inc = add nuw nsw i32 %i.0102, 1
  %15 = ptrtoint ptr %bytes to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bytes, align 4
  %cmp = icmp slt i32 %inc, %16
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  %20 = or i32 %19, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #5, !srcloc !30
  br label %do.body10

do.body10:                                        ; preds = %land.rhs.do.body10_crit_edge, %for.end
  %timeout.0 = phi i32 [ 1000, %for.end ], [ %dec, %land.rhs.do.body10_crit_edge ]
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr14 = getelementptr i8, ptr %24, i32 20
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14) #5, !srcloc !31
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !46
  %and = and i32 %26, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %if.end

land.rhs:                                         ; preds = %do.body10
  %dec = add nsw i32 %timeout.0, -1
  %tobool19.not = icmp eq i32 %dec, 0
  br i1 %tobool19.not, label %land.rhs.cleanup_crit_edge, label %land.rhs.do.body10_crit_edge

land.rhs.do.body10_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body10

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %do.body10
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %30 = and i32 %29, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  %31 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #5, !srcloc !30
  %and35 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end.cleanup_crit_edge, label %if.then37

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then37:                                        ; preds = %if.end
  %and38 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end41, label %if.then37.cleanup_crit_edge

if.then37.cleanup_crit_edge:                      ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.then37
  %shr = lshr i32 %26, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %26)
  %cmp44103.not = icmp ult i32 %26, 536870912
  br i1 %cmp44103.not, label %if.end41.cleanup_crit_edge, label %for.body45.preheader

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body45.preheader:                             ; preds = %if.end41
  %umax = call i32 @llvm.umax.i32(i32 %shr, i32 1)
  br label %for.body45

for.body45:                                       ; preds = %for.inc60.for.body45_crit_edge, %for.body45.preheader
  %i.1104 = phi i32 [ %inc61, %for.inc60.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %shl = shl i32 %i.1104, 2
  %add = add nuw nsw i32 %shl, 28
  %add.ptr49 = getelementptr i8, ptr %34, i32 %add
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !31
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %shr53 = lshr i32 %36, 16
  %and54 = and i32 %shr53, 511
  %sub = add nsw i32 %and54, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %cmp55.not = icmp eq i32 %and54, 0
  br i1 %cmp55.not, label %for.body45.for.inc60_crit_edge, label %land.lhs.true

for.body45.for.inc60_crit_edge:                   ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc60

land.lhs.true:                                    ; preds = %for.body45
  %37 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %params, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and54, i32 %38)
  %cmp56.not = icmp sgt i32 %and54, %38
  br i1 %cmp56.not, label %land.lhs.true.for.inc60_crit_edge, label %if.then57

land.lhs.true.for.inc60_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc60

if.then57:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %and.i = and i32 %sub, 7
  %shr.i97 = lshr i32 %sub, 3
  %add.i = add nuw nsw i32 %shr.i97, %sub
  %arrayidx.i = getelementptr i8, ptr %buf, i32 %add.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  %add1.i = add nuw nsw i32 %shr.i97, %and54
  %arrayidx2.i = getelementptr i8, ptr %buf, i32 %add1.i
  %41 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx2.i, align 1
  %conv3.i = zext i8 %42 to i32
  %shl.i = shl nuw nsw i32 %conv3.i, 8
  %conv4.i = zext i8 %40 to i32
  %or.i = or i32 %shl.i, %conv4.i
  %shr7.i = lshr i32 %or.i, %and.i
  %and8.i98 = xor i32 %shr7.i, %36
  %xor.i = and i32 %and8.i98, 511
  %shl9.i = shl nuw nsw i32 511, %and.i
  %neg.i = xor i32 %shl9.i, -1
  %and11.i = and i32 %or.i, %neg.i
  %shl13.i = shl nuw nsw i32 %xor.i, %and.i
  %conv17.i = or i32 %shl13.i, %and11.i
  %conv19.i = trunc i32 %conv17.i to i8
  store i8 %conv19.i, ptr %arrayidx.i, align 1
  %43 = lshr i32 %conv17.i, 8
  %conv24.i = trunc i32 %43 to i8
  store i8 %conv24.i, ptr %arrayidx2.i, align 1
  br label %for.inc60

for.inc60:                                        ; preds = %if.then57, %land.lhs.true.for.inc60_crit_edge, %for.body45.for.inc60_crit_edge
  %inc61 = add nuw nsw i32 %i.1104, 1
  %exitcond.not = icmp eq i32 %inc61, %umax
  br i1 %exitcond.not, label %for.inc60.cleanup_crit_edge, label %for.inc60.for.body45_crit_edge

for.inc60.for.body45_crit_edge:                   ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body45

for.inc60.cleanup_crit_edge:                      ; preds = %for.inc60
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc60.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.then37.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.rhs.cleanup_crit_edge
  %retval.0 = phi i32 [ -74, %if.then37.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %shr, %if.end41.cleanup_crit_edge ], [ %shr, %for.inc60.cleanup_crit_edge ], [ -110, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nofree nounwind readonly willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @__initcall__kmod_jz4740_ecc__170_193_jz4740_ecc_driver_init6, !1, !"__initcall__kmod_jz4740_ecc__170_193_jz4740_ecc_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 193, i32 1}
!2 = !{ptr @__exitcall_jz4740_ecc_driver_exit, !1, !"__exitcall_jz4740_ecc_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author171, !4, !"__UNIQUE_ID_author171", i1 false, i1 false}
!4 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 195, i32 1}
!5 = !{ptr @__UNIQUE_ID_description172, !6, !"__UNIQUE_ID_description172", i1 false, i1 false}
!6 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 196, i32 1}
!7 = !{ptr @__UNIQUE_ID_file173, !8, !"__UNIQUE_ID_file173", i1 false, i1 false}
!8 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 197, i32 1}
!9 = !{ptr @__UNIQUE_ID_license174, !8, !"__UNIQUE_ID_license174", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 189, i32 11}
!12 = !{ptr @jz4740_ecc_driver, !13, !"jz4740_ecc_driver", i1 false, i1 false}
!13 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 186, i32 31}
!14 = !{ptr @jz4740_ecc_dt_match, !15, !"jz4740_ecc_dt_match", i1 false, i1 false}
!15 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 180, i32 34}
!16 = !{ptr @jz4740_ecc_ops, !17, !"jz4740_ecc_ops", i1 false, i1 false}
!17 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 174, i32 37}
!18 = !{ptr @empty_block_ecc, !19, !"empty_block_ecc", i1 false, i1 false}
!19 = !{!"../drivers/mtd/nand/raw/ingenic/jz4740_ecc.c", i32 41, i32 22}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{i64 2152509434}
!30 = !{i64 4773976}
!31 = !{i64 4774394}
!32 = !{i64 2152510089}
!33 = !{i64 2152510389}
!34 = !{i64 2152502198}
!35 = !{i64 2152502853}
!36 = !{i64 2152503481}
!37 = !{i64 2152504142}
!38 = !{i64 2152504715}
!39 = !{i64 2152505015}
!40 = !{i64 4774174}
!41 = !{i64 2152505432}
!42 = !{i64 2152505662}
!43 = !{i64 4773779}
!44 = !{i64 2152506213}
!45 = !{i64 2152506513}
!46 = !{i64 2152507174}
!47 = !{i64 2152507747}
!48 = !{i64 2152508047}
!49 = !{i64 2152509218}
