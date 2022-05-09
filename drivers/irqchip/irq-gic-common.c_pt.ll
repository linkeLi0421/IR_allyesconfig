; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-common.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gic_quirk = type { ptr, ptr, ptr, i32, i32 }

@gic_enable_of_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016GIC: enabling workaround for %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"gic_enable_of_quirks\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-gic-common.c\00", [63 x i8] zeroinitializer }, align 32
@gic_enable_of_quirks._entry_ptr = internal global ptr @gic_enable_of_quirks._entry, section ".printk_index", align 4
@gic_enable_quirks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.3, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"gic_enable_quirks\00", [46 x i8] zeroinitializer }, align 32
@gic_enable_quirks._entry_ptr = internal global ptr @gic_enable_quirks._entry, section ".printk_index", align 4
@irq_controller_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"irq_controller_lock\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 22, i32 4 }
@___asan_gen_.17 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 36, i32 4 }
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"irq_controller_lock\00", align 1
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../drivers/irqchip/irq-gic-common.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 13, i32 8 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @gic_enable_of_quirks._entry, ptr @gic_enable_of_quirks._entry_ptr, ptr @gic_enable_quirks._entry, ptr @gic_enable_quirks._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @irq_controller_lock, ptr @.str.4], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_enable_of_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gic_enable_quirks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_controller_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_enable_of_quirks(ptr noundef %np, ptr nocapture noundef readonly %quirks, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirks, align 4
  %tobool.not11 = icmp eq ptr %1, null
  br i1 %tobool.not11, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %quirks.addr.012 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %quirks, %entry.for.body_crit_edge ]
  %compatible = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.012, i32 0, i32 1
  %2 = ptrtoint ptr %compatible to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compatible, align 4
  %call = tail call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %init = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.012, i32 0, i32 2
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %call2 = tail call zeroext i1 %5(ptr noundef %data) #4
  br i1 %call2, label %do.end, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %quirks.addr.012 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %quirks.addr.012, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %7) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.gic_quirk, ptr %quirks.addr.012, i32 1
  %8 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_enable_quirks(i32 noundef %iidr, ptr nocapture noundef readonly %quirks, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %quirks, align 4
  %tobool.not15 = icmp eq ptr %1, null
  br i1 %tobool.not15, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %quirks.addr.016 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %quirks, %entry.for.body_crit_edge ]
  %compatible = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.016, i32 0, i32 1
  %2 = ptrtoint ptr %compatible to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %compatible, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end:                                           ; preds = %for.body
  %iidr2 = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.016, i32 0, i32 3
  %4 = ptrtoint ptr %iidr2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iidr2, align 4
  %mask = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.016, i32 0, i32 4
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask, align 4
  %and = and i32 %7, %iidr
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %and)
  %cmp.not = icmp eq i32 %5, %and
  br i1 %cmp.not, label %if.end4, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end4:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.gic_quirk, ptr %quirks.addr.016, i32 0, i32 2
  %8 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init, align 4
  %call = tail call zeroext i1 %9(ptr noundef %data) #4
  br i1 %call, label %do.end, label %if.end4.for.inc_crit_edge

if.end4.for.inc_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %quirks.addr.016 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quirks.addr.016, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %if.end4.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.gic_quirk, ptr %quirks.addr.016, i32 1
  %12 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gic_configure_irq(i32 noundef %irq, i32 noundef %type, ptr noundef %base, ptr noundef readonly %sync_access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = shl i32 %irq, 1
  %mul = and i32 %rem, 30
  %shl = shl nuw i32 2, %mul
  %0 = lshr i32 %irq, 2
  %mul1 = and i32 %0, 1073741820
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @irq_controller_lock) #4
  %add.ptr = getelementptr i8, ptr %base, i32 %mul1
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !22
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %type, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %neg = xor i32 %shl, -1
  %and4 = and i32 %2, %neg
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %and5 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  %or = select i1 %tobool6.not, i32 0, i32 %shl
  %spec.select = or i32 %2, %or
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %and4, %if.then ], [ %spec.select, %if.else ]
  call void @__sanitizer_cov_trace_cmp4(i32 %val.0, i32 %2)
  %cmp9 = icmp eq i32 %val.0, %2
  br i1 %cmp9, label %do.body12, label %if.end20

