; ModuleID = '/llk/IR_all_yes/sound/pci/oxygen/xonar_dg.c_pt.bc'
source_filename = "../sound/pci/oxygen/xonar_dg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.oxygen = type { i32, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, i32, ptr, i32, [8 x i8], i8, i8, i8, i8, i8, i8, i8, i32, i32, [6 x ptr], [6 x ptr], %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, %union.anon.84, [2 x [64 x i16]], i32, [32 x i8], %struct.oxygen_model }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%union.anon.84 = type { [64 x i32] }
%struct.oxygen_model = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.dg = type { [17 x i8], i8, [4 x [2 x i8]], i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0ACS4245:\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" %02x\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CS4245\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 280, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 283, i32 3 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 284, i32 2 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [31 x i8] c"../sound/pci/oxygen/xonar_dg.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 145, i32 32 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs4245_write_spi(ptr noundef %chip, i8 noundef zeroext %reg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %conv = zext i8 %reg to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx = getelementptr [17 x i8], ptr %1, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %conv1 = zext i8 %3 to i32
  %or = or i32 %shl, %conv1
  %or2 = or i32 %or, 10354688
  %call = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @oxygen_write_spi(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs4245_read_spi(ptr noundef %chip, i8 noundef zeroext %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %conv = zext i8 %addr to i32
  %or = or i32 %conv, 40448
  %call = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef %or) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef 40704) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call7 = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef 153) #2
  %arrayidx = getelementptr [17 x i8], ptr %1, i32 0, i32 %conv
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call7, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @oxygen_read8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cs4245_shadow_control(ptr noundef %chip, i32 noundef %op) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i15 = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %op)
  %cmp2 = icmp eq i32 %op, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %indvars.iv = phi i32 [ 1, %entry ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %0 = ptrtoint ptr %model_data.i15 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i15, align 4
  br i1 %cmp2, label %cond.true, label %cond.end

cond.true:                                        ; preds = %for.body
  %or.i = or i32 %indvars.iv, 40448
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef %or.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %cond.true.cleanup_crit_edge, label %if.end.i

cond.true.cleanup_crit_edge:                      ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end.i:                                         ; preds = %cond.true
  %call2.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef 40704) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %cond.end.thread22

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cond.end.thread22:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef 153) #2
  %arrayidx.i = getelementptr [17 x i8], ptr %1, i32 0, i32 %indvars.iv
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %call7.i, ptr %arrayidx.i, align 1
  br label %for.inc

cond.end:                                         ; preds = %for.body
  %shl.i = shl nuw nsw i32 %indvars.iv, 8
  %arrayidx.i17 = getelementptr [17 x i8], ptr %1, i32 0, i32 %indvars.iv
  %3 = ptrtoint ptr %arrayidx.i17 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx.i17, align 1
  %conv1.i = zext i8 %4 to i32
  %or.i18 = or i32 %shl.i, %conv1.i
  %or2.i = or i32 %or.i18, 10354688
  %call.i19 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %cmp5 = icmp slt i32 %call.i19, 0
  br i1 %cmp5, label %cond.end.cleanup_crit_edge, label %cond.end.for.inc_crit_edge

cond.end.for.inc_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

