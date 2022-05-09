; ModuleID = '/llk/IR_all_yes/drivers/crypto/keembay/ocs-aes.c_pt.bc'
source_filename = "../drivers/crypto/keembay/ocs-aes.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ocs_aes_dev = type { %struct.list_head, ptr, i32, ptr, %struct.completion, i32, ptr }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ocs_dll_desc = type { ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.ocs_dma_linked_list = type { i32, i32, i32, i32 }

@ocs_aes_set_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 488, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%d-bit keys not supported by AES cipher\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ocs_aes_set_key\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/keembay/ocs-aes.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ocs_aes_set_key._entry_ptr = internal global ptr @ocs_aes_set_key._entry, section ".printk_index", align 4
@ocs_aes_set_key._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 495, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%d-bit keys not supported for SM4 cipher\0A\00", [54 x i8] zeroinitializer }, align 32
@ocs_aes_set_key._entry_ptr.7 = internal global ptr @ocs_aes_set_key._entry.5, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 32]
@__sancov_gen_cov_switch_values.8 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.9 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.10 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 6, i64 7, i64 9]
@__sancov_gen_cov_switch_values.11 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 486, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.35 = private constant [36 x i8] c"../drivers/crypto/keembay/ocs-aes.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 493, i32 3 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @ocs_aes_set_key._entry, ptr @ocs_aes_set_key._entry.5, ptr @ocs_aes_set_key._entry_ptr, ptr @ocs_aes_set_key._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_aes_set_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocs_aes_set_key._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_aes_irq_handler(i32 noundef %irq, ptr noundef %dev_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_reg = getelementptr inbounds %struct.ocs_aes_dev, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1152
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  tail call fastcc void @aes_irq_disable(ptr noundef %dev_id)
  %3 = and i32 %2, -67043328
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %dma_err_mask = getelementptr inbounds %struct.ocs_aes_dev, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %dma_err_mask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dma_err_mask, align 4
  %irq_completion = getelementptr inbounds %struct.ocs_aes_dev, ptr %dev_id, i32 0, i32 4
  tail call void @complete(ptr noundef %irq_completion) #8
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aes_irq_disable(ptr nocapture noundef readonly %aes_dev) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base_reg = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %0 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !24
  %2 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_reg, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !24
  %4 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base_reg, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 1152
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_reg, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 1152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %6) #8, !srcloc !24
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base_reg, align 4
  %add.ptr8 = getelementptr i8, ptr %10, i32 1160
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool10.not = icmp eq i32 %11, 0
  br i1 %tobool10.not, label %if.end.if.end14_crit_edge, label %if.then11

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_reg, align 4
  %add.ptr13 = getelementptr i8, ptr %13, i32 1160
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %11) #8, !srcloc !24
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end.if.end14_crit_edge
  %14 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_reg, align 4
  %add.ptr16 = getelementptr i8, ptr %15, i32 92
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.end14.if.end22_crit_edge, label %if.then19

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_reg, align 4
  %add.ptr21 = getelementptr i8, ptr %18, i32 92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %16) #8, !srcloc !24
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end14.if.end22_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_aes_set_key(ptr nocapture noundef readonly %aes_dev, i32 noundef %key_size, ptr noundef readonly %key, i32 noundef %cipher) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cipher)
  %cmp.not = icmp eq i32 %cipher, 0
  br i1 %cmp.not, label %switch.early.test, label %if.end

switch.early.test:                                ; preds = %entry
  %0 = zext i32 %key_size to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %key_size, label %do.end [
    i32 32, label %switch.early.test.if.end12_crit_edge
    i32 16, label %switch.early.test.if.end12_crit_edge45
  ]

switch.early.test.if.end12_crit_edge45:           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

switch.early.test.if.end12_crit_edge:             ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end:                                           ; preds = %switch.early.test
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %mul = shl i32 %key_size, 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef %mul) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cipher)
  %cmp3 = icmp ne i32 %cipher, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %key_size)
  %cmp5.not = icmp eq i32 %key_size, 16
  %or.cond39 = or i1 %cmp5.not, %cmp3
  br i1 %or.cond39, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev10 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 1
  %3 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev10, align 4
  %mul11 = shl i32 %key_size, 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6, i32 noundef %mul11) #11
  br label %cleanup

if.end12:                                         ; preds = %if.end.if.end12_crit_edge, %switch.early.test.if.end12_crit_edge, %switch.early.test.if.end12_crit_edge45
  %tobool.not = icmp eq ptr %key, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %for.cond.preheader

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %key_size)
  %cmp1543.not = icmp ult i32 %key_size, 4
  br i1 %cmp1543.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div37 = lshr i32 %key_size, 2
  %base_reg = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %key, i32 %i.044
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 4
  %mul16 = shl i32 %i.044, 2
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 %mul16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %9) #8, !srcloc !24
  %inc = add nuw nsw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %div37
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %key_size)
  %cmp18.not = icmp eq i32 %key_size, 16
  %base_reg19 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %10 = ptrtoint ptr %base_reg19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_reg19, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %12 = select i1 %cmp18.not, i32 0, i32 16777216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #8, !srcloc !24
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end12.cleanup_crit_edge, %do.end9, %do.end
  %retval.0 = phi i32 [ -22, %do.end9 ], [ 0, %for.end ], [ -22, %do.end ], [ -22, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_aes_op(ptr noundef %aes_dev, i32 noundef %mode, i32 noundef %cipher, i32 noundef %instruction, i32 noundef %dst_dma_list, i32 noundef %src_dma_list, i32 noundef %src_size, ptr noundef %iv, i32 noundef %iv_size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @ocs_aes_validate_inputs(i32 noundef %src_dma_list, i32 noundef %src_size, ptr noundef %iv, i32 noundef %iv_size, i32 noundef 0, i32 noundef 0, ptr noundef null, i32 noundef 0, i32 noundef %cipher, i32 noundef %mode, i32 noundef %instruction, i32 noundef %dst_dma_list)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = and i32 %mode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %0)
  %switch = icmp eq i32 %0, 6
  br i1 %switch, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call fastcc void @aes_irq_disable(ptr noundef %aes_dev) #8
  %base_reg.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %1 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16318464) #8, !srcloc !24
  %shl.i.i = shl i32 %cipher, 14
  %shl1.i.i = shl i32 %mode, 8
  %shl2.i.i = shl i32 %instruction, 6
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %or3.i.i = or i32 %or.i.i, %shl2.i.i
  %or4.i.i = or i32 %or3.i.i, 12
  %3 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %5) #8, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %mode)
  %cmp4 = icmp eq i32 %mode, 9
  br i1 %cmp4, label %if.end6.thread, label %if.end6

if.end6.thread:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %cmp.i = icmp eq i32 %src_size, 0
  %rem.i = and i32 %src_size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %6 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %rem.op.i = shl nuw nsw i32 %rem.i, 24
  %spec.store.select.op.i = select i1 %cmp1.i, i32 268435456, i32 %rem.op.i
  %8 = select i1 %cmp.i, i32 0, i32 %spec.store.select.op.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #8, !srcloc !24
  br label %if.then8

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode)
  %cmp7.not = icmp eq i32 %mode, 0
  br i1 %cmp7.not, label %if.end6.if.end18_crit_edge, label %if.end6.if.then8_crit_edge

if.end6.if.then8_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then8

if.end6.if.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then8:                                         ; preds = %if.end6.if.then8_crit_edge, %if.end6.thread
  %9 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %iv, align 4
  %11 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %13 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !24
  %arrayidx9 = getelementptr i32, ptr %iv, i32 1
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  %16 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr11 = getelementptr i8, ptr %17, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %15) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %18) #8, !srcloc !24
  %arrayidx12 = getelementptr i32, ptr %iv, i32 2
  %19 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx12, align 4
  %21 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %23 = tail call i32 @llvm.bswap.i32(i32 %20) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %23) #8, !srcloc !24
  %arrayidx15 = getelementptr i32, ptr %iv, i32 3
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx15, align 4
  %26 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr17 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %25) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %28) #8, !srcloc !24
  br label %if.end18

if.end18:                                         ; preds = %if.then8, %if.end6.if.end18_crit_edge
  %29 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i86 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i86, i32 16777216) #8, !srcloc !24
  %31 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %32, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 0) #8, !srcloc !24
  %33 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %34, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %src_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %35) #8, !srcloc !24
  %36 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %37, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 0) #8, !srcloc !24
  %38 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i91 = getelementptr i8, ptr %39, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %40 = tail call i32 @llvm.bswap.i32(i32 %dst_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i91, i32 %40) #8, !srcloc !24
  %41 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %42, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 131) #8, !srcloc !24
  %43 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %44, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  br i1 %cmp4, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 65536) #8, !srcloc !24
  br label %if.end21

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i95, i32 33554432) #8, !srcloc !24
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  %irq_completion.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %45 = ptrtoint ptr %irq_completion.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %irq_completion.i, align 4
  %46 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i99 = getelementptr i8, ptr %47, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i99, i32 -67043328) #8, !srcloc !24
  %48 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %49, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 33554432) #8, !srcloc !24
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end21
  %dma_err_mask.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %50 = ptrtoint ptr %dma_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool2.not.i = icmp eq i32 %51, 0
  br i1 %tobool2.not.i, label %if.end25, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp26 = icmp eq i32 %mode, 2
  br i1 %cmp26, label %if.then27, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr29 = getelementptr i8, ptr %53, i32 36
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #8, !srcloc !21
  %55 = tail call i32 @llvm.bswap.i32(i32 %54) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %56 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %iv, align 4
  %57 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr33 = getelementptr i8, ptr %58, i32 40
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #8, !srcloc !21
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %arrayidx35 = getelementptr i32, ptr %iv, i32 1
  %61 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %arrayidx35, align 4
  %62 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr37 = getelementptr i8, ptr %63, i32 44
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr37) #8, !srcloc !21
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %arrayidx39 = getelementptr i32, ptr %iv, i32 2
  %66 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %65, ptr %arrayidx39, align 4
  %67 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr41 = getelementptr i8, ptr %68, i32 48
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #8, !srcloc !21
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %arrayidx43 = getelementptr i32, ptr %iv, i32 3
  %71 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %arrayidx43, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end25.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then27 ], [ 0, %if.end25.cleanup_crit_edge ], [ %call.i, %if.end21.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @ocs_aes_validate_inputs(i32 noundef %src_dma_list, i32 noundef %src_size, ptr noundef readonly %iv, i32 noundef %iv_size, i32 noundef %aad_dma_list, i32 noundef %aad_size, ptr noundef readnone %tag, i32 noundef %tag_size, i32 noundef %cipher, i32 noundef %mode, i32 noundef %instruction, i32 noundef %dst_dma_list) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cipher)
  %switch = icmp ult i32 %cipher, 2
  br i1 %switch, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  %0 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %mode, label %if.end.return_crit_edge [
    i32 0, label %if.end.if.end13_crit_edge
    i32 1, label %if.end.if.end13_crit_edge225
    i32 2, label %if.end.if.end13_crit_edge226
    i32 6, label %if.end.if.end13_crit_edge227
    i32 7, label %if.end.if.end13_crit_edge228
    i32 9, label %if.end.if.end13_crit_edge229
  ]

