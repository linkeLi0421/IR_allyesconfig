; ModuleID = '/llk/IR_all_yes/net/dccp/ccid.c_pt.bc'
source_filename = "../net/dccp/ccid.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ccid_operations = type { i8, i32, ptr, ptr, ptr, [32 x i8], [32 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ccid = type { ptr, [0 x i8] }
%struct.__va_list = type { ptr }

@ccids = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @ccid2_ops, ptr @ccid3_ops], [24 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/dccp/ccid.c\00", [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ccid2_ops = external dso_local global %struct.ccid_operations, align 4
@ccid3_ops = external dso_local global %struct.ccid_operations, align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccid%u_hc_rx_sock\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccid%u_hc_tx_sock\00", [46 x i8] zeroinitializer }, align 32
@ccid_activate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016DCCP: Activated CCID %d (%s)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ccid_activate\00", [18 x i8] zeroinitializer }, align 32
@ccid_activate._entry_ptr = internal global ptr @ccid_activate._entry, section ".printk_index", align 4
@ccid_deactivate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016DCCP: Deactivated CCID %d (%s)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ccid_deactivate\00", [16 x i8] zeroinitializer }, align 32
@ccid_deactivate._entry_ptr = internal global ptr @ccid_deactivate._entry, section ".printk_index", align 4
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"ccids\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 16, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 69, i32 6 }
@___asan_gen_.17 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 174, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 105, i32 13 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 113, i32 13 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 118, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private constant [19 x i8] c"../net/dccp/ccid.c\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 136, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @ccid_activate._entry, ptr @ccid_activate._entry_ptr, ptr @ccid_deactivate._entry, ptr @ccid_deactivate._entry_ptr, ptr @ccids, ptr @.str, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccids to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid_activate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccid_deactivate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ccid_support_check(ptr nocapture noundef readonly %ccid_array, i8 noundef zeroext %array_len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %array_len)
  %cmp.not7 = icmp eq i8 %array_len, 0
  br i1 %cmp.not7, label %entry.return_crit_edge, label %while.body.lr.ph

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

while.body.lr.ph:                                 ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid2_ops to i32))
  %0 = load i8, ptr @ccid2_ops, align 4
  %1 = zext i8 %array_len to i32
  br label %while.body

while.body:                                       ; preds = %ccid_by_number.exit.while.body_crit_edge, %while.body.lr.ph
  %indvars.iv = phi i32 [ %1, %while.body.lr.ph ], [ %2, %ccid_by_number.exit.while.body_crit_edge ]
  %2 = add nsw i32 %indvars.iv, -1
  %arrayidx = getelementptr i8, ptr %ccid_array, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %4)
  %cmp2.i = icmp eq i8 %0, %4
  br i1 %cmp2.i, label %while.body.ccid_by_number.exit_crit_edge, label %for.cond.i

while.body.ccid_by_number.exit_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %ccid_by_number.exit

for.cond.i:                                       ; preds = %while.body
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid3_ops to i32))
  %5 = load i8, ptr @ccid3_ops, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %4)
  %cmp2.1.i = icmp eq i8 %5, %4
  br i1 %cmp2.1.i, label %for.cond.i.ccid_by_number.exit_crit_edge, label %for.cond.i.return_crit_edge

for.cond.i.return_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.i.ccid_by_number.exit_crit_edge:         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %ccid_by_number.exit

ccid_by_number.exit:                              ; preds = %for.cond.i.ccid_by_number.exit_crit_edge, %while.body.ccid_by_number.exit_crit_edge
  %cmp.not.wide = icmp eq i32 %2, 0
  br i1 %cmp.not.wide, label %ccid_by_number.exit.return_crit_edge, label %ccid_by_number.exit.while.body_crit_edge

ccid_by_number.exit.while.body_crit_edge:         ; preds = %ccid_by_number.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

ccid_by_number.exit.return_crit_edge:             ; preds = %ccid_by_number.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