for.inc:                                          ; preds = %cond.end.for.inc_crit_edge, %cond.end.thread22
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 17
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %cond.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %cond.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call2.i, %if.end.i.cleanup_crit_edge ], [ %call.i, %cond.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dg_init(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %output_sel = getelementptr inbounds %struct.dg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output_sel to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %output_sel, align 1
  %input_sel = getelementptr inbounds %struct.dg, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %input_sel to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %input_sel, align 1
  %4 = load ptr, ptr %model_data, align 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %cond.end.thread22.i.i.for.body.i.i_crit_edge, %entry
  %indvars.iv.i.i = phi i32 [ 1, %entry ], [ %indvars.iv.next.i.i, %cond.end.thread22.i.i.for.body.i.i_crit_edge ]
  %5 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %model_data, align 4
  %or.i.i.i = or i32 %indvars.iv.i.i, 40448
  %call.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef %or.i.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.body.i.i.cs4245_shadow_control.exit.i_crit_edge, label %if.end.i.i.i

for.body.i.i.cs4245_shadow_control.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cs4245_shadow_control.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %call2.i.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef 40704) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call2.i.i.i, 0
  br i1 %cmp3.i.i.i, label %if.end.i.i.i.cs4245_shadow_control.exit.i_crit_edge, label %cond.end.thread22.i.i

if.end.i.i.i.cs4245_shadow_control.exit.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cs4245_shadow_control.exit.i

cond.end.thread22.i.i:                            ; preds = %if.end.i.i.i
  %call7.i.i.i = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef 153) #2
  %arrayidx.i.i.i = getelementptr [17 x i8], ptr %6, i32 0, i32 %indvars.iv.i.i
  %7 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call7.i.i.i, ptr %arrayidx.i.i.i, align 1
  %indvars.iv.next.i.i = add nuw nsw i32 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %indvars.iv.next.i.i, 17
  br i1 %exitcond.not.i.i, label %cond.end.thread22.i.i.cs4245_shadow_control.exit.i_crit_edge, label %cond.end.thread22.i.i.for.body.i.i_crit_edge

cond.end.thread22.i.i.for.body.i.i_crit_edge:     ; preds = %cond.end.thread22.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i.i

cond.end.thread22.i.i.cs4245_shadow_control.exit.i_crit_edge: ; preds = %cond.end.thread22.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cs4245_shadow_control.exit.i

cs4245_shadow_control.exit.i:                     ; preds = %cond.end.thread22.i.i.cs4245_shadow_control.exit.i_crit_edge, %if.end.i.i.i.cs4245_shadow_control.exit.i_crit_edge, %for.body.i.i.cs4245_shadow_control.exit.i_crit_edge
  %arrayidx.i = getelementptr [17 x i8], ptr %4, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx.i, align 1
  %arrayidx2.i = getelementptr [17 x i8], ptr %4, i32 0, i32 6
  %9 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 33, ptr %arrayidx2.i, align 1
  %arrayidx4.i = getelementptr [17 x i8], ptr %4, i32 0, i32 3
  %10 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %arrayidx4.i, align 1
  %arrayidx6.i = getelementptr [17 x i8], ptr %4, i32 0, i32 12
  %11 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -32, ptr %arrayidx6.i, align 1
  %arrayidx8.i = getelementptr [17 x i8], ptr %4, i32 0, i32 4
  %12 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %arrayidx8.i, align 1
  %arrayidx10.i = getelementptr [17 x i8], ptr %4, i32 0, i32 9
  %13 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 24, ptr %arrayidx10.i, align 1
  %arrayidx12.i = getelementptr [17 x i8], ptr %4, i32 0, i32 7
  %14 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx12.i, align 1
  %arrayidx14.i = getelementptr [17 x i8], ptr %4, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %arrayidx14.i, align 1
  %arrayidx16.i = getelementptr [17 x i8], ptr %4, i32 0, i32 10
  %16 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %arrayidx16.i, align 1
  %arrayidx18.i = getelementptr [17 x i8], ptr %4, i32 0, i32 11
  %17 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %arrayidx18.i, align 1
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.body.i35.i.for.body.i35.i_crit_edge, %cs4245_shadow_control.exit.i
  %indvars.iv.i34.i = phi i32 [ 1, %cs4245_shadow_control.exit.i ], [ %indvars.iv.next.i36.i, %for.body.i35.i.for.body.i35.i_crit_edge ]
  %18 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %model_data, align 4
  %shl.i.i.i = shl nuw nsw i32 %indvars.iv.i34.i, 8
  %arrayidx.i17.i.i = getelementptr [17 x i8], ptr %19, i32 0, i32 %indvars.iv.i34.i
  %20 = ptrtoint ptr %arrayidx.i17.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx.i17.i.i, align 1
  %conv1.i.i.i = zext i8 %21 to i32
  %or.i18.i.i = or i32 %shl.i.i.i, %conv1.i.i.i
  %or2.i.i.i = or i32 %or.i18.i.i, 10354688
  %call.i19.i.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i.i)
  %cmp5.i.i = icmp slt i32 %call.i19.i.i, 0
  %indvars.iv.next.i36.i = add nuw nsw i32 %indvars.iv.i34.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %indvars.iv.next.i36.i)
  %exitcond.not.i37.i = icmp eq i32 %indvars.iv.next.i36.i, 17
  %or.cond.i = select i1 %cmp5.i.i, i1 true, i1 %exitcond.not.i37.i
  br i1 %or.cond.i, label %cs4245_init.exit, label %for.body.i35.i.for.body.i35.i_crit_edge