if.end.if.end13_crit_edge229:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.if.end13_crit_edge228:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.if.end13_crit_edge227:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.if.end13_crit_edge226:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.if.end13_crit_edge225:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %if.end.if.end13_crit_edge225, %if.end.if.end13_crit_edge226, %if.end.if.end13_crit_edge227, %if.end.if.end13_crit_edge228, %if.end.if.end13_crit_edge229
  %1 = zext i32 %instruction to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %instruction, label %if.end13.return_crit_edge [
    i32 3, label %if.then24
    i32 0, label %if.end13.if.end30_crit_edge
    i32 1, label %if.end13.if.end30_crit_edge230
    i32 2, label %if.end13.if.end30_crit_edge231
  ]

if.end13.if.end30_crit_edge231:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end13.if.end30_crit_edge230:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end13.if.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end13.return_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then24:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp25 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp27 = icmp eq i32 %dst_dma_list, -1
  %or.cond = or i1 %cmp25, %cmp27
  %spec.select = select i1 %or.cond, i32 -22, i32 0
  br label %return

if.end30:                                         ; preds = %if.end13.if.end30_crit_edge, %if.end13.if.end30_crit_edge230, %if.end13.if.end30_crit_edge231
  %2 = zext i32 %mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %mode, label %if.end30.return_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb39
    i32 2, label %sw.bb53
    i32 9, label %sw.bb67
    i32 7, label %sw.bb81
    i32 6, label %sw.bb105
  ]

if.end30.return_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %if.end30
  %rem = and i32 %src_size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp31.not = icmp eq i32 %rem, 0
  br i1 %cmp31.not, label %if.end33, label %sw.bb.return_crit_edge

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end33:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp34 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp36 = icmp eq i32 %dst_dma_list, -1
  %or.cond202 = or i1 %cmp34, %cmp36
  %spec.select218 = select i1 %or.cond202, i32 -22, i32 0
  br label %return

sw.bb39:                                          ; preds = %if.end30
  %rem40 = and i32 %src_size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem40)
  %cmp41.not = icmp eq i32 %rem40, 0
  br i1 %cmp41.not, label %if.end43, label %sw.bb39.return_crit_edge

sw.bb39.return_crit_edge:                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end43:                                         ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp44 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp46 = icmp eq i32 %dst_dma_list, -1
  %or.cond203 = or i1 %cmp44, %cmp46
  br i1 %or.cond203, label %if.end43.return_crit_edge, label %if.end48

if.end43.return_crit_edge:                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp ne ptr %iv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %iv_size)
  %cmp50.not = icmp eq i32 %iv_size, 16
  %or.cond204 = and i1 %tobool.not, %cmp50.not
  %spec.select219 = select i1 %or.cond204, i32 0, i32 -22
  br label %return

sw.bb53:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %cmp54 = icmp eq i32 %src_size, 0
  br i1 %cmp54, label %sw.bb53.return_crit_edge, label %if.end56

sw.bb53.return_crit_edge:                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end56:                                         ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp57 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp59 = icmp eq i32 %dst_dma_list, -1
  %or.cond205 = or i1 %cmp57, %cmp59
  br i1 %or.cond205, label %if.end56.return_crit_edge, label %if.end61

if.end56.return_crit_edge:                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %tobool62.not = icmp ne ptr %iv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %iv_size)
  %cmp64.not = icmp eq i32 %iv_size, 16
  %or.cond206 = and i1 %tobool62.not, %cmp64.not
  %spec.select220 = select i1 %or.cond206, i32 0, i32 -22
  br label %return

sw.bb67:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %src_size)
  %cmp68 = icmp ult i32 %src_size, 16
  br i1 %cmp68, label %sw.bb67.return_crit_edge, label %if.end70

sw.bb67.return_crit_edge:                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end70:                                         ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp71 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp73 = icmp eq i32 %dst_dma_list, -1
  %or.cond207 = or i1 %cmp71, %cmp73
  br i1 %or.cond207, label %if.end70.return_crit_edge, label %if.end75

if.end70.return_crit_edge:                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end75:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  %tobool76.not = icmp ne ptr %iv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %iv_size)
  %cmp78.not = icmp eq i32 %iv_size, 16
  %or.cond208 = and i1 %tobool76.not, %cmp78.not
  %spec.select221 = select i1 %or.cond208, i32 0, i32 -22
  br label %return

sw.bb81:                                          ; preds = %if.end30
  %tobool82.not = icmp ne ptr %iv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %iv_size)
  %cmp84.not = icmp eq i32 %iv_size, 12
  %or.cond209 = and i1 %tobool82.not, %cmp84.not
  br i1 %or.cond209, label %if.end86, label %sw.bb81.return_crit_edge

sw.bb81.return_crit_edge:                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end86:                                         ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool87.not = icmp eq i32 %src_size, 0
  br i1 %tobool87.not, label %if.end86.if.end93_crit_edge, label %land.lhs.true88

if.end86.if.end93_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true88:                                  ; preds = %if.end86
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp89 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp91 = icmp eq i32 %dst_dma_list, -1
  %or.cond210 = or i1 %cmp89, %cmp91
  br i1 %or.cond210, label %land.lhs.true88.return_crit_edge, label %land.lhs.true88.if.end93_crit_edge

land.lhs.true88.if.end93_crit_edge:               ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93

land.lhs.true88.return_crit_edge:                 ; preds = %land.lhs.true88
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end93:                                         ; preds = %land.lhs.true88.if.end93_crit_edge, %if.end86.if.end93_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aad_size)
  %tobool94.not = icmp ne i32 %aad_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %aad_dma_list)
  %cmp96 = icmp eq i32 %aad_dma_list, -1
  %or.cond211 = and i1 %cmp96, %tobool94.not
  %tobool99.not = icmp eq ptr %tag, null
  %or.cond222 = or i1 %or.cond211, %tobool99.not
  br i1 %or.cond222, label %if.end93.return_crit_edge, label %if.end101

if.end93.return_crit_edge:                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end101:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tag_size)
  %cmp102 = icmp ugt i32 %tag_size, 16
  %. = select i1 %cmp102, i32 -22, i32 0
  br label %return

sw.bb105:                                         ; preds = %if.end30
  %tobool106.not = icmp ne ptr %iv, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %iv_size)
  %cmp108.not = icmp eq i32 %iv_size, 16
  %or.cond212 = and i1 %tobool106.not, %cmp108.not
  br i1 %or.cond212, label %if.end110, label %sw.bb105.return_crit_edge

sw.bb105.return_crit_edge:                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end110:                                        ; preds = %sw.bb105
  %3 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %iv, align 1
  %5 = add i8 %4, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %5)
  %6 = icmp ult i8 %5, -7
  br i1 %6, label %if.end110.return_crit_edge, label %if.end119

if.end110.return_crit_edge:                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end119:                                        ; preds = %if.end110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aad_size)
  %tobool120.not = icmp ne i32 %aad_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %aad_dma_list)
  %cmp122 = icmp eq i32 %aad_dma_list, -1
  %or.cond214 = and i1 %cmp122, %tobool120.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tag_size)
  %cmp126 = icmp ugt i32 %tag_size, 16
  %or.cond223 = or i1 %or.cond214, %cmp126
  br i1 %or.cond223, label %if.end119.return_crit_edge, label %if.end129

if.end119.return_crit_edge:                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end129:                                        ; preds = %if.end119
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %instruction)
  %cmp130 = icmp eq i32 %instruction, 1
  br i1 %cmp130, label %if.then132, label %if.end145

if.then132:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool133.not = icmp eq i32 %src_size, 0
  br i1 %tobool133.not, label %if.then132.if.end141_crit_edge, label %land.lhs.true134

if.then132.if.end141_crit_edge:                   ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

land.lhs.true134:                                 ; preds = %if.then132
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp135 = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp138 = icmp eq i32 %dst_dma_list, -1
  %or.cond215 = or i1 %cmp135, %cmp138
  br i1 %or.cond215, label %land.lhs.true134.return_crit_edge, label %land.lhs.true134.if.end141_crit_edge

land.lhs.true134.if.end141_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end141

land.lhs.true134.return_crit_edge:                ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end141:                                        ; preds = %land.lhs.true134.if.end141_crit_edge, %if.then132.if.end141_crit_edge
  %tobool142.not = icmp eq ptr %tag, null
  %.216 = select i1 %tobool142.not, i32 -22, i32 0
  br label %return

if.end145:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp146 = icmp eq i32 %dst_dma_list, -1
  br i1 %cmp146, label %if.end145.return_crit_edge, label %if.end149

if.end145.return_crit_edge:                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end149:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool150.not = icmp ne i32 %src_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp152 = icmp eq i32 %src_dma_list, -1
  %or.cond217 = and i1 %cmp152, %tobool150.not
  %spec.select224 = select i1 %or.cond217, i32 -22, i32 0
  br label %return

