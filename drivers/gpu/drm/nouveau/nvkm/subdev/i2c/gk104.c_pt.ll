; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/subdev/i2c/gk104.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/gk104.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_func = type { ptr, ptr, i32, ptr, ptr, ptr }
%struct.nvkm_i2c = type { ptr, %struct.nvkm_subdev, %struct.list_head, %struct.list_head, %struct.list_head, %struct.nvkm_event }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.132, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.anon.132 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }

@gk104_i2c = internal constant { %struct.nvkm_i2c_func, [40 x i8] } { %struct.nvkm_i2c_func { ptr @gf119_i2c_pad_x_new, ptr @gf119_i2c_pad_s_new, i32 4, ptr @gk104_aux_stat, ptr @gk104_aux_mask, ptr null }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [10 x i8] c"gk104_i2c\00", align 1
@___asan_gen_.2 = private constant [51 x i8] c"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/gk104.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 60, i32 1 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @gk104_i2c], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gk104_i2c to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_aux_stat(ptr nocapture noundef readonly %i2c, ptr nocapture noundef %hi, ptr nocapture noundef %lo, ptr nocapture noundef %rq, ptr nocapture noundef %tx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_i2c, ptr %i2c, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 56416
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !12
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 56424
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !13
  %and = and i32 %7, %4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx, align 4
  %9 = ptrtoint ptr %rq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %rq, align 4
  %10 = ptrtoint ptr %lo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %lo, align 4
  %11 = ptrtoint ptr %hi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hi, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.054 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %i.054, 2
  %shl = shl nuw nsw i32 1, %mul
  %and7 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool.not = icmp eq i32 %and7, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  %shl8 = shl nuw nsw i32 1, %i.054
  %12 = ptrtoint ptr %hi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hi, align 4
  %or = or i32 %13, %shl8
  store i32 %or, ptr %hi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %shl10 = shl nuw nsw i32 2, %mul
  %and11 = and i32 %shl10, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %shl14 = shl nuw nsw i32 1, %i.054
  %14 = ptrtoint ptr %lo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %lo, align 4
  %or15 = or i32 %15, %shl14
  store i32 %or15, ptr %lo, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %shl18 = shl nuw nsw i32 4, %mul
  %and19 = and i32 %shl18, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.if.end24_crit_edge, label %if.then21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #4
  %shl22 = shl nuw nsw i32 1, %i.054
  %16 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %rq, align 4
  %or23 = or i32 %17, %shl22
  store i32 %or23, ptr %rq, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %if.end16.if.end24_crit_edge
  %shl26 = shl nuw i32 8, %mul
  %and27 = and i32 %shl26, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end24.for.inc_crit_edge, label %if.then29

if.end24.for.inc_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  %shl30 = shl nuw nsw i32 1, %i.054
  %18 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx, align 4
  %or31 = or i32 %19, %shl30
  store i32 %or31, ptr %tx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then29, %if.end24.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.054, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !14
  tail call void @arm_heavy_mb() #2
  %20 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pri, align 4
  %add.ptr34 = getelementptr i8, ptr %21, i32 56416
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %4) #2, !srcloc !15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gk104_aux_mask(ptr nocapture noundef readonly %i2c, i32 noundef %type, i32 noundef %mask, i32 noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %device1 = getelementptr inbounds %struct.nvkm_i2c, ptr %i2c, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %device1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device1, align 4
  %pri = getelementptr inbounds %struct.nvkm_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pri, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 56424
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #2, !srcloc !11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !16
  %and = and i32 %mask, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then:                                          ; preds = %entry
  %and3 = and i32 %data, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.end

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %neg = xor i32 %type, -1
  %and7 = and i32 %4, %neg
  br label %for.inc

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %or = or i32 %4, %type
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then5, %entry.for.inc_crit_edge
  %temp.1 = phi i32 [ %or, %if.end ], [ %and7, %if.then5 ], [ %4, %entry.for.inc_crit_edge ]
  %and.1 = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  %and3.1 = and i32 %data, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.1)
  %tobool4.not.1 = icmp eq i32 %and3.1, 0
  %shl6.1 = shl i32 %type, 4
  br i1 %tobool4.not.1, label %if.then5.1, label %if.end.1

if.end.1:                                         ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #4
  %or.1 = or i32 %shl6.1, %temp.1
  br label %for.inc.1

if.then5.1:                                       ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #4
  %neg.1 = xor i32 %shl6.1, -1
  %and7.1 = and i32 %temp.1, %neg.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then5.1, %if.end.1, %for.inc.for.inc.1_crit_edge
  %temp.1.1 = phi i32 [ %or.1, %if.end.1 ], [ %and7.1, %if.then5.1 ], [ %temp.1, %for.inc.for.inc.1_crit_edge ]
  %and.2 = and i32 %mask, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  %and3.2 = and i32 %data, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.2)
  %tobool4.not.2 = icmp eq i32 %and3.2, 0
  %shl6.2 = shl i32 %type, 8
  br i1 %tobool4.not.2, label %if.then5.2, label %if.end.2

if.end.2:                                         ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #4
  %or.2 = or i32 %shl6.2, %temp.1.1
  br label %for.inc.2