for.body.i35.i.for.body.i35.i_crit_edge:          ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i35.i

cs4245_init.exit:                                 ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #4
  %card.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 3
  %22 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %card.i, align 4
  %call20.i = tail call i32 @snd_component_add(ptr noundef %23, ptr noundef nonnull @.str.3) #2
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 168, i16 noundef zeroext 480) #2
  tail call void @msleep(i32 noundef 2500) #2
  tail call void @oxygen_write16(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 352) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16(ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dg_cleanup(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 256) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dg_suspend(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 0, i16 noundef zeroext 256) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dg_resume(ptr noundef %chip) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data.i15.i = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 1, %entry ], [ %indvars.iv.next.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %model_data.i15.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data.i15.i, align 4
  %shl.i.i = shl nuw nsw i32 %indvars.iv.i, 8
  %arrayidx.i17.i = getelementptr [17 x i8], ptr %1, i32 0, i32 %indvars.iv.i
  %2 = ptrtoint ptr %arrayidx.i17.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i17.i, align 1
  %conv1.i.i = zext i8 %3 to i32
  %or.i18.i = or i32 %shl.i.i, %conv1.i.i
  %or2.i.i = or i32 %or.i18.i, 10354688
  %call.i19.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i.i) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19.i)
  %cmp5.i = icmp slt i32 %call.i19.i, 0
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %indvars.iv.next.i)
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 17
  %or.cond = select i1 %cmp5.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %cs4245_shadow_control.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

cs4245_shadow_control.exit:                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @msleep(i32 noundef 2500) #2
  tail call void @oxygen_write16_masked(ptr noundef %chip, i32 noundef 166, i16 noundef zeroext 256, i16 noundef zeroext 256) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_cs4245_dac_params(ptr noundef %chip, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr [17 x i8], ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 63
  %arrayidx3 = getelementptr [17 x i8], ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = and i8 %6, -113
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %9)
  %cmp = icmp ult i32 %9, 50001
  br i1 %cmp, label %entry.if.end30_crit_edge, label %if.else

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %9)
  %cmp14 = icmp ult i32 %9, 100001
  br i1 %cmp14, label %if.then16, label %if.else23

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %10 = or i8 %4, 64
  br label %if.end30

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %11 = or i8 %4, -128
  %12 = or i8 %7, 32
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %if.then16, %entry.if.end30_crit_edge
  %dac_ctrl.0 = phi i8 [ %10, %if.then16 ], [ %11, %if.else23 ], [ %4, %entry.if.end30_crit_edge ]
  %mclk_freq.0 = phi i8 [ %7, %if.then16 ], [ %12, %if.else23 ], [ %7, %entry.if.end30_crit_edge ]
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %dac_ctrl.0, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %mclk_freq.0, ptr %arrayidx3, align 1
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %18 to i32
  %or2.i = or i32 %conv1.i, 10355456
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i) #2
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %arrayidx.i51 = getelementptr [17 x i8], ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i51, align 1
  %conv1.i52 = zext i8 %22 to i32
  %or2.i54 = or i32 %conv1.i52, 10355968
  %call.i55 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i54) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @set_cs4245_adc_params(ptr noundef %chip, ptr nocapture noundef readonly %params) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %arrayidx = getelementptr [17 x i8], ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %4 = and i8 %3, 63
  %arrayidx3 = getelementptr [17 x i8], ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx3, align 1
  %7 = and i8 %6, -8
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50001, i32 %9)
  %cmp = icmp ult i32 %9, 50001
  br i1 %cmp, label %entry.if.end30_crit_edge, label %if.else

entry.if.end30_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end30

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 100001, i32 %9)
  %cmp14 = icmp ult i32 %9, 100001
  br i1 %cmp14, label %if.then16, label %if.else23