return:                                           ; preds = %if.end149, %if.end145.return_crit_edge, %if.end141, %land.lhs.true134.return_crit_edge, %if.end119.return_crit_edge, %if.end110.return_crit_edge, %sw.bb105.return_crit_edge, %if.end101, %if.end93.return_crit_edge, %land.lhs.true88.return_crit_edge, %sw.bb81.return_crit_edge, %if.end75, %if.end70.return_crit_edge, %sw.bb67.return_crit_edge, %if.end61, %if.end56.return_crit_edge, %sw.bb53.return_crit_edge, %if.end48, %if.end43.return_crit_edge, %sw.bb39.return_crit_edge, %if.end33, %sw.bb.return_crit_edge, %if.end30.return_crit_edge, %if.then24, %if.end13.return_crit_edge, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %if.end13.return_crit_edge ], [ -22, %sw.bb.return_crit_edge ], [ -22, %sw.bb39.return_crit_edge ], [ -22, %if.end43.return_crit_edge ], [ -22, %sw.bb53.return_crit_edge ], [ -22, %if.end56.return_crit_edge ], [ -22, %sw.bb67.return_crit_edge ], [ -22, %if.end70.return_crit_edge ], [ -22, %sw.bb81.return_crit_edge ], [ -22, %land.lhs.true88.return_crit_edge ], [ -22, %if.end93.return_crit_edge ], [ %., %if.end101 ], [ -22, %sw.bb105.return_crit_edge ], [ -22, %if.end110.return_crit_edge ], [ -22, %if.end119.return_crit_edge ], [ -22, %land.lhs.true134.return_crit_edge ], [ %.216, %if.end141 ], [ -22, %if.end145.return_crit_edge ], [ -22, %if.end30.return_crit_edge ], [ %spec.select, %if.then24 ], [ %spec.select218, %if.end33 ], [ %spec.select219, %if.end48 ], [ %spec.select220, %if.end61 ], [ %spec.select221, %if.end75 ], [ %spec.select224, %if.end149 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_aes_gcm_op(ptr noundef %aes_dev, i32 noundef %cipher, i32 noundef %instruction, i32 noundef %dst_dma_list, i32 noundef %src_dma_list, i32 noundef %src_size, ptr noundef readonly %iv, i32 noundef %aad_dma_list, i32 noundef %aad_size, ptr noundef writeonly %out_tag, i32 noundef %tag_size) local_unnamed_addr #0 align 64 {
entry:
  %tag_u32.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cipher)
  %switch.i = icmp ult i32 %cipher, 2
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = zext i32 %instruction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %instruction, label %if.end.i.cleanup_crit_edge [
    i32 3, label %if.then24.i
    i32 0, label %if.end.i.if.end30.i_crit_edge
    i32 1, label %if.end.i.if.end30.i_crit_edge143
    i32 2, label %if.end.i.if.end30.i_crit_edge144
  ]

if.end.i.if.end30.i_crit_edge144:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.if.end30.i_crit_edge143:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp25.i = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp27.i = icmp eq i32 %dst_dma_list, -1
  %or.cond.i = or i1 %cmp27.i, %cmp25.i
  br i1 %or.cond.i, label %if.then24.i.cleanup_crit_edge, label %if.then24.i.if.end_crit_edge

if.then24.i.if.end_crit_edge:                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %if.end.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge143, %if.end.i.if.end30.i_crit_edge144
  %tobool82.not.i.not = icmp eq ptr %iv, null
  br i1 %tobool82.not.i.not, label %if.end30.i.cleanup_crit_edge, label %if.end86.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end86.i:                                       ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool87.not.i = icmp eq i32 %src_size, 0
  br i1 %tobool87.not.i, label %if.end86.i.if.end93.i_crit_edge, label %land.lhs.true88.i

if.end86.i.if.end93.i_crit_edge:                  ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i

land.lhs.true88.i:                                ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp89.i = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp91.i = icmp eq i32 %dst_dma_list, -1
  %or.cond210.i = or i1 %cmp91.i, %cmp89.i
  br i1 %or.cond210.i, label %land.lhs.true88.i.cleanup_crit_edge, label %land.lhs.true88.i.if.end93.i_crit_edge

land.lhs.true88.i.if.end93.i_crit_edge:           ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i

land.lhs.true88.i.cleanup_crit_edge:              ; preds = %land.lhs.true88.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end93.i:                                       ; preds = %land.lhs.true88.i.if.end93.i_crit_edge, %if.end86.i.if.end93.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aad_size)
  %tobool94.not.i = icmp ne i32 %aad_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %aad_dma_list)
  %cmp96.i = icmp eq i32 %aad_dma_list, -1
  %or.cond211.i = and i1 %cmp96.i, %tobool94.not.i
  %tobool99.not.i = icmp eq ptr %out_tag, null
  %or.cond222.i = or i1 %or.cond211.i, %tobool99.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tag_size)
  %cmp102.i = icmp ugt i32 %tag_size, 16
  %or.cond = or i1 %or.cond222.i, %cmp102.i
  br i1 %or.cond, label %if.end93.i.cleanup_crit_edge, label %if.end93.i.if.end_crit_edge

if.end93.i.if.end_crit_edge:                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end93.i.cleanup_crit_edge:                     ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end93.i.if.end_crit_edge, %if.then24.i.if.end_crit_edge
  tail call fastcc void @aes_irq_disable(ptr noundef %aes_dev) #8
  %base_reg.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %1 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16318464) #8, !srcloc !24
  %shl.i.i = shl nuw nsw i32 %cipher, 14
  %shl2.i.i = shl nuw nsw i32 %instruction, 6
  %or.i.i = or i32 %shl.i.i, %shl2.i.i
  %or4.i.i = or i32 %or.i.i, 1804
  %3 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %5) #8, !srcloc !24
  %6 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #8, !srcloc !24
  %arrayidx.i = getelementptr i32, ptr %iv, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %10 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %9) #8, !srcloc !24
  %arrayidx3.i = getelementptr i32, ptr %iv, i32 1
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %14 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %13) #8, !srcloc !24
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %iv, align 4
  %18 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 %17) #8, !srcloc !24
  %20 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %22 = tail call i32 @llvm.bswap.i32(i32 %tag_size) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #8, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %cmp.i = icmp eq i32 %src_size, 0
  %rem.i = and i32 %src_size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %23 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %24, i32 788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %rem.op.i = shl nuw nsw i32 %rem.i, 24
  %spec.store.select.op.i = select i1 %cmp1.i, i32 268435456, i32 %rem.op.i
  %25 = select i1 %cmp.i, i32 0, i32 %spec.store.select.op.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83, i32 %25) #8, !srcloc !24
  %mul = shl i32 %src_size, 3
  %26 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr3 = getelementptr i8, ptr %27, i32 544
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %28 = tail call i32 @llvm.bswap.i32(i32 %mul) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %28) #8, !srcloc !24
  %29 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr6 = getelementptr i8, ptr %30, i32 548
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %31 = lshr i32 %src_size, 5
  %32 = and i32 %31, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %32) #8, !srcloc !24
  %mul8 = shl i32 %aad_size, 3
  %33 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr12 = getelementptr i8, ptr %34, i32 552
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %35 = tail call i32 @llvm.bswap.i32(i32 %mul8) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 %35) #8, !srcloc !24
  %36 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr16 = getelementptr i8, ptr %37, i32 556
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %38 = lshr i32 %aad_size, 5
  %39 = and i32 %38, 117440512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %39) #8, !srcloc !24
  %40 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i85 = getelementptr i8, ptr %41, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85, i32 16777216) #8, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aad_size)
  %tobool17.not = icmp eq i32 %aad_size, 0
  %42 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base_reg.i.i, align 4
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end
  %add.ptr.i87 = getelementptr i8, ptr %43, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 0) #8, !srcloc !24
  %44 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i88 = getelementptr i8, ptr %45, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %46 = tail call i32 @llvm.bswap.i32(i32 %aad_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i88, i32 %46) #8, !srcloc !24
  %47 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %48, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 130) #8, !srcloc !24
  %49 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %50, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 196608) #8, !srcloc !24
  %irq_completion.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %51 = ptrtoint ptr %irq_completion.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %irq_completion.i, align 4
  %52 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %53, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i, i32 0) #8, !srcloc !24
  %54 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr11.i.i = getelementptr i8, ptr %55, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i, i32 -50266112) #8, !srcloc !24
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i94, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i94:                                       ; preds = %if.then18
  %dma_err_mask.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %56 = ptrtoint ptr %dma_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool2.not.i = icmp eq i32 %57, 0
  br i1 %tobool2.not.i, label %if.end.i94.do.body.i.preheader_crit_edge, label %if.end.i94.cleanup_crit_edge

if.end.i94.cleanup_crit_edge:                     ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i94.do.body.i.preheader_crit_edge:         ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.preheader

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i97 = getelementptr i8, ptr %43, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i97, i32 196608) #8, !srcloc !24
  br label %do.body.i.preheader

do.body.i.preheader:                              ; preds = %if.else, %if.end.i94.do.body.i.preheader_crit_edge
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.i.preheader
  %58 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %59, i32 52
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %61 = and i32 %60, 65536
  %tobool.not.i100 = icmp eq i32 %61, 0
  br i1 %tobool.not.i100, label %do.body.i.do.body.i104_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

do.body.i.do.body.i104_crit_edge:                 ; preds = %do.body.i
  br label %do.body.i104

do.body.i104:                                     ; preds = %do.body.i104.do.body.i104_crit_edge, %do.body.i.do.body.i104_crit_edge
  %62 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i102 = getelementptr i8, ptr %63, i32 1064
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i102) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %65 = and i32 %64, -16580608
  %tobool.not.i103 = icmp eq i32 %65, 0
  br i1 %tobool.not.i103, label %aes_a_dma_wait_input_buffer_occupancy.exit, label %do.body.i104.do.body.i104_crit_edge

do.body.i104.do.body.i104_crit_edge:              ; preds = %do.body.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i104

aes_a_dma_wait_input_buffer_occupancy.exit:       ; preds = %do.body.i104
  %66 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %67, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 0) #8
  %68 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_reg.i.i, align 4
  br i1 %cmp.i, label %if.else26, label %if.then25

if.then25:                                        ; preds = %aes_a_dma_wait_input_buffer_occupancy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i107 = getelementptr i8, ptr %69, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %70 = tail call i32 @llvm.bswap.i32(i32 %src_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i107, i32 %70) #8, !srcloc !24
  %71 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %72, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i109, i32 0) #8, !srcloc !24
  %73 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i110 = getelementptr i8, ptr %74, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %75 = tail call i32 @llvm.bswap.i32(i32 %dst_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i110, i32 %75) #8, !srcloc !24
  %76 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %77, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i112, i32 131) #8, !srcloc !24
  br label %if.end27

if.else26:                                        ; preds = %aes_a_dma_wait_input_buffer_occupancy.exit
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i115 = getelementptr i8, ptr %69, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i115, i32 0) #8, !srcloc !24
  %78 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %79, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i117, i32 128) #8, !srcloc !24
  br label %if.end27