if.then5.2:                                       ; preds = %if.then.2
  call void @__sanitizer_cov_trace_pc() #4
  %neg.2 = xor i32 %shl6.2, -1
  %and7.2 = and i32 %temp.1.1, %neg.2
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then5.2, %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %temp.1.2 = phi i32 [ %or.2, %if.end.2 ], [ %and7.2, %if.then5.2 ], [ %temp.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %mask, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  %and3.3 = and i32 %data, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.3)
  %tobool4.not.3 = icmp eq i32 %and3.3, 0
  %shl6.3 = shl i32 %type, 12
  br i1 %tobool4.not.3, label %if.then5.3, label %if.end.3

if.end.3:                                         ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #4
  %or.3 = or i32 %shl6.3, %temp.1.2
  br label %for.inc.3

if.then5.3:                                       ; preds = %if.then.3
  call void @__sanitizer_cov_trace_pc() #4
  %neg.3 = xor i32 %shl6.3, -1
  %and7.3 = and i32 %temp.1.2, %neg.3
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then5.3, %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %temp.1.3 = phi i32 [ %or.3, %if.end.3 ], [ %and7.3, %if.then5.3 ], [ %temp.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %mask, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  %and3.4 = and i32 %data, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.4)
  %tobool4.not.4 = icmp eq i32 %and3.4, 0
  %shl6.4 = shl i32 %type, 16
  br i1 %tobool4.not.4, label %if.then5.4, label %if.end.4

if.end.4:                                         ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #4
  %or.4 = or i32 %shl6.4, %temp.1.3
  br label %for.inc.4

if.then5.4:                                       ; preds = %if.then.4
  call void @__sanitizer_cov_trace_pc() #4
  %neg.4 = xor i32 %shl6.4, -1
  %and7.4 = and i32 %temp.1.3, %neg.4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then5.4, %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %temp.1.4 = phi i32 [ %or.4, %if.end.4 ], [ %and7.4, %if.then5.4 ], [ %temp.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %mask, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  %and3.5 = and i32 %data, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.5)
  %tobool4.not.5 = icmp eq i32 %and3.5, 0
  %shl6.5 = shl i32 %type, 20
  br i1 %tobool4.not.5, label %if.then5.5, label %if.end.5

if.end.5:                                         ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #4
  %or.5 = or i32 %shl6.5, %temp.1.4
  br label %for.inc.5

if.then5.5:                                       ; preds = %if.then.5
  call void @__sanitizer_cov_trace_pc() #4
  %neg.5 = xor i32 %shl6.5, -1
  %and7.5 = and i32 %temp.1.4, %neg.5
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then5.5, %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %temp.1.5 = phi i32 [ %or.5, %if.end.5 ], [ %and7.5, %if.then5.5 ], [ %temp.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %mask, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  %and3.6 = and i32 %data, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.6)
  %tobool4.not.6 = icmp eq i32 %and3.6, 0
  %shl6.6 = shl i32 %type, 24
  br i1 %tobool4.not.6, label %if.then5.6, label %if.end.6

if.end.6:                                         ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #4
  %or.6 = or i32 %shl6.6, %temp.1.5
  br label %for.inc.6

if.then5.6:                                       ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #4
  %neg.6 = xor i32 %shl6.6, -1
  %and7.6 = and i32 %temp.1.5, %neg.6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then5.6, %if.end.6, %for.inc.5.for.inc.6_crit_edge
  %temp.1.6 = phi i32 [ %or.6, %if.end.6 ], [ %and7.6, %if.then5.6 ], [ %temp.1.5, %for.inc.5.for.inc.6_crit_edge ]
  %and.7 = and i32 %mask, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.7

if.then.7:                                        ; preds = %for.inc.6
  %and3.7 = and i32 %data, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.7)
  %tobool4.not.7 = icmp eq i32 %and3.7, 0
  %shl6.7 = shl i32 %type, 28
  br i1 %tobool4.not.7, label %if.then5.7, label %if.end.7

if.end.7:                                         ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #4
  %or.7 = or i32 %shl6.7, %temp.1.6
  br label %for.inc.7

if.then5.7:                                       ; preds = %if.then.7
  call void @__sanitizer_cov_trace_pc() #4
  %neg.7 = xor i32 %shl6.7, -1
  %and7.7 = and i32 %temp.1.6, %neg.7
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then5.7, %if.end.7, %for.inc.6.for.inc.7_crit_edge
  %temp.1.7 = phi i32 [ %or.7, %if.end.7 ], [ %and7.7, %if.then5.7 ], [ %temp.1.6, %for.inc.6.for.inc.7_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #2, !srcloc !17
  tail call void @arm_heavy_mb() #2
  %5 = ptrtoint ptr %pri to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pri, align 4
  %add.ptr12 = getelementptr i8, ptr %6, i32 56424
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %temp.1.7) #2, !srcloc !15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gk104_i2c_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pi2c) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nvkm_i2c_new_(ptr noundef nonnull @gk104_i2c, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %pi2c) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_i2c_pad_x_new(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gf119_i2c_pad_s_new(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @gk104_i2c, !1, !"gk104_i2c", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/subdev/i2c/gk104.c", i32 60, i32 1}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{i64 5389072}
!12 = !{i64 2156231775}
!13 = !{i64 2156232160}
!14 = !{i64 2156232490}
!15 = !{i64 5388654}
!16 = !{i64 2156232940}
!17 = !{i64 2156233270}