if.then16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %10 = or i8 %4, 64
  br label %if.end30

if.else23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %11 = or i8 %4, -128
  %12 = or i8 %7, 2
  br label %if.end30

if.end30:                                         ; preds = %if.else23, %if.then16, %entry.if.end30_crit_edge
  %adc_ctrl.0 = phi i8 [ %10, %if.then16 ], [ %11, %if.else23 ], [ %4, %entry.if.end30_crit_edge ]
  %mclk_freq.0 = phi i8 [ %7, %if.then16 ], [ %12, %if.else23 ], [ %7, %entry.if.end30_crit_edge ]
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %adc_ctrl.0, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %mclk_freq.0, ptr %arrayidx3, align 1
  %15 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %model_data, align 4
  %arrayidx.i = getelementptr [17 x i8], ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i, align 1
  %conv1.i = zext i8 %18 to i32
  %or2.i = or i32 %conv1.i, 10355712
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i) #2
  %19 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %model_data, align 4
  %arrayidx.i51 = getelementptr [17 x i8], ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i51, align 1
  %conv1.i52 = zext i8 %22 to i32
  %or2.i54 = or i32 %conv1.i52, 10355968
  %call.i55 = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -113, i32 noundef %or2.i54) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @adjust_dg_dac_routing(ptr noundef %chip, i32 noundef %play_routing) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %output_sel = getelementptr inbounds %struct.dg, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %output_sel to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %output_sel, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %3)
  %4 = icmp ult i8 %3, 3
  br i1 %4, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %switch.cast = zext i8 %3 to i24
  %switch.shiftamt = shl nuw nsw i24 %switch.cast, 3
  %switch.downshift = lshr i24 69134, %switch.shiftamt
  %switch.masked = trunc i24 %switch.downshift to i8
  tail call void @oxygen_write8_masked(ptr noundef %chip, i32 noundef 192, i8 noundef zeroext %switch.masked, i8 noundef zeroext 15) #2
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %and = and i32 %play_routing, 768
  %shr.i = lshr i32 %play_routing, 2
  %retval.0.i = and i32 %shr.i, 3072
  %or = or i32 %retval.0.i, %and
  %shl.i = shl i32 %play_routing, 2
  %retval.0.i11 = and i32 %shl.i, 12288
  %or3 = or i32 %or, %retval.0.i11
  %shl.i12 = shl i32 %play_routing, 6
  %retval.0.i13 = and i32 %shl.i12, 49152
  %or5 = or i32 %or3, %retval.0.i13
  ret i32 %or5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write8_masked(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dump_cs4245_registers(ptr noundef %chip, ptr nocapture noundef readonly %buffer) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %model_data = getelementptr inbounds %struct.oxygen, ptr %chip, i32 0, i32 7
  %0 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %model_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str) #2
  %4 = ptrtoint ptr %model_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %model_data, align 4
  %call.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef 40461) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.cs4245_read_spi.exit_crit_edge, label %if.end.i

entry.cs4245_read_spi.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cs4245_read_spi.exit

if.end.i:                                         ; preds = %entry
  %call2.i = tail call i32 @oxygen_write_spi(ptr noundef %chip, i8 noundef zeroext -115, i32 noundef 40704) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.cs4245_read_spi.exit_crit_edge, label %if.end6.i

if.end.i.cs4245_read_spi.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %cs4245_read_spi.exit

if.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %call7.i = tail call zeroext i8 @oxygen_read8(ptr noundef %chip, i32 noundef 153) #2
  %arrayidx.i = getelementptr [17 x i8], ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call7.i, ptr %arrayidx.i, align 1
  br label %cs4245_read_spi.exit