if.end27:                                         ; preds = %if.else26, %if.then25
  %80 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %81, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 65536) #8, !srcloc !24
  %irq_completion.i120 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %82 = ptrtoint ptr %irq_completion.i120 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %irq_completion.i120, align 4
  %83 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i122 = getelementptr i8, ptr %84, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i122, i32 -67043328) #8, !srcloc !24
  %85 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %86, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 33554432) #8, !srcloc !24
  %call.i123 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %tobool.not.i124 = icmp eq i32 %call.i123, 0
  br i1 %tobool.not.i124, label %if.end.i128, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i128:                                      ; preds = %if.end27
  %dma_err_mask.i125 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %87 = ptrtoint ptr %dma_err_mask.i125 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_err_mask.i125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool2.not.i126 = icmp eq i32 %88, 0
  br i1 %tobool2.not.i126, label %if.end31, label %if.end.i128.cleanup_crit_edge

if.end.i128.cleanup_crit_edge:                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end31:                                         ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag_u32.i)
  %89 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i132 = getelementptr i8, ptr %90, i32 784
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i132) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %92 = ptrtoint ptr %tag_u32.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %91, ptr %tag_u32.i, align 4
  %93 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i133 = getelementptr i8, ptr %94, i32 780
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i133) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %tag_u32.i.4.tag_u32.i.4.tag_u32.4.tag_u32.4.tag_u32.4..sroa_idx = getelementptr inbounds i8, ptr %tag_u32.i, i32 4
  %96 = ptrtoint ptr %tag_u32.i.4.tag_u32.i.4.tag_u32.4.tag_u32.4.tag_u32.4..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %95, ptr %tag_u32.i.4.tag_u32.i.4.tag_u32.4.tag_u32.4.tag_u32.4..sroa_idx, align 4
  %97 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr6.i = getelementptr i8, ptr %98, i32 776
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6.i) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %tag_u32.i.8.tag_u32.i.8.tag_u32.8.tag_u32.8.tag_u32.8..sroa_idx = getelementptr inbounds i8, ptr %tag_u32.i, i32 8
  %100 = ptrtoint ptr %tag_u32.i.8.tag_u32.i.8.tag_u32.8.tag_u32.8.tag_u32.8..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %tag_u32.i.8.tag_u32.i.8.tag_u32.8.tag_u32.8.tag_u32.8..sroa_idx, align 4
  %101 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr10.i = getelementptr i8, ptr %102, i32 772
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %tag_u32.i.12.tag_u32.i.12.tag_u32.12.tag_u32.12.tag_u32.12..sroa_idx = getelementptr inbounds i8, ptr %tag_u32.i, i32 12
  %104 = ptrtoint ptr %tag_u32.i.12.tag_u32.i.12.tag_u32.12.tag_u32.12.tag_u32.12..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %tag_u32.i.12.tag_u32.i.12.tag_u32.12.tag_u32.12.tag_u32.12..sroa_idx, align 4
  %105 = call ptr @memcpy(ptr %out_tag, ptr %tag_u32.i, i32 %tag_size)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag_u32.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %if.end.i128.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end.i94.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.end93.i.cleanup_crit_edge, %land.lhs.true88.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end31 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end30.i.cleanup_crit_edge ], [ -22, %land.lhs.true88.i.cleanup_crit_edge ], [ -22, %if.end93.i.cleanup_crit_edge ], [ -22, %if.then24.i.cleanup_crit_edge ], [ %call.i, %if.then18.cleanup_crit_edge ], [ -5, %if.end.i94.cleanup_crit_edge ], [ %call.i123, %if.end27.cleanup_crit_edge ], [ -5, %if.end.i128.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_aes_ccm_op(ptr noundef %aes_dev, i32 noundef %cipher, i32 noundef %instruction, i32 noundef %dst_dma_list, i32 noundef %src_dma_list, i32 noundef %src_size, ptr noundef %iv, i32 noundef %adata_dma_list, i32 noundef %adata_size, ptr noundef readonly %in_tag, i32 noundef %tag_size) local_unnamed_addr #0 align 64 {
entry:
  %enc_a.i.i = alloca [10 x i8], align 2
  %b0.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cipher)
  %switch.i = icmp ult i32 %cipher, 2
  br i1 %switch.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %0 = zext i32 %instruction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %instruction, label %if.end.i.cleanup_crit_edge [
    i32 3, label %if.then24.i
    i32 0, label %if.end.i.if.end30.i_crit_edge
    i32 1, label %if.end.i.if.end30.i_crit_edge161
    i32 2, label %if.end.i.if.end30.i_crit_edge162
  ]

if.end.i.if.end30.i_crit_edge162:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.if.end30.i_crit_edge161:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.if.end30.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then24.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp25.i = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp27.i = icmp eq i32 %dst_dma_list, -1
  %or.cond.i = or i1 %cmp27.i, %cmp25.i
  br i1 %or.cond.i, label %if.then24.i.cleanup_crit_edge, label %if.then24.i.if.end_crit_edge

if.then24.i.if.end_crit_edge:                     ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then24.i.cleanup_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end30.i:                                       ; preds = %if.end.i.if.end30.i_crit_edge, %if.end.i.if.end30.i_crit_edge161, %if.end.i.if.end30.i_crit_edge162
  %tobool106.not.i.not = icmp eq ptr %iv, null
  br i1 %tobool106.not.i.not, label %if.end30.i.cleanup_crit_edge, label %if.end110.i

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end110.i:                                      ; preds = %if.end30.i
  %1 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %iv, align 1
  %3 = add i8 %2, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %3)
  %4 = icmp ult i8 %3, -7
  br i1 %4, label %if.end110.i.cleanup_crit_edge, label %if.end119.i

if.end110.i.cleanup_crit_edge:                    ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end119.i:                                      ; preds = %if.end110.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adata_size)
  %tobool120.not.i = icmp ne i32 %adata_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %adata_dma_list)
  %cmp122.i = icmp eq i32 %adata_dma_list, -1
  %or.cond214.i = and i1 %cmp122.i, %tobool120.not.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tag_size)
  %cmp126.i = icmp ugt i32 %tag_size, 16
  %or.cond223.i = or i1 %or.cond214.i, %cmp126.i
  br i1 %or.cond223.i, label %if.end119.i.cleanup_crit_edge, label %if.end129.i

if.end119.i.cleanup_crit_edge:                    ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end129.i:                                      ; preds = %if.end119.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %instruction)
  %cmp130.i = icmp eq i32 %instruction, 1
  br i1 %cmp130.i, label %if.then132.i, label %if.end145.i

if.then132.i:                                     ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool133.not.i = icmp eq i32 %src_size, 0
  br i1 %tobool133.not.i, label %if.end141.i, label %land.lhs.true134.i

land.lhs.true134.i:                               ; preds = %if.then132.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp135.i = icmp eq i32 %src_dma_list, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp138.i = icmp eq i32 %dst_dma_list, -1
  %or.cond215.i = or i1 %cmp138.i, %cmp135.i
  %tobool142.not.i = icmp eq ptr %in_tag, null
  %or.cond = or i1 %or.cond215.i, %tobool142.not.i
  br i1 %or.cond, label %land.lhs.true134.i.cleanup_crit_edge, label %land.lhs.true134.i.if.end_crit_edge

land.lhs.true134.i.if.end_crit_edge:              ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true134.i.cleanup_crit_edge:             ; preds = %land.lhs.true134.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end141.i:                                      ; preds = %if.then132.i
  %tobool142.not.i.old = icmp eq ptr %in_tag, null
  br i1 %tobool142.not.i.old, label %if.end141.i.cleanup_crit_edge, label %if.end141.i.if.end_crit_edge

if.end141.i.if.end_crit_edge:                     ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end141.i.cleanup_crit_edge:                    ; preds = %if.end141.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end145.i:                                      ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dst_dma_list)
  %cmp146.i = icmp eq i32 %dst_dma_list, -1
  br i1 %cmp146.i, label %if.end145.i.cleanup_crit_edge, label %if.end149.i

if.end145.i.cleanup_crit_edge:                    ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end149.i:                                      ; preds = %if.end145.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %tobool150.not.i = icmp ne i32 %src_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %src_dma_list)
  %cmp152.i = icmp eq i32 %src_dma_list, -1
  %or.cond217.i = and i1 %cmp152.i, %tobool150.not.i
  br i1 %or.cond217.i, label %if.end149.i.cleanup_crit_edge, label %if.end149.i.if.end_crit_edge

if.end149.i.if.end_crit_edge:                     ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end149.i.cleanup_crit_edge:                    ; preds = %if.end149.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.end149.i.if.end_crit_edge, %if.end141.i.if.end_crit_edge, %land.lhs.true134.i.if.end_crit_edge, %if.then24.i.if.end_crit_edge
  tail call fastcc void @aes_irq_disable(ptr noundef %aes_dev) #8
  %base_reg.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %5 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 -16318464) #8, !srcloc !24
  %shl.i.i = shl nuw nsw i32 %cipher, 14
  %shl2.i.i = shl nuw nsw i32 %instruction, 6
  %or.i.i = or i32 %shl.i.i, %shl2.i.i
  %or4.i.i = or i32 %or.i.i, 1548
  %7 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_reg.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %9 = tail call i32 @llvm.bswap.i32(i32 %or4.i.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %9) #8, !srcloc !24
  %10 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %iv, align 1
  %conv = zext i8 %11 to i32
  %add = add nuw nsw i32 %conv, 1
  %sub = sub nsw i32 15, %conv
  %arrayidx1 = getelementptr i8, ptr %iv, i32 %sub
  %12 = call ptr @memset(ptr %arrayidx1, i32 0, i32 %add)
  %13 = load i32, ptr %iv, align 4
  %14 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 524
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #8, !srcloc !24
  %arrayidx5 = getelementptr i32, ptr %iv, i32 1
  %16 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx5, align 4
  %18 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr7 = getelementptr i8, ptr %19, i32 520
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %17) #8, !srcloc !24
  %arrayidx8 = getelementptr i32, ptr %iv, i32 2
  %20 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx8, align 4
  %22 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr10 = getelementptr i8, ptr %23, i32 516
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %21) #8, !srcloc !24
  %arrayidx11 = getelementptr i32, ptr %iv, i32 3
  %24 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx11, align 4
  %26 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr13 = getelementptr i8, ptr %27, i32 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %25) #8, !srcloc !24
  %28 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr15 = getelementptr i8, ptr %29, i32 768
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %30 = tail call i32 @llvm.bswap.i32(i32 %tag_size) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %30) #8, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_size)
  %cmp.i = icmp eq i32 %src_size, 0
  %rem.i = and i32 %src_size, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp1.i = icmp eq i32 %rem.i, 0
  %31 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 788
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %rem.op.i = shl nuw nsw i32 %rem.i, 24
  %spec.store.select.op.i = select i1 %cmp1.i, i32 268435456, i32 %rem.op.i
  %33 = select i1 %cmp.i, i32 0, i32 %spec.store.select.op.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %33) #8, !srcloc !24
  %34 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i88 = getelementptr i8, ptr %35, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i88, i32 16777216) #8, !srcloc !24
  %36 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %37, i32 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 0) #8, !srcloc !24
  %38 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %39, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #8, !srcloc !24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %b0.i) #8
  %40 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 1
  %41 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 2
  %42 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 3
  %43 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 4
  %44 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 5
  %45 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 6
  %46 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 7
  %47 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 8
  %48 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 9
  %49 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 10
  %50 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 11
  %51 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 12
  %52 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 13
  %53 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 14
  %54 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 15
  %55 = call ptr @memset(ptr %b0.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %adata_size)
  %tobool.not.i = icmp eq i32 %adata_size, 0
  br i1 %tobool.not.i, label %if.end.if.end.i91_crit_edge, label %if.then.i