return:                                           ; preds = %ccid_by_number.exit.return_crit_edge, %for.cond.i.return_crit_edge, %entry.return_crit_edge
  %cmp.not.lcssa = phi i1 [ true, %entry.return_crit_edge ], [ false, %for.cond.i.return_crit_edge ], [ true, %ccid_by_number.exit.return_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccid_get_builtin_ccids(ptr nocapture noundef %ccid_array, ptr nocapture noundef %array_len) local_unnamed_addr #1 align 64 {
kmalloc.exit:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #11
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %cond.i, i32 noundef 2) #14
  %5 = ptrtoint ptr %ccid_array to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i, ptr %ccid_array, align 4
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %kmalloc.exit.return_crit_edge, label %for.cond.preheader

kmalloc.exit.return_crit_edge:                    ; preds = %kmalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.cond.preheader:                               ; preds = %kmalloc.exit
  %6 = ptrtoint ptr %array_len to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %array_len, align 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader
  %storemerge14 = phi i8 [ 0, %for.cond.preheader ], [ %add, %for.body.for.body_crit_edge ]
  %conv = zext i8 %storemerge14 to i32
  %arrayidx = getelementptr [2 x ptr], ptr @ccids, i32 0, i32 %conv
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 4
  %11 = ptrtoint ptr %ccid_array to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ccid_array, align 4
  %arrayidx5 = getelementptr i8, ptr %12, i32 %conv
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx5, align 1
  %14 = ptrtoint ptr %array_len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %array_len, align 1
  %add = add i8 %15, 1
  store i8 %add, ptr %array_len, align 1
  %cmp2 = icmp ult i8 %add, 2
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.return_crit_edge

for.body.return_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

return:                                           ; preds = %for.body.return_crit_edge, %kmalloc.exit.return_crit_edge
  %retval.0 = phi i32 [ -105, %kmalloc.exit.return_crit_edge ], [ 0, %for.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccid_getsockopt_builtin_ccids(ptr nocapture noundef readnone %sk, i32 noundef %len, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !25) #11
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %and.i.i = and i32 %3, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %cond.i.i = select i1 %tobool.not.i.i, i32 3264, i32 2592
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef %cond.i.i, i32 noundef 2) #14
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %for.body.i.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i.preheader:                             ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid2_ops to i32))
  %5 = load i8, ptr @ccid2_ops, align 4
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %call7.i.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid3_ops to i32))
  %7 = load i8, ptr @ccid3_ops, align 4
  %arrayidx5.i.1 = getelementptr i8, ptr %call7.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx5.i.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %arrayidx5.i.1, align 1
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 69) #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !25) #11
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 4
  %11 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !35
  %and.i = and i32 %11, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #11, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  %12 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %optlen, i32 2, i32 -1226833921) #11, !srcloc !38
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %11) #11, !srcloc !36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !37
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  br i1 %tobool3.not, label %if.else, label %for.body.i.preheader.if.end14_crit_edge

for.body.i.preheader.if.end14_crit_edge:          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.else:                                          ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp = icmp sgt i32 %len, 0
  br i1 %cmp, label %if.end59.i.i, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.end59.i.i:                                     ; preds = %if.else
  %13 = tail call i32 @llvm.umin.i32(i32 %len, i32 2)
  tail call void @__check_object_size(ptr noundef nonnull %call7.i.i, i32 noundef %13, i1 noundef zeroext true) #11
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #11
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %if.end59.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.end59.i.i.copy_to_user.exit_crit_edge:         ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.end59.i.i
  %14 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %optval, i32 %13, i32 -1226833920) #15, !srcloc !39
  %asmresult.i.i = extractvalue { i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call7.i.i, i32 noundef %13) #11
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %optval, ptr noundef nonnull %call7.i.i, i32 noundef %13) #11
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.end59.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %13, %if.end59.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %13, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool11.not = icmp eq i32 %n.addr.0.i, 0
  %spec.select = select i1 %tobool11.not, i32 0, i32 -14
  br label %if.end14

if.end14:                                         ; preds = %copy_to_user.exit, %if.else.if.end14_crit_edge, %for.body.i.preheader.if.end14_crit_edge
  %err.0 = phi i32 [ 0, %if.else.if.end14_crit_edge ], [ -14, %for.body.i.preheader.if.end14_crit_edge ], [ %spec.select, %copy_to_user.exit ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end14 ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ccid_new(i8 noundef zeroext %id, ptr noundef %sk, i1 noundef zeroext %rx) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid2_ops to i32))
  %0 = load i8, ptr @ccid2_ops, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %0, i8 %id)
  %cmp2.i = icmp eq i8 %0, %id
  br i1 %cmp2.i, label %entry.if.end_crit_edge, label %for.cond.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.i:                                       ; preds = %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid3_ops to i32))
  %1 = load i8, ptr @ccid3_ops, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %id)
  %cmp2.1.i = icmp eq i8 %1, %id
  br i1 %cmp2.1.i, label %for.cond.i.if.end_crit_edge, label %for.cond.i.out_crit_edge

