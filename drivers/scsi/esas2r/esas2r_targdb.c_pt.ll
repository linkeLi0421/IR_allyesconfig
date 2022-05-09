; ModuleID = '/llk/IR_all_yes/drivers/scsi/esas2r/esas2r_targdb.c_pt.bc'
source_filename = "../drivers/scsi/esas2r/esas2r_targdb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.esas2r_adapter = type { [256 x %struct.esas2r_target], ptr, ptr, ptr, i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.list_head, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %union.anon.101, i32, i64, ptr, ptr, %struct.esas2r_request, i8, i16, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i16, i16, %struct.esas2r_mem_desc, %struct.esas2r_mem_desc, %struct.esas2r_disc_context, ptr, i32, i32, i32, [16 x i8], [16 x i8], [16 x i8], %struct.esas2r_flash_context, i32, i32, %struct.tasklet_struct, ptr, ptr, i32, [32 x i8], %struct.timer_list, %struct.esas2r_firmware, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, %struct.wait_queue_head, i32, ptr, i64, %struct.wait_queue_head, i32, i64, ptr, i32, %struct.wait_queue_head, i32, i32, ptr, %struct.list_head, %struct.spinlock, i8, [20 x i8], i32, %struct.esas2r_sg_context, ptr, %struct.list_head, ptr, i32, %struct.mutex, %struct.mutex, %struct.semaphore, ptr, [524288 x i8], i8 }
%struct.esas2r_target = type { i8, i8, i8, i8, i32, i32, i32, i16, i16, i8, i64, [60 x i8], %struct.atto_vda_ae_lu }
%struct.atto_vda_ae_lu = type { %struct.atto_vda_ae_hdr, i32, i8, i8, i16, %union.anon }
%struct.atto_vda_ae_hdr = type { i8, i8, i8, i8 }
%union.anon = type { %struct.atto_vda_ae_lu_tgt_lun_raid }
%struct.atto_vda_ae_lu_tgt_lun_raid = type { i16, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%union.anon.101 = type { i32 }
%struct.esas2r_request = type { %struct.list_head, %struct.list_head, ptr, ptr, %union.anon.15, ptr, %struct.list_head, ptr, i32, i16, i8, i8, %union.atto_vda_func_rsp, ptr, ptr, ptr, i8, i8, i16, i64, ptr, ptr, i32, i32, %union.anon.23 }
%union.anon.15 = type { ptr }
%union.atto_vda_func_rsp = type { %struct.atto_vda_scsi_rsp }
%struct.atto_vda_scsi_rsp = type { i8, i8, [2 x i8], i32 }
%union.anon.23 = type { ptr }
%struct.esas2r_mem_desc = type { %struct.list_head, ptr, i64, ptr, ptr, i32, i32 }
%struct.esas2r_disc_context = type { i8, i8, i16, i32, i32, i16, i8, i8, [16 x i8], ptr, i16, i16, i8, i8, i64 }
%struct.esas2r_flash_context = type { ptr, ptr, ptr, ptr, i32, i8, i8, i16, i32, i32, i32, i8, %struct.esas2r_sg_context }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.105, i32 }
%union.anon.105 = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.esas2r_firmware = type { i32, %struct.esas2r_flash_img, ptr, i64, i32, ptr, i64 }
%struct.esas2r_flash_img = type { i8, i8, i8, i8, i32, i16, i16, i16, i16, [16 x i8], [6 x %struct.esas2r_component_header], [2048 x i8] }
%struct.esas2r_component_header = type { i8, i8, [2 x i8], i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.esas2r_sg_context = type { ptr, ptr, i32, ptr, ptr, %union.anon.102, ptr, ptr, i32, i32 }
%union.anon.102 = type { %struct.anon.103 }
%struct.anon.103 = type { ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }

@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_targ_db_initialize(ptr noundef %a) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp7 = icmp ugt ptr %1, %a
  br i1 %cmp7, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %t.08 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %a, %entry.for.body_crit_edge ]
  %new_target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.08, i32 0, i32 1
  %2 = call ptr @memset(ptr %t.08, i32 0, i32 120)
  %3 = ptrtoint ptr %new_target_state to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %new_target_state, align 1
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.08, i32 1
  %4 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %targetdb_end, align 8
  %cmp = icmp ult ptr %incdec.ptr, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_targ_db_remove_all(ptr noundef %a, i1 noundef zeroext %notify) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp23 = icmp ugt ptr %1, %a
  br i1 %cmp23, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %sub.ptr.rhs.cast.i = ptrtoint ptr %a to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %t.024 = phi ptr [ %a, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.024, i32 0, i32 2
  %2 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp1.not = icmp eq i8 %3, 5
  br i1 %cmp1.not, label %do.body3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.body3:                                         ; preds = %for.body
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #11
  %4 = ptrtoint ptr %target_state to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %target_state, align 2
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call6) #11
  br i1 %notify, label %if.then10, label %do.body3.for.inc_crit_edge