if.end.if.end.i91_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i91

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %b0.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %b0.i, align 1
  %58 = or i8 %57, 64
  store i8 %58, ptr %b0.i, align 1
  br label %if.end.i91

if.end.i91:                                       ; preds = %if.then.i, %if.end.if.end.i91_crit_edge
  %59 = ptrtoint ptr %b0.i to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %b0.i, align 1
  %tag_size.tr.i = trunc i32 %tag_size to i8
  %61 = shl i8 %tag_size.tr.i, 2
  %62 = add i8 %61, 56
  %63 = and i8 %62, 56
  %conv5.i = or i8 %60, %63
  %64 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %iv, align 1
  %66 = and i8 %65, 7
  %or1153.i = or i8 %conv5.i, %66
  store i8 %or1153.i, ptr %b0.i, align 1
  %narrow.i = add nuw nsw i8 %66, 1
  %67 = xor i8 %narrow.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %cmp.not54.i = icmp eq i8 %67, 0
  br i1 %cmp.not54.i, label %if.end.i91.while.body.i_crit_edge, label %for.body.preheader.i

if.end.i91.while.body.i_crit_edge:                ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

for.body.preheader.i:                             ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i = zext i8 %67 to i32
  %uglygep60.i = getelementptr i8, ptr %iv, i32 1
  %68 = call ptr @memcpy(ptr %40, ptr %uglygep60.i, i32 %sub16.i)
  br label %while.body.i

while.body.i:                                     ; preds = %for.body.preheader.i, %if.end.i91.while.body.i_crit_edge
  %conv22.i = trunc i32 %src_size to i8
  %arrayidx23.i = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 15
  %69 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %conv22.i, ptr %arrayidx23.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool20.not.i = icmp eq i8 %66, 0
  br i1 %tobool20.not.i, label %while.body.i.while.end.i_crit_edge, label %while.body.i.1

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.1:                                   ; preds = %while.body.i
  %shr.i = lshr i32 %src_size, 8
  %conv22.i.1 = trunc i32 %shr.i to i8
  %arrayidx23.i.1 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 14
  %70 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv22.i.1, ptr %arrayidx23.i.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %narrow.i)
  %tobool20.not.i.1 = icmp eq i8 %narrow.i, 2
  br i1 %tobool20.not.i.1, label %while.body.i.1.while.end.i_crit_edge, label %while.body.i.2

while.body.i.1.while.end.i_crit_edge:             ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.2:                                   ; preds = %while.body.i.1
  %shr.i.1 = lshr i32 %src_size, 16
  %conv22.i.2 = trunc i32 %shr.i.1 to i8
  %arrayidx23.i.2 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 13
  %71 = ptrtoint ptr %arrayidx23.i.2 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv22.i.2, ptr %arrayidx23.i.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %narrow.i)
  %tobool20.not.i.2 = icmp eq i8 %narrow.i, 3
  br i1 %tobool20.not.i.2, label %while.body.i.2.while.end.i_crit_edge, label %while.body.i.3

while.body.i.2.while.end.i_crit_edge:             ; preds = %while.body.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.3:                                   ; preds = %while.body.i.2
  %shr.i.2 = lshr i32 %src_size, 24
  %conv22.i.3 = trunc i32 %shr.i.2 to i8
  %arrayidx23.i.3 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 12
  %72 = ptrtoint ptr %arrayidx23.i.3 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %conv22.i.3, ptr %arrayidx23.i.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %narrow.i)
  %tobool20.not.i.3 = icmp eq i8 %narrow.i, 4
  br i1 %tobool20.not.i.3, label %while.body.i.3.while.end.i_crit_edge, label %while.body.i.4

while.body.i.3.while.end.i_crit_edge:             ; preds = %while.body.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.4:                                   ; preds = %while.body.i.3
  %arrayidx23.i.4 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 11
  %73 = ptrtoint ptr %arrayidx23.i.4 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %arrayidx23.i.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %narrow.i)
  %tobool20.not.i.4 = icmp eq i8 %narrow.i, 5
  br i1 %tobool20.not.i.4, label %while.body.i.4.while.end.i_crit_edge, label %while.body.i.5

while.body.i.4.while.end.i_crit_edge:             ; preds = %while.body.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.5:                                   ; preds = %while.body.i.4
  %arrayidx23.i.5 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 10
  %74 = ptrtoint ptr %arrayidx23.i.5 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 0, ptr %arrayidx23.i.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %narrow.i)
  %tobool20.not.i.5 = icmp eq i8 %narrow.i, 6
  br i1 %tobool20.not.i.5, label %while.body.i.5.while.end.i_crit_edge, label %while.body.i.6

while.body.i.5.while.end.i_crit_edge:             ; preds = %while.body.i.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.6:                                   ; preds = %while.body.i.5
  %arrayidx23.i.6 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 9
  %75 = ptrtoint ptr %arrayidx23.i.6 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 0, ptr %arrayidx23.i.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %narrow.i)
  %tobool20.not.i.6 = icmp eq i8 %narrow.i, 7
  br i1 %tobool20.not.i.6, label %while.body.i.6.while.end.i_crit_edge, label %while.body.i.7

while.body.i.6.while.end.i_crit_edge:             ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.i.7:                                   ; preds = %while.body.i.6
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx23.i.7 = getelementptr inbounds [16 x i8], ptr %b0.i, i32 0, i32 8
  %76 = ptrtoint ptr %arrayidx23.i.7 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 0, ptr %arrayidx23.i.7, align 1
  br label %while.end.i

while.end.i:                                      ; preds = %while.body.i.7, %while.body.i.6.while.end.i_crit_edge, %while.body.i.5.while.end.i_crit_edge, %while.body.i.4.while.end.i_crit_edge, %while.body.i.3.while.end.i_crit_edge, %while.body.i.2.while.end.i_crit_edge, %while.body.i.1.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge
  %cryptlen.addr.056.i.lcssa = phi i32 [ %src_size, %while.body.i.while.end.i_crit_edge ], [ %shr.i, %while.body.i.1.while.end.i_crit_edge ], [ %shr.i.1, %while.body.i.2.while.end.i_crit_edge ], [ %shr.i.2, %while.body.i.3.while.end.i_crit_edge ], [ 0, %while.body.i.4.while.end.i_crit_edge ], [ 0, %while.body.i.5.while.end.i_crit_edge ], [ 0, %while.body.i.6.while.end.i_crit_edge ], [ 0, %while.body.i.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cryptlen.addr.056.i.lcssa)
  %tobool25.not.i = icmp ult i32 %cryptlen.addr.056.i.lcssa, 256
  br i1 %tobool25.not.i, label %if.end19, label %ocs_aes_ccm_write_b0.exit

ocs_aes_ccm_write_b0.exit:                        ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b0.i) #8
  br label %cleanup

if.end19:                                         ; preds = %while.end.i
  %77 = ptrtoint ptr %b0.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %b0.i, align 1
  %79 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %80, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i93, i8 %78) #8, !srcloc !26
  %81 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %40, align 1
  %83 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.1.i = getelementptr i8, ptr %84, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.1.i, i8 %82) #8, !srcloc !26
  %85 = ptrtoint ptr %41 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %41, align 1
  %87 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.2.i = getelementptr i8, ptr %88, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.2.i, i8 %86) #8, !srcloc !26
  %89 = ptrtoint ptr %42 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %42, align 1
  %91 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.3.i = getelementptr i8, ptr %92, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.3.i, i8 %90) #8, !srcloc !26
  %93 = ptrtoint ptr %43 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %43, align 1
  %95 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.4.i = getelementptr i8, ptr %96, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.4.i, i8 %94) #8, !srcloc !26
  %97 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %44, align 1
  %99 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.5.i = getelementptr i8, ptr %100, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.5.i, i8 %98) #8, !srcloc !26
  %101 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %101)
  %102 = load i8, ptr %45, align 1
  %103 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.6.i = getelementptr i8, ptr %104, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.6.i, i8 %102) #8, !srcloc !26
  %105 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %46, align 1
  %107 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.7.i = getelementptr i8, ptr %108, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.7.i, i8 %106) #8, !srcloc !26
  %109 = ptrtoint ptr %47 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %47, align 1
  %111 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.8.i = getelementptr i8, ptr %112, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.8.i, i8 %110) #8, !srcloc !26
  %113 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %48, align 1
  %115 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.9.i = getelementptr i8, ptr %116, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.9.i, i8 %114) #8, !srcloc !26
  %117 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %49, align 1
  %119 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.10.i = getelementptr i8, ptr %120, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.10.i, i8 %118) #8, !srcloc !26
  %121 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %50, align 1
  %123 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.11.i = getelementptr i8, ptr %124, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.11.i, i8 %122) #8, !srcloc !26
  %125 = ptrtoint ptr %51 to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %51, align 1
  %127 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.12.i = getelementptr i8, ptr %128, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.12.i, i8 %126) #8, !srcloc !26
  %129 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %52, align 1
  %131 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.13.i = getelementptr i8, ptr %132, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.13.i, i8 %130) #8, !srcloc !26
  %133 = ptrtoint ptr %53 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %53, align 1
  %135 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.14.i = getelementptr i8, ptr %136, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.14.i, i8 %134) #8, !srcloc !26
  %137 = ptrtoint ptr %54 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %54, align 1
  %139 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.15.i = getelementptr i8, ptr %140, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.15.i, i8 %138) #8, !srcloc !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %b0.i) #8
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %if.end19
  %141 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i96 = getelementptr i8, ptr %142, i32 1068
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i96) #8, !srcloc !21
  %144 = tail call i32 @llvm.bswap.i32(i32 %143) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %cmp.i97 = icmp ult i32 %144, 42
  br i1 %cmp.i97, label %while.cond.i.while.cond.i_crit_edge, label %aes_a_dma_wait_and_deactivate_perf_cntr.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