do.body12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %call) #4
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %3 = tail call i32 @llvm.bswap.i32(i32 %val.0)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #4, !srcloc !23
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !22
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %val.0)
  %cmp26.not = icmp eq i32 %5, %val.0
  %spec.select60 = select i1 %cmp26.not, i32 0, i32 -22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @irq_controller_lock, i32 noundef %call) #4
  %tobool38.not = icmp eq ptr %sync_access, null
  br i1 %tobool38.not, label %if.end20.cleanup_crit_edge, label %if.then39

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then39:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %sync_access() #4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end20.cleanup_crit_edge, %do.body12
  %retval.0 = phi i32 [ 0, %do.body12 ], [ %spec.select60, %if.then39 ], [ %spec.select60, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_dist_config(ptr noundef %base, i32 noundef %gic_irqs, ptr noundef readonly %sync_access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %gic_irqs)
  %cmp39 = icmp ugt i32 %gic_irqs, 32
  br i1 %cmp39, label %for.body.lr.ph, label %entry.for.end21_crit_edge

entry.for.end21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 3072
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body
  br i1 %cmp39, label %for.body4.lr.ph, label %for.cond2.preheader.for.end21_crit_edge

for.cond2.preheader.for.end21_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %add.ptr5 = getelementptr i8, ptr %base, i32 1024
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.040 = phi i32 [ 32, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %div38 = lshr exact i32 %i.040, 2
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %div38
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 0) #4, !srcloc !23
  %add = add i32 %i.040, 16
  %cmp = icmp ult i32 %add, %gic_irqs
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body4
  br i1 %cmp39, label %for.body12.lr.ph, label %for.cond10.preheader.for.end21_crit_edge

for.cond10.preheader.for.end21_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %add.ptr13 = getelementptr i8, ptr %base, i32 896
  %add.ptr16 = getelementptr i8, ptr %base, i32 384
  br label %for.body12

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %i.142 = phi i32 [ 32, %for.body4.lr.ph ], [ %add8, %for.body4.for.body4_crit_edge ]
  %add.ptr6 = getelementptr i8, ptr %add.ptr5, i32 %i.142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 -1600085856) #4, !srcloc !23
  %add8 = add i32 %i.142, 4
  %cmp3 = icmp ult i32 %add8, %gic_irqs
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.cond10.preheader

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body4

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body12.lr.ph
  %i.244 = phi i32 [ 32, %for.body12.lr.ph ], [ %add20, %for.body12.for.body12_crit_edge ]
  %div1437 = lshr exact i32 %i.244, 3
  %add.ptr15 = getelementptr i8, ptr %add.ptr13, i32 %div1437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 -1) #4, !srcloc !23
  %add.ptr18 = getelementptr i8, ptr %add.ptr16, i32 %div1437
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 -1) #4, !srcloc !23
  %add20 = add i32 %i.244, 32
  %cmp11 = icmp ult i32 %add20, %gic_irqs
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.for.end21_crit_edge

for.body12.for.end21_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end21

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body12

for.end21:                                        ; preds = %for.body12.for.end21_crit_edge, %for.cond10.preheader.for.end21_crit_edge, %for.cond2.preheader.for.end21_crit_edge, %entry.for.end21_crit_edge
  %tobool.not = icmp eq ptr %sync_access, null
  br i1 %tobool.not, label %for.end21.if.end_crit_edge, label %if.then

for.end21.if.end_crit_edge:                       ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %sync_access() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end21.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @gic_cpu_config(ptr noundef %base, i32 noundef %nr, ptr noundef readonly %sync_access) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr)
  %cmp24 = icmp sgt i32 %nr, 0
  br i1 %cmp24, label %for.body.lr.ph, label %entry.for.end13_crit_edge

entry.for.end13_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 896
  %add.ptr2 = getelementptr i8, ptr %base, i32 384
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body
  br i1 %cmp24, label %for.body7.lr.ph, label %for.cond5.preheader.for.end13_crit_edge

for.cond5.preheader.for.end13_crit_edge:          ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %add.ptr8 = getelementptr i8, ptr %base, i32 1024
  br label %for.body7

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.025 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %div = sdiv i32 %i.025, 8
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %div
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #4, !srcloc !23
  %add.ptr4 = getelementptr i8, ptr %add.ptr2, i32 %div
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 -1) #4, !srcloc !23
  %add = add i32 %i.025, 32
  %cmp = icmp slt i32 %add, %nr
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.127 = phi i32 [ 0, %for.body7.lr.ph ], [ %add12, %for.body7.for.body7_crit_edge ]
  %mul = shl i32 %i.127, 2
  %div9 = sdiv i32 %mul, 4
  %add.ptr10 = getelementptr i8, ptr %add.ptr8, i32 %div9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 -1600085856) #4, !srcloc !23
  %add12 = add i32 %i.127, 4
  %cmp6 = icmp slt i32 %add12, %nr
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end13_crit_edge

for.body7.for.end13_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end13

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body7

for.end13:                                        ; preds = %for.body7.for.end13_crit_edge, %for.cond5.preheader.for.end13_crit_edge, %entry.for.end13_crit_edge
  %tobool.not = icmp eq ptr %sync_access, null
  br i1 %tobool.not, label %for.end13.if.end_crit_edge, label %if.then

for.end13.if.end_crit_edge:                       ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %for.end13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %sync_access() #4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end13.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-common.c", i32 22, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @gic_enable_of_quirks._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @gic_enable_of_quirks._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-gic-common.c", i32 36, i32 4}
!8 = !{ptr @gic_enable_quirks._entry, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @gic_enable_quirks._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic-common.c", i32 13, i32 8}
!12 = !{ptr @irq_controller_lock, !11, !"irq_controller_lock", i1 false, i1 false}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{i64 4200226}
!23 = !{i64 4199808}