cs4245_read_spi.exit:                             ; preds = %if.end6.i, %if.end.i.cs4245_read_spi.exit_crit_edge, %entry.cs4245_read_spi.exit_crit_edge
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr [17 x i8], ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %10 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.1, i32 noundef %conv) #2
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %arrayidx.1 = getelementptr [17 x i8], ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.1, align 1
  %conv.1 = zext i8 %14 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.1, i32 noundef %conv.1) #2
  %15 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %buffer, align 4
  %arrayidx.2 = getelementptr [17 x i8], ptr %1, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.2, align 1
  %conv.2 = zext i8 %18 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %16, ptr noundef nonnull @.str.1, i32 noundef %conv.2) #2
  %19 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %buffer, align 4
  %arrayidx.3 = getelementptr [17 x i8], ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.3, align 1
  %conv.3 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %20, ptr noundef nonnull @.str.1, i32 noundef %conv.3) #2
  %23 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %buffer, align 4
  %arrayidx.4 = getelementptr [17 x i8], ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.4, align 1
  %conv.4 = zext i8 %26 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %24, ptr noundef nonnull @.str.1, i32 noundef %conv.4) #2
  %27 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %buffer, align 4
  %arrayidx.5 = getelementptr [17 x i8], ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.5, align 1
  %conv.5 = zext i8 %30 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %28, ptr noundef nonnull @.str.1, i32 noundef %conv.5) #2
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %buffer, align 4
  %arrayidx.6 = getelementptr [17 x i8], ptr %1, i32 0, i32 7
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.6, align 1
  %conv.6 = zext i8 %34 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %32, ptr noundef nonnull @.str.1, i32 noundef %conv.6) #2
  %35 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %buffer, align 4
  %arrayidx.7 = getelementptr [17 x i8], ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx.7, align 1
  %conv.7 = zext i8 %38 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %36, ptr noundef nonnull @.str.1, i32 noundef %conv.7) #2
  %39 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %buffer, align 4
  %arrayidx.8 = getelementptr [17 x i8], ptr %1, i32 0, i32 9
  %41 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %arrayidx.8, align 1
  %conv.8 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %40, ptr noundef nonnull @.str.1, i32 noundef %conv.8) #2
  %43 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %buffer, align 4
  %arrayidx.9 = getelementptr [17 x i8], ptr %1, i32 0, i32 10
  %45 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.9, align 1
  %conv.9 = zext i8 %46 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %44, ptr noundef nonnull @.str.1, i32 noundef %conv.9) #2
  %47 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %buffer, align 4
  %arrayidx.10 = getelementptr [17 x i8], ptr %1, i32 0, i32 11
  %49 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx.10, align 1
  %conv.10 = zext i8 %50 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %48, ptr noundef nonnull @.str.1, i32 noundef %conv.10) #2
  %51 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %buffer, align 4
  %arrayidx.11 = getelementptr [17 x i8], ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %arrayidx.11, align 1
  %conv.11 = zext i8 %54 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %52, ptr noundef nonnull @.str.1, i32 noundef %conv.11) #2
  %55 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %buffer, align 4
  %arrayidx.12 = getelementptr [17 x i8], ptr %1, i32 0, i32 13
  %57 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.12, align 1
  %conv.12 = zext i8 %58 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %56, ptr noundef nonnull @.str.1, i32 noundef %conv.12) #2
  %59 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %buffer, align 4
  %arrayidx.13 = getelementptr [17 x i8], ptr %1, i32 0, i32 14
  %61 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %arrayidx.13, align 1
  %conv.13 = zext i8 %62 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %60, ptr noundef nonnull @.str.1, i32 noundef %conv.13) #2
  %63 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %buffer, align 4
  %arrayidx.14 = getelementptr [17 x i8], ptr %1, i32 0, i32 15
  %65 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %arrayidx.14, align 1
  %conv.14 = zext i8 %66 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %64, ptr noundef nonnull @.str.1, i32 noundef %conv.14) #2
  %67 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %buffer, align 4
  %arrayidx.15 = getelementptr [17 x i8], ptr %1, i32 0, i32 16
  %69 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.15, align 1
  %conv.15 = zext i8 %70 to i32
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %68, ptr noundef nonnull @.str.1, i32 noundef %conv.15) #2
  %71 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %72, ptr noundef nonnull @.str.2) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @oxygen_write16_masked(ptr noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/pci/oxygen/xonar_dg.c", i32 280, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/oxygen/xonar_dg.c", i32 283, i32 3}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/pci/oxygen/xonar_dg.c", i32 284, i32 2}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/pci/oxygen/xonar_dg.c", i32 145, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