aes_a_dma_wait_and_deactivate_perf_cntr.exit:     ; preds = %while.cond.i
  %145 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i98 = getelementptr i8, ptr %146, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i98, i32 0) #8, !srcloc !24
  br i1 %tobool.not.i, label %if.then.i103, label %if.end.i104

if.then.i103:                                     ; preds = %aes_a_dma_wait_and_deactivate_perf_cntr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %147 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i102 = getelementptr i8, ptr %148, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i102, i32 196608) #8, !srcloc !24
  br label %do.body.i.i.preheader

if.end.i104:                                      ; preds = %aes_a_dma_wait_and_deactivate_perf_cntr.exit
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %enc_a.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %adata_size)
  %cmp.i.i = icmp ult i32 %adata_size, 65280
  %149 = call ptr @memset(ptr %enc_a.i.i, i32 255, i32 10)
  br i1 %cmp.i.i, label %if.then.i.i, label %if.then3.i.i

if.then.i.i:                                      ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i = trunc i32 %adata_size to i16
  %150 = ptrtoint ptr %enc_a.i.i to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv.i.i, ptr %enc_a.i.i, align 2
  br label %for.body.i.i

if.then3.i.i:                                     ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  %151 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 2
  %152 = ptrtoint ptr %enc_a.i.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 -2, ptr %enc_a.i.i, align 2
  %153 = ptrtoint ptr %151 to i32
  call void @__asan_storeN_noabort(i32 %153, i32 4)
  store i32 %adata_size, ptr %151, align 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.then3.i.i, %if.then.i.i
  %154 = ptrtoint ptr %enc_a.i.i to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %enc_a.i.i, align 2
  %156 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %157, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i, i8 %155) #8, !srcloc !26
  %arrayidx12.i.i.1 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx12.i.i.1 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %arrayidx12.i.i.1, align 1
  %160 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i.1 = getelementptr i8, ptr %161, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.1, i8 %159) #8, !srcloc !26
  br i1 %cmp.i.i, label %for.body.i.i.ocs_aes_ccm_write_adata_len.exit.i_crit_edge, label %for.body.i.i.2

for.body.i.i.ocs_aes_ccm_write_adata_len.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_write_adata_len.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx12.i.i.2 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 2
  %162 = ptrtoint ptr %arrayidx12.i.i.2 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %arrayidx12.i.i.2, align 2
  %164 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i.2 = getelementptr i8, ptr %165, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.2, i8 %163) #8, !srcloc !26
  %arrayidx12.i.i.3 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 3
  %166 = ptrtoint ptr %arrayidx12.i.i.3 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %arrayidx12.i.i.3, align 1
  %168 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i.3 = getelementptr i8, ptr %169, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.3, i8 %167) #8, !srcloc !26
  %arrayidx12.i.i.4 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 4
  %170 = ptrtoint ptr %arrayidx12.i.i.4 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %arrayidx12.i.i.4, align 2
  %172 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i.4 = getelementptr i8, ptr %173, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.4, i8 %171) #8, !srcloc !26
  %arrayidx12.i.i.5 = getelementptr inbounds [10 x i8], ptr %enc_a.i.i, i32 0, i32 5
  %174 = ptrtoint ptr %arrayidx12.i.i.5 to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %arrayidx12.i.i.5, align 1
  %176 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i2.i.5 = getelementptr i8, ptr %177, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i2.i.5, i8 %175) #8, !srcloc !26
  br label %ocs_aes_ccm_write_adata_len.exit.i

ocs_aes_ccm_write_adata_len.exit.i:               ; preds = %for.body.i.i.2, %for.body.i.i.ocs_aes_ccm_write_adata_len.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %enc_a.i.i) #8
  %178 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %179, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 0) #8, !srcloc !24
  %180 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %181, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %182 = tail call i32 @llvm.bswap.i32(i32 %adata_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 %182) #8, !srcloc !24
  %183 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %184, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 130) #8, !srcloc !24
  %185 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %186, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i, i32 196608) #8, !srcloc !24
  %irq_completion.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %187 = ptrtoint ptr %irq_completion.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 0, ptr %irq_completion.i.i, align 4
  %188 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr9.i.i.i = getelementptr i8, ptr %189, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i, i32 0) #8, !srcloc !24
  %190 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr11.i.i.i = getelementptr i8, ptr %191, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i, i32 -50266112) #8, !srcloc !24
  %call.i.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %ocs_aes_ccm_write_adata_len.exit.i.ocs_aes_ccm_do_adata.exit_crit_edge

ocs_aes_ccm_write_adata_len.exit.i.ocs_aes_ccm_do_adata.exit_crit_edge: ; preds = %ocs_aes_ccm_write_adata_len.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_do_adata.exit

if.end.i.i:                                       ; preds = %ocs_aes_ccm_write_adata_len.exit.i
  %dma_err_mask.i.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %192 = ptrtoint ptr %dma_err_mask.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %dma_err_mask.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %193)
  %tobool2.not.i.i = icmp eq i32 %193, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.do.body.i.i.preheader_crit_edge, label %if.end.i.i.ocs_aes_ccm_do_adata.exit_crit_edge

if.end.i.i.ocs_aes_ccm_do_adata.exit_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_do_adata.exit

if.end.i.i.do.body.i.i.preheader_crit_edge:       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i.preheader

do.body.i.i.preheader:                            ; preds = %if.end.i.i.do.body.i.i.preheader_crit_edge, %if.then.i103
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.i.i.preheader
  %194 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i10.i = getelementptr i8, ptr %195, i32 52
  %196 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10.i) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %197 = and i32 %196, 65536
  %tobool.not.i11.i = icmp eq i32 %197, 0
  br i1 %tobool.not.i11.i, label %do.body.i.i.do.body.i15.i_crit_edge, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

do.body.i.i.do.body.i15.i_crit_edge:              ; preds = %do.body.i.i
  br label %do.body.i15.i

do.body.i15.i:                                    ; preds = %do.body.i15.i.do.body.i15.i_crit_edge, %do.body.i.i.do.body.i15.i_crit_edge
  %198 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %199, i32 1064
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %201 = and i32 %200, -16580608
  %tobool.not.i14.i = icmp eq i32 %201, 0
  br i1 %tobool.not.i14.i, label %do.body.i15.i.ocs_aes_ccm_do_adata.exit_crit_edge, label %do.body.i15.i.do.body.i15.i_crit_edge

do.body.i15.i.do.body.i15.i_crit_edge:            ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i15.i

do.body.i15.i.ocs_aes_ccm_do_adata.exit_crit_edge: ; preds = %do.body.i15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_do_adata.exit

ocs_aes_ccm_do_adata.exit:                        ; preds = %do.body.i15.i.ocs_aes_ccm_do_adata.exit_crit_edge, %if.end.i.i.ocs_aes_ccm_do_adata.exit_crit_edge, %ocs_aes_ccm_write_adata_len.exit.i.ocs_aes_ccm_do_adata.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %instruction)
  %cmp = icmp eq i32 %instruction, 0
  %202 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base_reg.i.i, align 4
  br i1 %cmp, label %if.then22, label %if.end24

if.then22:                                        ; preds = %ocs_aes_ccm_do_adata.exit
  br i1 %cmp.i, label %if.else.i, label %if.then.i108

if.then.i108:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i106 = getelementptr i8, ptr %203, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i106, i32 0) #8, !srcloc !24
  %204 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i.i107 = getelementptr i8, ptr %205, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %206 = tail call i32 @llvm.bswap.i32(i32 %src_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i107, i32 %206) #8, !srcloc !24
  %207 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i9.i = getelementptr i8, ptr %208, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i, i32 0) #8, !srcloc !24
  %209 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i10.i = getelementptr i8, ptr %210, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %211 = tail call i32 @llvm.bswap.i32(i32 %dst_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10.i, i32 %211) #8, !srcloc !24
  %212 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %213, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 131) #8, !srcloc !24
  br label %if.end.i112

if.else.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i14.i = getelementptr i8, ptr %203, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 0) #8, !srcloc !24
  %214 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i15.i = getelementptr i8, ptr %215, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %216 = tail call i32 @llvm.bswap.i32(i32 %dst_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15.i, i32 %216) #8, !srcloc !24
  %217 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %218, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 129) #8, !srcloc !24
  br label %if.end.i112

if.end.i112:                                      ; preds = %if.else.i, %if.then.i108
  %219 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i19.i = getelementptr i8, ptr %220, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i, i32 65536) #8, !srcloc !24
  %irq_completion.i.i109 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %221 = ptrtoint ptr %irq_completion.i.i109 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %irq_completion.i.i109, align 4
  %222 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %223, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 -67043328) #8, !srcloc !24
  %224 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr3.i.i.i = getelementptr i8, ptr %225, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i.i, i32 33554432) #8, !srcloc !24
  %call.i.i110 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i.i109) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i110)
  %tobool.not.i.i111 = icmp eq i32 %call.i.i110, 0
  br i1 %tobool.not.i.i111, label %if.end.i.i115, label %if.end.i112.cleanup_crit_edge

if.end.i112.cleanup_crit_edge:                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i115:                                    ; preds = %if.end.i112
  call void @__sanitizer_cov_trace_pc() #10
  %dma_err_mask.i.i113 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %226 = ptrtoint ptr %dma_err_mask.i.i113 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %dma_err_mask.i.i113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %227)
  %tobool2.not.i.i114 = icmp eq i32 %227, 0
  %cond.i.i = select i1 %tobool2.not.i.i114, i32 0, i32 -5
  br label %cleanup

if.end24:                                         ; preds = %ocs_aes_ccm_do_adata.exit
  %add.ptr.i.i118 = getelementptr i8, ptr %203, i32 1032
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i118, i32 0) #8
  %228 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %base_reg.i.i, align 4
  br i1 %cmp.i, label %if.then.i121, label %if.end.i128

if.then.i121:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr2.i.i119 = getelementptr i8, ptr %229, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i119, i32 0) #8, !srcloc !24
  %230 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i9.i120 = getelementptr i8, ptr %231, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i9.i120, i32 128) #8, !srcloc !24
  %232 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %233, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 65536) #8, !srcloc !24
  br label %do.body.i.i137.preheader