do.body3.for.inc_crit_edge:                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then10:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast.i = ptrtoint ptr %t.024 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 120
  %conv.i = trunc i32 %sub.ptr.div.i to i16
  tail call void @esas2r_target_state_changed(ptr noundef %a, i16 noundef zeroext %conv.i, i8 noundef zeroext 0) #11
  br label %for.inc

for.inc:                                          ; preds = %if.then10, %do.body3.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.024, i32 1
  %5 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %targetdb_end, align 8
  %cmp = icmp ult ptr %incdec.ptr, %6
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @esas2r_targ_db_remove(ptr nocapture readnone %a, ptr nocapture noundef writeonly %t) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %target_state = getelementptr inbounds %struct.esas2r_target, ptr %t, i32 0, i32 2
  %0 = ptrtoint ptr %target_state to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %target_state, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @esas2r_target_state_changed(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @esas2r_targ_db_report_changes(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %flags1 = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %flags1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags1, align 4
  %2 = and i32 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %3 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %targetdb_end, align 8
  %cmp39 = icmp ugt ptr %4, %a
  br i1 %cmp39, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %sub.ptr.rhs.cast.i = ptrtoint ptr %a to i32
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %t.040 = phi ptr [ %a, %for.body.lr.ph ], [ %incdec.ptr, %if.end22.for.body_crit_edge ]
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #11
  %buffered_target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.040, i32 0, i32 3
  %5 = ptrtoint ptr %buffered_target_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buffered_target_state, align 1
  %target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.040, i32 0, i32 2
  %7 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp10.not = icmp eq i8 %6, %8
  br i1 %cmp10.not, label %if.end15.thread, label %if.end15

if.end15.thread:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call5) #11
  br label %if.end22

if.end15:                                         ; preds = %for.body
  %9 = ptrtoint ptr %buffered_target_state to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %buffered_target_state, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call5) #11
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %8)
  %cmp18.not = icmp eq i8 %8, -1
  br i1 %cmp18.not, label %if.end15.if.end22_crit_edge, label %if.then20

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then20:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #13
  %sub.ptr.lhs.cast.i = ptrtoint ptr %t.040 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 120
  %conv.i = trunc i32 %sub.ptr.div.i to i16
  tail call void @esas2r_target_state_changed(ptr noundef %a, i16 noundef zeroext %conv.i, i8 noundef zeroext %8) #11
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end15.if.end22_crit_edge, %if.end15.thread
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.040, i32 1
  %10 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %targetdb_end, align 8
  %cmp = icmp ult ptr %incdec.ptr, %11
  br i1 %cmp, label %if.end22.for.body_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %if.end22.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @esas2r_targ_db_add_raid(ptr noundef %a, ptr nocapture noundef readonly %dc) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_virt_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %curr_virt_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp = icmp ugt i16 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.esas2r_target, ptr %a, i32 %conv
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 2
  %2 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp5 = icmp eq i8 %3, 5
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %interleave = getelementptr inbounds %struct.esas2r_disc_context, ptr %dc, i32 0, i32 3
  %4 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %interleave, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp eq i32 %5, 0
  br i1 %cmp9, label %if.end8.cleanup_crit_edge, label %lor.lhs.false

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end8
  %block_size = getelementptr inbounds %struct.esas2r_disc_context, ptr %dc, i32 0, i32 4
  %6 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %if.end14

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %block_size16 = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 4
  %8 = ptrtoint ptr %block_size16 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %block_size16, align 4
  %9 = ptrtoint ptr %interleave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interleave, align 4
  %inter_byte = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 6
  %11 = ptrtoint ptr %inter_byte to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inter_byte, align 4
  %12 = load i32, ptr %interleave, align 4
  %13 = ptrtoint ptr %block_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_size, align 8
  %div = udiv i32 %12, %14
  %inter_block = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 5
  %15 = ptrtoint ptr %inter_block to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div, ptr %inter_block, align 8
  %16 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %curr_virt_id, align 4
  %virt_targ_id = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 7
  %18 = ptrtoint ptr %virt_targ_id to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %virt_targ_id, align 8
  %phys_targ_id = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 8
  %19 = ptrtoint ptr %phys_targ_id to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 -1, ptr %phys_targ_id, align 2
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %add.ptr, align 8
  %22 = and i8 %21, -4
  %23 = or i8 %22, 2
  store i8 %23, ptr %add.ptr, align 8
  %identifier_len = getelementptr %struct.esas2r_target, ptr %a, i32 %conv, i32 9
  %24 = ptrtoint ptr %identifier_len to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %identifier_len, align 4
  %25 = ptrtoint ptr %target_state to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %target_state, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %lor.lhs.false.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.end14 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end8.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @esas2r_targ_db_add_pthru(ptr noundef %a, ptr nocapture noundef readonly %dc, ptr nocapture noundef readonly %ident, i8 noundef zeroext %ident_len) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %curr_virt_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %dc, i32 0, i32 10
  %0 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %curr_virt_id, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %1)
  %cmp = icmp ugt i16 %1, 255
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv.i = zext i8 %ident_len to i32
  %targetdb_end.i = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %targetdb_end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %targetdb_end.i, align 8
  %cmp14.i = icmp ugt ptr %3, %a
  br i1 %cmp14.i, label %if.end.for.body.i_crit_edge, label %if.end.if.then4_crit_edge

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %t.015.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %a, %if.end.for.body.i_crit_edge ]
  %identifier_len.i = getelementptr inbounds %struct.esas2r_target, ptr %t.015.i, i32 0, i32 9
  %4 = ptrtoint ptr %identifier_len.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %identifier_len.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %ident_len)
  %cmp2.i = icmp eq i8 %5, %ident_len
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %identifier4.i = getelementptr inbounds %struct.esas2r_target, ptr %t.015.i, i32 0, i32 11
  %bcmp.i = tail call i32 @bcmp(ptr %identifier4.i, ptr %ident, i32 %conv.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %cmp6.i = icmp eq i32 %bcmp.i, 0
  br i1 %cmp6.i, label %esas2r_targ_db_find_by_ident.exit, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.esas2r_target, ptr %t.015.i, i32 1
  %cmp.i = icmp ult ptr %incdec.ptr.i, %3
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.then4_crit_edge

for.inc.i.if.then4_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

esas2r_targ_db_find_by_ident.exit:                ; preds = %land.lhs.true.i
  %cmp2 = icmp eq ptr %t.015.i, null
  br i1 %cmp2, label %esas2r_targ_db_find_by_ident.exit.if.then4_crit_edge, label %esas2r_targ_db_find_by_ident.exit.if.end15_crit_edge

esas2r_targ_db_find_by_ident.exit.if.end15_crit_edge: ; preds = %esas2r_targ_db_find_by_ident.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

esas2r_targ_db_find_by_ident.exit.if.then4_crit_edge: ; preds = %esas2r_targ_db_find_by_ident.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %esas2r_targ_db_find_by_ident.exit.if.then4_crit_edge, %for.inc.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 60, i8 %ident_len)
  %cmp8 = icmp ugt i8 %ident_len, 60
  br i1 %cmp8, label %if.then4.cleanup_crit_edge, label %lor.lhs.false

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then4
  %conv6 = zext i16 %1 to i32
  %add.ptr = getelementptr %struct.esas2r_target, ptr %a, i32 %conv6
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv6, i32 2
  %6 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %7)
  %cmp11 = icmp eq i8 %7, 5
  br i1 %cmp11, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false.if.end15_crit_edge, %esas2r_targ_db_find_by_ident.exit.if.end15_crit_edge
  %t.0 = phi ptr [ %add.ptr, %lor.lhs.false.if.end15_crit_edge ], [ %t.015.i, %esas2r_targ_db_find_by_ident.exit.if.end15_crit_edge ]
  %block_size = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 4
  %8 = ptrtoint ptr %block_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %block_size, align 4
  %inter_byte = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 6
  %9 = ptrtoint ptr %inter_byte to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %inter_byte, align 4
  %inter_block = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 5
  %10 = ptrtoint ptr %inter_block to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %inter_block, align 8
  %11 = ptrtoint ptr %curr_virt_id to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %curr_virt_id, align 4
  %virt_targ_id = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 7
  %13 = ptrtoint ptr %virt_targ_id to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %virt_targ_id, align 8
  %curr_phys_id = getelementptr inbounds %struct.esas2r_disc_context, ptr %dc, i32 0, i32 11
  %14 = ptrtoint ptr %curr_phys_id to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %curr_phys_id, align 2
  %phys_targ_id = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 8
  %16 = ptrtoint ptr %phys_targ_id to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %phys_targ_id, align 2
  %identifier_len = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 9
  %17 = ptrtoint ptr %identifier_len to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %ident_len, ptr %identifier_len, align 4
  %identifier = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 11
  %18 = call ptr @memcpy(ptr %identifier, ptr %ident, i32 %conv.i)
  %19 = ptrtoint ptr %t.0 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %t.0, align 8
  %21 = or i8 %20, 3
  store i8 %21, ptr %t.0, align 8
  %target_state21 = getelementptr inbounds %struct.esas2r_target, ptr %t.0, i32 0, i32 2
  %22 = ptrtoint ptr %target_state21 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 5, ptr %target_state21, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %t.0, %if.end15 ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @esas2r_targ_db_find_by_ident(ptr noundef readonly %a, ptr nocapture noundef readonly %identifier, i8 noundef zeroext %ident_len) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %ident_len to i32
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp14 = icmp ugt ptr %1, %a
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.015 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a, %entry.for.body_crit_edge ]
  %identifier_len = getelementptr inbounds %struct.esas2r_target, ptr %t.015, i32 0, i32 9
  %2 = ptrtoint ptr %identifier_len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %identifier_len, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %ident_len)
  %cmp2 = icmp eq i8 %3, %ident_len
  br i1 %cmp2, label %land.lhs.true, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %identifier4 = getelementptr inbounds %struct.esas2r_target, ptr %t.015, i32 0, i32 11
  %bcmp = tail call i32 @bcmp(ptr %identifier4, ptr %identifier, i32 %conv) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp6 = icmp eq i32 %bcmp, 0
  br i1 %cmp6, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.015, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %t.015, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @esas2r_targ_db_find_by_sas_addr(ptr noundef readonly %a, ptr nocapture noundef readonly %sas_addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp7 = icmp ugt ptr %1, %a
  br i1 %cmp7, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %2 = ptrtoint ptr %sas_addr to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %sas_addr, align 8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %t.08 = phi ptr [ %a, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %sas_addr1 = getelementptr inbounds %struct.esas2r_target, ptr %t.08, i32 0, i32 10
  %4 = ptrtoint ptr %sas_addr1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %sas_addr1, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %5, i64 %3)
  %cmp2 = icmp eq i64 %5, %3
  br i1 %cmp2, label %for.body.cleanup_crit_edge, label %for.inc

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.08, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %t.08, %for.body.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @esas2r_targ_db_find_next_present(ptr nocapture noundef readonly %a, i16 noundef zeroext %target_id) local_unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i16 %target_id, 1
  %umax = call i16 @llvm.umax.i16(i16 %0, i16 256)
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %id.0.in = phi i16 [ %target_id, %entry ], [ %id.0, %while.body.while.cond_crit_edge ]
  %id.0 = add i16 %id.0.in, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %id.0)
  %cmp = icmp ult i16 %id.0, 256
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body:                                       ; preds = %while.cond
  %conv2 = zext i16 %id.0 to i32
  %target_state = getelementptr %struct.esas2r_target, ptr %a, i32 %conv2, i32 2
  %1 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %target_state, align 2
  %cmp6 = icmp eq i8 %2, 5
  br i1 %cmp6, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  %id.0.lcssa = phi i16 [ %id.0, %while.body.while.end_crit_edge ], [ %umax, %while.cond.while.end_crit_edge ]
  ret i16 %id.0.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @esas2r_targ_db_find_by_virt_id(ptr noundef readonly %a, i16 noundef zeroext %virt_id) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp14 = icmp ugt ptr %1, %a
  br i1 %cmp14, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %t.015 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %a, %entry.for.body_crit_edge ]
  %target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.015, i32 0, i32 2
  %2 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp1.not = icmp eq i8 %3, 5
  br i1 %cmp1.not, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end:                                           ; preds = %for.body
  %virt_targ_id = getelementptr inbounds %struct.esas2r_target, ptr %t.015, i32 0, i32 7
  %4 = ptrtoint ptr %virt_targ_id to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %virt_targ_id, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %5, i16 %virt_id)
  %cmp5 = icmp eq i16 %5, %virt_id
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.015, i32 1
  %cmp = icmp ult ptr %incdec.ptr, %1
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %t.015, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i16 @esas2r_targ_db_get_tgt_cnt(ptr noundef %a) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %mem_lock = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 15
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %mem_lock) #11
  %targetdb_end = getelementptr inbounds %struct.esas2r_adapter, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %targetdb_end to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targetdb_end, align 8
  %cmp517 = icmp ugt ptr %1, %a
  br i1 %cmp517, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %devcnt.019 = phi i16 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %t.018 = phi ptr [ %incdec.ptr, %for.body.for.body_crit_edge ], [ %a, %entry.for.body_crit_edge ]
  %target_state = getelementptr inbounds %struct.esas2r_target, ptr %t.018, i32 0, i32 2
  %2 = ptrtoint ptr %target_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %target_state, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %cmp8 = icmp eq i8 %3, 5
  %inc = zext i1 %cmp8 to i16
  %spec.select = add i16 %devcnt.019, %inc
  %incdec.ptr = getelementptr %struct.esas2r_target, ptr %t.018, i32 1
  %cmp5 = icmp ult ptr %incdec.ptr, %1
  br i1 %cmp5, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %devcnt.0.lcssa = phi i16 [ 0, %entry.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %mem_lock, i32 noundef %call2) #11
  ret i16 %devcnt.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umax.i16(i16, i16) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nobuiltin }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