for.cond.i.out_crit_edge:                         ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end:                                           ; preds = %for.cond.i.if.end_crit_edge, %entry.if.end_crit_edge
  %retval.0.i.ph = phi ptr [ @ccid2_ops, %entry.if.end_crit_edge ], [ @ccid3_ops, %for.cond.i.if.end_crit_edge ]
  %ccid_hc_rx_slab = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 3
  %ccid_hc_tx_slab = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 4
  %cond.in = select i1 %rx, ptr %ccid_hc_rx_slab, ptr %ccid_hc_tx_slab
  %2 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %cond = load ptr, ptr %cond.in, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !25) #11
  %and.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %6, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 3264, i32 2592
  %call2 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %cond, i32 noundef %cond.i) #11
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end5:                                          ; preds = %if.end
  %7 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i.ph, ptr %call2, align 8
  %add.ptr = getelementptr %struct.ccid, ptr %call2, i32 1
  br i1 %rx, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.end5
  %ccid_hc_rx_obj_size = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 7
  %8 = ptrtoint ptr %ccid_hc_rx_obj_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ccid_hc_rx_obj_size, align 4
  %10 = call ptr @memset(ptr %add.ptr, i32 0, i32 %9)
  %ccid_hc_rx_init = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 9
  %11 = ptrtoint ptr %ccid_hc_rx_init to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ccid_hc_rx_init, align 4
  %cmp10.not = icmp eq ptr %12, null
  br i1 %cmp10.not, label %if.then8.out_crit_edge, label %land.lhs.true