if.end.i128:                                      ; preds = %if.end24
  %add.ptr2.i14.i = getelementptr i8, ptr %229, i32 1048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %234 = tail call i32 @llvm.bswap.i32(i32 %src_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14.i, i32 %234) #8, !srcloc !24
  %235 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i16.i = getelementptr i8, ptr %236, i32 1036
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i16.i, i32 0) #8, !srcloc !24
  %237 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i17.i = getelementptr i8, ptr %238, i32 1052
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  %239 = tail call i32 @llvm.bswap.i32(i32 %dst_dma_list) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17.i, i32 %239) #8, !srcloc !24
  %240 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i19.i122 = getelementptr i8, ptr %241, i32 1040
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19.i122, i32 131) #8, !srcloc !24
  %242 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %243, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 65536) #8, !srcloc !24
  %irq_completion.i.i123 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %244 = ptrtoint ptr %irq_completion.i.i123 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %irq_completion.i.i123, align 4
  %245 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr9.i.i.i124 = getelementptr i8, ptr %246, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i.i.i124, i32 0) #8, !srcloc !24
  %247 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr11.i.i.i125 = getelementptr i8, ptr %248, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i.i.i125, i32 -50266112) #8, !srcloc !24
  %call.i.i126 = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i.i123) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i126)
  %tobool.not.i.i127 = icmp eq i32 %call.i.i126, 0
  br i1 %tobool.not.i.i127, label %if.end.i.i132, label %if.end.i128.cleanup_crit_edge

if.end.i128.cleanup_crit_edge:                    ; preds = %if.end.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i132:                                    ; preds = %if.end.i128
  %dma_err_mask.i.i129 = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %249 = ptrtoint ptr %dma_err_mask.i.i129 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %dma_err_mask.i.i129, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool2.not.i.i130 = icmp eq i32 %250, 0
  br i1 %tobool2.not.i.i130, label %if.end.i.i132.do.body.i.i137.preheader_crit_edge, label %if.end.i.i132.cleanup_crit_edge

if.end.i.i132.cleanup_crit_edge:                  ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i132.do.body.i.i137.preheader_crit_edge: ; preds = %if.end.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i137.preheader

do.body.i.i137.preheader:                         ; preds = %if.end.i.i132.do.body.i.i137.preheader_crit_edge, %if.then.i121
  br label %do.body.i.i137

do.body.i.i137:                                   ; preds = %do.body.i.i137.do.body.i.i137_crit_edge, %do.body.i.i137.preheader
  %251 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i135 = getelementptr i8, ptr %252, i32 1064
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i135) #8, !srcloc !21
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %254 = and i32 %253, -16580608
  %tobool.not.i.i136 = icmp eq i32 %254, 0
  br i1 %tobool.not.i.i136, label %aes_a_dma_wait_input_buffer_occupancy.exit.i, label %do.body.i.i137.do.body.i.i137_crit_edge

do.body.i.i137.do.body.i.i137_crit_edge:          ; preds = %do.body.i.i137
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i137

aes_a_dma_wait_input_buffer_occupancy.exit.i:     ; preds = %do.body.i.i137
  %255 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %256, i32 1068
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 0) #8, !srcloc !24
  %257 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i.i138 = getelementptr i8, ptr %258, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i138, i32 16777216) #8, !srcloc !24
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.while.cond.i.i_crit_edge, %aes_a_dma_wait_input_buffer_occupancy.exit.i
  %259 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i9.i139 = getelementptr i8, ptr %260, i32 1068
  %261 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i9.i139) #8, !srcloc !21
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %cmp.i.i140 = icmp ult i32 %262, 36
  br i1 %cmp.i.i140, label %while.cond.i.i.while.cond.i.i_crit_edge, label %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i

while.cond.i.i.while.cond.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i.i

aes_a_dma_wait_and_deactivate_perf_cntr.exit.i:   ; preds = %while.cond.i.i
  %263 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr2.i10.i141 = getelementptr i8, ptr %264, i32 1056
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10.i141, i32 0) #8, !srcloc !24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tag_size)
  %cmp11.not.i = icmp eq i32 %tag_size, 0
  br i1 %cmp11.not.i, label %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge, label %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.for.body.i_crit_edge

aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.for.body.i_crit_edge: ; preds = %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i
  br label %for.body.i

aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge: ; preds = %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_write_encrypted_tag.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.for.body.i_crit_edge
  %i.012.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %in_tag, i32 %i.012.i
  %265 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %arrayidx.i, align 1
  %267 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %268, i32 1536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !25
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i142, i8 %266) #8, !srcloc !26
  %inc.i = add nuw i32 %i.012.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %tag_size
  br i1 %exitcond.not.i, label %for.body.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ocs_aes_ccm_write_encrypted_tag.exit

ocs_aes_ccm_write_encrypted_tag.exit:             ; preds = %for.body.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge, %aes_a_dma_wait_and_deactivate_perf_cntr.exit.i.ocs_aes_ccm_write_encrypted_tag.exit_crit_edge
  %irq_completion.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 4
  %269 = ptrtoint ptr %irq_completion.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 0, ptr %irq_completion.i, align 4
  %270 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr.i.i144 = getelementptr i8, ptr %271, i32 1156
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i144, i32 -67043328) #8, !srcloc !24
  %272 = ptrtoint ptr %base_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %base_reg.i.i, align 4
  %add.ptr3.i.i = getelementptr i8, ptr %273, i32 72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !23
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i, i32 33554432) #8, !srcloc !24
  %call.i = tail call i32 @wait_for_completion_interruptible(ptr noundef %irq_completion.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i146 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i146, label %if.end.i147, label %ocs_aes_ccm_write_encrypted_tag.exit.cleanup_crit_edge

ocs_aes_ccm_write_encrypted_tag.exit.cleanup_crit_edge: ; preds = %ocs_aes_ccm_write_encrypted_tag.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i147:                                      ; preds = %ocs_aes_ccm_write_encrypted_tag.exit
  %dma_err_mask.i = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 5
  %274 = ptrtoint ptr %dma_err_mask.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %dma_err_mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %275)
  %tobool2.not.i = icmp eq i32 %275, 0
  br i1 %tobool2.not.i, label %if.end32, label %if.end.i147.cleanup_crit_edge

if.end.i147.cleanup_crit_edge:                    ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end32:                                         ; preds = %if.end.i147
  call void @__sanitizer_cov_trace_pc() #10
  %call34 = tail call fastcc i32 @ccm_compare_tag_to_yr(ptr noundef %aes_dev, i8 noundef zeroext %tag_size.tr.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.end.i147.cleanup_crit_edge, %ocs_aes_ccm_write_encrypted_tag.exit.cleanup_crit_edge, %if.end.i.i132.cleanup_crit_edge, %if.end.i128.cleanup_crit_edge, %if.end.i.i115, %if.end.i112.cleanup_crit_edge, %ocs_aes_ccm_write_b0.exit, %if.end149.i.cleanup_crit_edge, %if.end145.i.cleanup_crit_edge, %if.end141.i.cleanup_crit_edge, %land.lhs.true134.i.cleanup_crit_edge, %if.end119.i.cleanup_crit_edge, %if.end110.i.cleanup_crit_edge, %if.end30.i.cleanup_crit_edge, %if.then24.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call34, %if.end32 ], [ -75, %ocs_aes_ccm_write_b0.exit ], [ %cond.i.i, %if.end.i.i115 ], [ %call.i.i110, %if.end.i112.cleanup_crit_edge ], [ -5, %if.end.i.i132.cleanup_crit_edge ], [ %call.i.i126, %if.end.i128.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end30.i.cleanup_crit_edge ], [ -22, %if.end110.i.cleanup_crit_edge ], [ -22, %if.end119.i.cleanup_crit_edge ], [ -22, %land.lhs.true134.i.cleanup_crit_edge ], [ -22, %if.end145.i.cleanup_crit_edge ], [ -22, %if.end141.i.cleanup_crit_edge ], [ -22, %if.then24.i.cleanup_crit_edge ], [ -22, %if.end149.i.cleanup_crit_edge ], [ %call.i, %ocs_aes_ccm_write_encrypted_tag.exit.cleanup_crit_edge ], [ -5, %if.end.i147.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccm_compare_tag_to_yr(ptr nocapture noundef readonly %aes_dev, i8 noundef zeroext %tag_size_bytes) unnamed_addr #6 align 64 {
entry:
  %tag = alloca [4 x i32], align 4
  %yr = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tag) #8
  %0 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i32], ptr %tag, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %yr) #8
  %3 = getelementptr inbounds [4 x i32], ptr %yr, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i32], ptr %yr, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i32], ptr %yr, i32 0, i32 3
  %base_reg = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 3
  %6 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base_reg, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 772
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !21
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %10 = ptrtoint ptr %tag to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %tag, align 4
  %11 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base_reg, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 544
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #8, !srcloc !21
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %15 = ptrtoint ptr %yr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %yr, align 4
  %16 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base_reg, align 4
  %add.ptr3.1 = getelementptr i8, ptr %17, i32 776
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.1) #8, !srcloc !21
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %0, align 4
  %21 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_reg, align 4
  %add.ptr8.1 = getelementptr i8, ptr %22, i32 548
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.1) #8, !srcloc !21
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %26 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base_reg, align 4
  %add.ptr3.2 = getelementptr i8, ptr %27, i32 780
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.2) #8, !srcloc !21
  %29 = tail call i32 @llvm.bswap.i32(i32 %28) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %1, align 4
  %31 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base_reg, align 4
  %add.ptr8.2 = getelementptr i8, ptr %32, i32 552
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.2) #8, !srcloc !21
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %4, align 4
  %36 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base_reg, align 4
  %add.ptr3.3 = getelementptr i8, ptr %37, i32 784
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.3) #8, !srcloc !21
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %40 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %2, align 4
  %41 = ptrtoint ptr %base_reg to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base_reg, align 4
  %add.ptr8.3 = getelementptr i8, ptr %42, i32 556
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr8.3) #8, !srcloc !21
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !22
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %5, align 4
  %conv13 = zext i8 %tag_size_bytes to i32
  %bcmp = call i32 @bcmp(ptr nonnull %tag, ptr nonnull %yr, i32 %conv13) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  %cond = select i1 %tobool.not, i32 0, i32 -74
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %yr) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tag) #8
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ocs_create_linked_list_from_sg(ptr noundef readonly %aes_dev, ptr noundef %sg, i32 noundef %sg_dma_count, ptr noundef %dll_desc, i32 noundef %data_size, i32 noundef %data_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dll_desc, null
  %tobool1.not = icmp eq ptr %sg, null
  %or.cond = or i1 %tobool1.not, %tobool.not
  %tobool3.not = icmp eq ptr %aes_dev, null
  %or.cond117 = or i1 %tobool3.not, %or.cond
  br i1 %or.cond117, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %dll_desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %dll_desc, align 4
  %dma_addr = getelementptr inbounds %struct.ocs_dll_desc, ptr %dll_desc, i32 0, i32 1
  %1 = ptrtoint ptr %dma_addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dma_addr, align 4
  %size = getelementptr inbounds %struct.ocs_dll_desc, ptr %dll_desc, i32 0, i32 2
  %2 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %data_size)
  %cmp = icmp eq i32 %data_size, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end.while.cond_crit_edge

if.end.while.cond_crit_edge:                      ; preds = %if.end
  br label %while.cond

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond:                                       ; preds = %lor.lhs.false9.while.cond_crit_edge, %if.end.while.cond_crit_edge
  %sg.addr.0 = phi ptr [ %call, %lor.lhs.false9.while.cond_crit_edge ], [ %sg, %if.end.while.cond_crit_edge ]
  %sg_dma_count.addr.0 = phi i32 [ %dec, %lor.lhs.false9.while.cond_crit_edge ], [ %sg_dma_count, %if.end.while.cond_crit_edge ]
  %data_offset.addr.0 = phi i32 [ %sub, %lor.lhs.false9.while.cond_crit_edge ], [ %data_offset, %if.end.while.cond_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0, i32 0, i32 4
  %3 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %data_offset.addr.0, i32 %4)
  %cmp6.not = icmp ult i32 %data_offset.addr.0, %4
  br i1 %cmp6.not, label %while.cond13.preheader, label %while.body

while.cond13.preheader:                           ; preds = %while.cond
  %dma_length.le = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0, i32 0, i32 4
  %add = add i32 %data_offset.addr.0, %data_size
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp14123.not = icmp eq i32 %add, 0
  br i1 %cmp14123.not, label %while.cond13.preheader.while.end22_crit_edge, label %while.cond13.preheader.while.body15_crit_edge

while.cond13.preheader.while.body15_crit_edge:    ; preds = %while.cond13.preheader
  br label %while.body15

while.cond13.preheader.while.end22_crit_edge:     ; preds = %while.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end22

while.body:                                       ; preds = %while.cond
  %call = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.0) #8
  %tobool8.not = icmp eq ptr %call, null
  br i1 %tobool8.not, label %while.body.cleanup_crit_edge, label %lor.lhs.false9

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false9:                                   ; preds = %while.body
  %dec = add i32 %sg_dma_count.addr.0, -1
  %sub = sub i32 %data_offset.addr.0, %4
  %cmp10 = icmp eq i32 %dec, 0
  br i1 %cmp10, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false9.while.cond_crit_edge

lor.lhs.false9.while.cond_crit_edge:              ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body15:                                     ; preds = %if.end18.while.body15_crit_edge, %while.cond13.preheader.while.body15_crit_edge
  %dma_nents.0126 = phi i32 [ %inc, %if.end18.while.body15_crit_edge ], [ 0, %while.cond13.preheader.while.body15_crit_edge ]
  %tmp.0125 = phi i32 [ %add20, %if.end18.while.body15_crit_edge ], [ 0, %while.cond13.preheader.while.body15_crit_edge ]
  %sg_tmp.0124 = phi ptr [ %call21, %if.end18.while.body15_crit_edge ], [ %sg.addr.0, %while.cond13.preheader.while.body15_crit_edge ]
  %tobool16.not = icmp eq ptr %sg_tmp.0124, null
  br i1 %tobool16.not, label %while.body15.cleanup_crit_edge, label %if.end18

while.body15.cleanup_crit_edge:                   ; preds = %while.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end18:                                         ; preds = %while.body15
  %dma_length19 = getelementptr inbounds %struct.scatterlist, ptr %sg_tmp.0124, i32 0, i32 4
  %5 = ptrtoint ptr %dma_length19 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dma_length19, align 4
  %add20 = add i32 %6, %tmp.0125
  %inc = add i32 %dma_nents.0126, 1
  %call21 = tail call ptr @sg_next(ptr noundef nonnull %sg_tmp.0124) #8
  %cmp14 = icmp ult i32 %add20, %add
  br i1 %cmp14, label %if.end18.while.body15_crit_edge, label %if.end18.while.end22_crit_edge

if.end18.while.end22_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end22

if.end18.while.body15_crit_edge:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body15

while.end22:                                      ; preds = %if.end18.while.end22_crit_edge, %while.cond13.preheader.while.end22_crit_edge
  %dma_nents.0.lcssa = phi i32 [ 0, %while.cond13.preheader.while.end22_crit_edge ], [ %inc, %if.end18.while.end22_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %dma_nents.0.lcssa, i32 %sg_dma_count.addr.0)
  %cmp23 = icmp sgt i32 %dma_nents.0.lcssa, %sg_dma_count.addr.0
  br i1 %cmp23, label %while.end22.cleanup_crit_edge, label %if.end25

while.end22.cleanup_crit_edge:                    ; preds = %while.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %while.end22
  %mul = shl i32 %dma_nents.0.lcssa, 4
  %7 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %size, align 4
  %dev = getelementptr inbounds %struct.ocs_aes_dev, ptr %aes_dev, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef %mul, ptr noundef %dma_addr, i32 noundef 3264, i32 noundef 0) #8
  %10 = ptrtoint ptr %dll_desc to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %dll_desc, align 4
  %tobool32.not = icmp eq ptr %call.i, null
  br i1 %tobool32.not, label %if.end25.cleanup_crit_edge, label %for.cond.preheader

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dma_nents.0.lcssa)
  %cmp36127 = icmp sgt i32 %dma_nents.0.lcssa, 0
  br i1 %cmp36127, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %dma_address.peel = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.0, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address.peel to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address.peel, align 4
  %add37.peel = add i32 %12, %data_offset.addr.0
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %add37.peel, ptr %call.i, align 1
  %14 = ptrtoint ptr %dma_length.le to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_length.le, align 4
  %sub39.peel = sub i32 %15, %data_offset.addr.0
  %16 = tail call i32 @llvm.umin.i32(i32 %sub39.peel, i32 %data_size)
  %src_len.peel = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %src_len.peel to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 %16, ptr %src_len.peel, align 1
  %18 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_addr, align 4
  %add50.peel = add i32 %19, 16
  %next.peel = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %next.peel to i32
  call void @__asan_storeN_noabort(i32 %20, i32 4)
  store i32 %add50.peel, ptr %next.peel, align 1
  %ll_flags.peel = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 0, i32 3
  %21 = ptrtoint ptr %ll_flags.peel to i32
  call void @__asan_storeN_noabort(i32 %21, i32 4)
  store i32 0, ptr %ll_flags.peel, align 1
  %call54.peel = tail call ptr @sg_next(ptr noundef %sg.addr.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dma_nents.0.lcssa)
  %exitcond.peel.not = icmp eq i32 %dma_nents.0.lcssa, 1
  br i1 %exitcond.peel.not, label %for.body.preheader.for.end_crit_edge, label %for.body.peel.next

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.peel.next:                               ; preds = %for.body.preheader
  %sub46.peel = sub i32 %data_size, %16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.peel.next
  %i.0131 = phi i32 [ %add48, %for.body.for.body_crit_edge ], [ 1, %for.body.peel.next ]
  %data_size.addr.0129 = phi i32 [ %sub46, %for.body.for.body_crit_edge ], [ %sub46.peel, %for.body.peel.next ]
  %sg.addr.1128 = phi ptr [ %call54, %for.body.for.body_crit_edge ], [ %call54.peel, %for.body.peel.next ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1128, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %i.0131
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %24, i32 4)
  store i32 %23, ptr %arrayidx, align 1
  %dma_length38 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.1128, i32 0, i32 4
  %25 = ptrtoint ptr %dma_length38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_length38, align 4
  %27 = tail call i32 @llvm.umin.i32(i32 %26, i32 %data_size.addr.0129)
  %src_len = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %i.0131, i32 1
  %28 = ptrtoint ptr %src_len to i32
  call void @__asan_storeN_noabort(i32 %28, i32 4)
  store i32 %27, ptr %src_len, align 1
  %sub46 = sub i32 %data_size.addr.0129, %27
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr, align 4
  %add48 = add nuw nsw i32 %i.0131, 1
  %mul49 = shl i32 %add48, 4
  %add50 = add i32 %30, %mul49
  %next = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %i.0131, i32 2
  %31 = ptrtoint ptr %next to i32
  call void @__asan_storeN_noabort(i32 %31, i32 4)
  store i32 %add50, ptr %next, align 1
  %ll_flags = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %i.0131, i32 3
  %32 = ptrtoint ptr %ll_flags to i32
  call void @__asan_storeN_noabort(i32 %32, i32 4)
  store i32 0, ptr %ll_flags, align 1
  %call54 = tail call ptr @sg_next(ptr noundef %sg.addr.1128) #8
  %exitcond.not = icmp eq i32 %add48, %dma_nents.0.lcssa
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge, !llvm.loop !27

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.body.preheader.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ 1, %for.body.preheader.for.end_crit_edge ], [ %dma_nents.0.lcssa, %for.body.for.end_crit_edge ]
  %sub55 = add nsw i32 %i.0.lcssa, -1
  %next57 = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %sub55, i32 2
  %33 = ptrtoint ptr %next57 to i32
  call void @__asan_storeN_noabort(i32 %33, i32 4)
  store i32 0, ptr %next57, align 1
  %ll_flags60 = getelementptr %struct.ocs_dma_linked_list, ptr %call.i, i32 %sub55, i32 3
  %34 = ptrtoint ptr %ll_flags60 to i32
  call void @__asan_storeN_noabort(i32 %34, i32 4)
  store i32 -2147483648, ptr %ll_flags60, align 1
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end25.cleanup_crit_edge, %while.end22.cleanup_crit_edge, %while.body15.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %while.end22.cleanup_crit_edge ], [ -12, %if.end25.cleanup_crit_edge ], [ -22, %while.body15.cleanup_crit_edge ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/keembay/ocs-aes.c", i32 486, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ocs_aes_set_key._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ocs_aes_set_key._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/keembay/ocs-aes.c", i32 493, i32 3}
!10 = !{ptr @ocs_aes_set_key._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ocs_aes_set_key._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 6258688}
!22 = !{i64 2153799037}
!23 = !{i64 2153800392}
!24 = !{i64 6258270}
!25 = !{i64 2153799418}
!26 = !{i64 6258073}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.peeled.count", i32 1}