if.then8.out_crit_edge:                           ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true:                                    ; preds = %if.then8
  %call13 = tail call i32 %12(ptr noundef nonnull %call2, ptr noundef %sk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 0
  br i1 %cmp14.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.cond.end33_crit_edge

land.lhs.true.cond.end33_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.end5
  %ccid_hc_tx_obj_size = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 8
  %13 = ptrtoint ptr %ccid_hc_tx_obj_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccid_hc_tx_obj_size, align 4
  %15 = call ptr @memset(ptr %add.ptr, i32 0, i32 %14)
  %ccid_hc_tx_init = getelementptr inbounds %struct.ccid_operations, ptr %retval.0.i.ph, i32 0, i32 10
  %16 = ptrtoint ptr %ccid_hc_tx_init to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ccid_hc_tx_init, align 4
  %cmp19.not = icmp eq ptr %17, null
  br i1 %cmp19.not, label %if.else.out_crit_edge, label %land.lhs.true20

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

land.lhs.true20:                                  ; preds = %if.else
  %call23 = tail call i32 %17(ptr noundef nonnull %call2, ptr noundef %sk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24.not = icmp eq i32 %call23, 0
  br i1 %cmp24.not, label %land.lhs.true20.out_crit_edge, label %land.lhs.true20.cond.end33_crit_edge

land.lhs.true20.cond.end33_crit_edge:             ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end33

land.lhs.true20.out_crit_edge:                    ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

out:                                              ; preds = %cond.end33, %land.lhs.true20.out_crit_edge, %if.else.out_crit_edge, %land.lhs.true.out_crit_edge, %if.then8.out_crit_edge, %if.end.out_crit_edge, %for.cond.i.out_crit_edge
  %ccid.0 = phi ptr [ null, %if.end.out_crit_edge ], [ null, %cond.end33 ], [ %call2, %land.lhs.true.out_crit_edge ], [ %call2, %if.then8.out_crit_edge ], [ %call2, %land.lhs.true20.out_crit_edge ], [ %call2, %if.else.out_crit_edge ], [ null, %for.cond.i.out_crit_edge ]
  ret ptr %ccid.0

cond.end33:                                       ; preds = %land.lhs.true20.cond.end33_crit_edge, %land.lhs.true.cond.end33_crit_edge
  %cond34.in = phi ptr [ %ccid_hc_rx_slab, %land.lhs.true.cond.end33_crit_edge ], [ %ccid_hc_tx_slab, %land.lhs.true20.cond.end33_crit_edge ]
  %18 = ptrtoint ptr %cond34.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %cond34 = load ptr, ptr %cond34.in, align 4
  tail call void @kmem_cache_free(ptr noundef %cond34, ptr noundef nonnull %call2) #11
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccid_hc_rx_delete(ptr noundef %ccid, ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %ccid, null
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ccid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccid, align 4
  %ccid_hc_rx_exit = getelementptr inbounds %struct.ccid_operations, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %ccid_hc_rx_exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccid_hc_rx_exit, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %ccid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccid, align 4
  %ccid_hc_rx_slab = getelementptr inbounds %struct.ccid_operations, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccid_hc_rx_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %ccid) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccid_hc_tx_delete(ptr noundef %ccid, ptr noundef %sk) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %ccid, null
  br i1 %cmp.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end6

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %ccid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccid, align 4
  %ccid_hc_tx_exit = getelementptr inbounds %struct.ccid_operations, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ccid_hc_tx_exit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ccid_hc_tx_exit, align 4
  %cmp1.not = icmp eq ptr %3, null
  br i1 %cmp1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %3(ptr noundef %sk) #11
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %4 = ptrtoint ptr %ccid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ccid, align 4
  %ccid_hc_tx_slab = getelementptr inbounds %struct.ccid_operations, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %ccid_hc_tx_slab to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ccid_hc_tx_slab, align 4
  tail call void @kmem_cache_free(ptr noundef %7, ptr noundef nonnull %ccid) #11
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccid_initialize_builtins() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tfrc_lib_init() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp5.not17 = phi i1 [ false, %for.inc.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %i.016 = phi i32 [ 1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @ccids, i32 0, i32 %i.016
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call fastcc i32 @ccid_activate(ptr noundef %1) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %for.inc, label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.body
  br i1 %cmp5.not17, label %while.cond.preheader.while.end_crit_edge, label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

for.inc:                                          ; preds = %for.body
  br i1 %cmp5.not17, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

while.body:                                       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  tail call fastcc void @ccid_deactivate(ptr noundef nonnull @ccid2_ops)
  br label %while.end

while.end:                                        ; preds = %while.body, %while.cond.preheader.while.end_crit_edge
  tail call void @tfrc_lib_exit() #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %while.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tfrc_lib_init() local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccid_activate(ptr noundef %ccid_ops) unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ccid_hc_rx_obj_size = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 7
  %0 = ptrtoint ptr %ccid_hc_rx_obj_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ccid_hc_rx_obj_size, align 4
  %ccid_hc_rx_slab_name = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 5
  %2 = ptrtoint ptr %ccid_ops to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ccid_ops, align 4
  %conv = zext i8 %3 to i32
  %call = tail call ptr (i32, ptr, ptr, ...) @ccid_kmem_cache_create(i32 noundef %1, ptr noundef %ccid_hc_rx_slab_name, ptr noundef nonnull @.str.4, i32 noundef %conv)
  %ccid_hc_rx_slab = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 3
  %4 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %ccid_hc_rx_slab, align 4
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %ccid_hc_tx_obj_size = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 8
  %5 = ptrtoint ptr %ccid_hc_tx_obj_size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ccid_hc_tx_obj_size, align 4
  %ccid_hc_tx_slab_name = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 6
  %7 = ptrtoint ptr %ccid_ops to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ccid_ops, align 4
  %conv5 = zext i8 %8 to i32
  %call6 = tail call ptr (i32, ptr, ptr, ...) @ccid_kmem_cache_create(i32 noundef %6, ptr noundef %ccid_hc_tx_slab_name, ptr noundef nonnull @.str.5, i32 noundef %conv5)
  %ccid_hc_tx_slab = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 4
  %9 = ptrtoint ptr %ccid_hc_tx_slab to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call6, ptr %ccid_hc_tx_slab, align 4
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %out_free_rx_slab, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %ccid_ops to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ccid_ops, align 4
  %conv13 = zext i8 %11 to i32
  %ccid_name = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 2
  %12 = ptrtoint ptr %ccid_name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ccid_name, align 4
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv13, ptr noundef %13) #17
  br label %out

out:                                              ; preds = %out_free_rx_slab, %do.end, %entry.out_crit_edge
  %err.0 = phi i32 [ -105, %entry.out_crit_edge ], [ -105, %out_free_rx_slab ], [ 0, %do.end ]
  ret i32 %err.0

out_free_rx_slab:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ccid_hc_rx_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %15) #11
  %16 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %ccid_hc_rx_slab, align 4
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccid_deactivate(ptr nocapture noundef %ccid_ops) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %ccid_hc_tx_slab = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 4
  %0 = ptrtoint ptr %ccid_hc_tx_slab to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ccid_hc_tx_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  %2 = ptrtoint ptr %ccid_hc_tx_slab to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %ccid_hc_tx_slab, align 4
  %ccid_hc_rx_slab = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 3
  %3 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ccid_hc_rx_slab, align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  %5 = ptrtoint ptr %ccid_hc_rx_slab to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ccid_hc_rx_slab, align 4
  %6 = ptrtoint ptr %ccid_ops to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ccid_ops, align 4
  %conv = zext i8 %7 to i32
  %ccid_name = getelementptr inbounds %struct.ccid_operations, ptr %ccid_ops, i32 0, i32 2
  %8 = ptrtoint ptr %ccid_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ccid_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv, ptr noundef %9) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tfrc_lib_exit() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ccid_cleanup_builtins() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 4) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 4), align 4
  tail call void @kmem_cache_destroy(ptr noundef %0) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 4) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 3) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 3), align 4
  tail call void @kmem_cache_destroy(ptr noundef %1) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 3) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 3), align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid2_ops to i32))
  %2 = load i8, ptr @ccid2_ops, align 4
  %conv.i = zext i8 %2 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 2) to i32))
  %3 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid2_ops, i32 0, i32 2), align 4
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i, ptr noundef %3) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 4) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 4), align 4
  tail call void @kmem_cache_destroy(ptr noundef %4) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 4) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 4), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 3) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 3), align 4
  tail call void @kmem_cache_destroy(ptr noundef %5) #11
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 3) to i32))
  store ptr null, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 3), align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @ccid3_ops to i32))
  %6 = load i8, ptr @ccid3_ops, align 4
  %conv.i.1 = zext i8 %6 to i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.ccid_operations, ptr @ccid3_ops, i32 0, i32 2), align 4
  %call.i.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv.i.1, ptr noundef %7) #17
  tail call void @tfrc_lib_exit() #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ccid_kmem_cache_create(i32 noundef %obj_size, ptr noundef %slab_name_fmt, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #1 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !40
  call void @llvm.va_start(ptr nonnull %args)
  %1 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %1)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call = call i32 @vsnprintf(ptr noundef %slab_name_fmt, i32 noundef 32, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %add = add i32 %obj_size, 4
  %call1 = call ptr @kmem_cache_create(ptr noundef %slab_name_fmt, i32 noundef %add, i32 noundef 0, i32 noundef 8192, ptr noundef null) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret ptr %call1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_destroy(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind readnone }
attributes #16 = { cold }
attributes #17 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !19, !20, !22, !23, !24}
!llvm.named.register.sp = !{!25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/dccp/ccid.c", i32 69, i32 6}
!2 = !{ptr @ccids, !3, !"ccids", i1 false, i1 false}
!3 = !{!"../net/dccp/ccid.c", i32 16, i32 32}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = distinct !{null, !5, !"<string literal>", i1 false, i1 false}
!7 = distinct !{null, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../net/dccp/ccid.c", i32 105, i32 13}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/dccp/ccid.c", i32 113, i32 13}
!15 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/dccp/ccid.c", i32 118, i32 2}
!17 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @ccid_activate._entry, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @ccid_activate._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../net/dccp/ccid.c", i32 136, i32 2}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @ccid_deactivate._entry, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @ccid_deactivate._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{!"sp"}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i64 6119550}
!36 = !{i64 6119747}
!37 = !{i64 2153604980}
!38 = !{i64 2158664546, i64 2158664826, i64 2158665160, i64 2158665494}
!39 = !{i64 2153624676, i64 2153624701}
!40 = !{!"auto-init"}
