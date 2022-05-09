; ModuleID = '/llk/IR_all_yes/net/nfc/hci/llc.c_pt.bc'
source_filename = "../net/nfc/hci/llc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+nfc_llc_start\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_llc_start\09\09\09\09"
module asm "\09.long\09__crc_nfc_llc_start\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_llc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_llc_start\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_llc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+nfc_llc_stop\22, \22a\22\09"
module asm "\09.weak\09__crc_nfc_llc_stop\09\09\09\09"
module asm "\09.long\09__crc_nfc_llc_stop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_llc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_llc_stop\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_llc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_llc_engine = type { ptr, ptr, %struct.list_head }
%struct.nfc_llc = type { ptr, ptr, i32, i32 }
%struct.nfc_llc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@llc_engines = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @llc_engines, ptr @llc_engines }, [24 x i8] zeroinitializer }, align 32
@__kstrtab_nfc_llc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_llc_start = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_llc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_llc_start to i32), ptr @__kstrtab_nfc_llc_start, ptr @__kstrtabns_nfc_llc_start }, section "___ksymtab+nfc_llc_start", align 4
@__kstrtab_nfc_llc_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_llc_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_llc_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_llc_stop to i32), ptr @__kstrtab_nfc_llc_stop, ptr @__kstrtabns_nfc_llc_stop }, section "___ksymtab+nfc_llc_stop", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"llc_engines\00", align 1
@___asan_gen_.2 = private constant [21 x i8] c"../net/nfc/hci/llc.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 12, i32 8 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_nfc_llc_start, ptr @__ksymtab_nfc_llc_stop, ptr @llc_engines], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @llc_engines to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nfc_llc_nop_register() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nfc_llc_shdlc_register() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

exit:                                             ; preds = %if.end.exit_crit_edge, %entry.exit_crit_edge
  %r.0 = phi i32 [ %call, %entry.exit_crit_edge ], [ %call1, %if.end.exit_crit_edge ]
  tail call void @nfc_llc_exit()
  br label %cleanup

cleanup:                                          ; preds = %exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %r.0, %exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_nop_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_shdlc_register() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llc_exit() local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @llc_engines, align 4
  %cmp.not18 = icmp eq ptr %0, @llc_engines
  br i1 %cmp.not18, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in19 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %0, %entry.for.body_crit_edge ]
  %llc_engine.0 = getelementptr i8, ptr %.pn.in19, i32 -8
  %1 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in19, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in19) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %.pn.in19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %8 = ptrtoint ptr %.pn.in19 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in19, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in19, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %10 = ptrtoint ptr %llc_engine.0 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %llc_engine.0, align 4
  tail call void @kfree(ptr noundef %11) #6
  tail call void @kfree(ptr noundef %llc_engine.0) #6
  %cmp.not = icmp eq ptr %.pn, @llc_engines
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_register(ptr noundef %name, ptr noundef %ops) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 16) #9
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call noalias ptr @kstrdup(ptr noundef %name, i32 noundef 3264) #6
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call1, ptr %call7.i.i, align 8
  %cmp4 = icmp eq ptr %call1, null
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %ops7 = getelementptr inbounds %struct.nfc_llc_engine, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %ops, ptr %ops7, align 4
  %entry8 = getelementptr inbounds %struct.nfc_llc_engine, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %entry8, ptr %entry8, align 8
  %prev.i = getelementptr inbounds %struct.nfc_llc_engine, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %entry8, ptr %prev.i, align 4
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @llc_engines, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %entry8, ptr noundef %5, ptr noundef nonnull @llc_engines) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %entry8, ptr getelementptr inbounds (%struct.list_head, ptr @llc_engines, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %entry8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @llc_engines, ptr %entry8, align 8
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %entry8, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end6.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then5 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llc_unregister(ptr nocapture noundef readonly %name) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @llc_engines, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @llc_engines
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %llc_engine.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %llc_engine.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %llc_engine.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #10
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %nfc_llc_name_to_engine.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nfc_llc_name_to_engine.exit:                      ; preds = %for.body.i
  %llc_engine.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp = icmp eq ptr %llc_engine.0.i.le, null
  br i1 %cmp, label %nfc_llc_name_to_engine.exit.cleanup_crit_edge, label %if.end

nfc_llc_name_to_engine.exit.cleanup_crit_edge:    ; preds = %nfc_llc_name_to_engine.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nfc_llc_name_to_engine.exit
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %llc_engine.0.i.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %llc_engine.0.i.le, align 4
  tail call void @kfree(ptr noundef %12) #6
  tail call void @kfree(ptr noundef nonnull %llc_engine.0.i.le) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %nfc_llc_name_to_engine.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @nfc_llc_allocate(ptr nocapture noundef readonly %name, ptr noundef %hdev, ptr noundef %xmit_to_drv, ptr noundef %rcv_to_hci, i32 noundef %tx_headroom, i32 noundef %tx_tailroom, ptr noundef %llc_failure) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ @llc_engines, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, @llc_engines
  br i1 %cmp.not.i, label %for.cond.i.cleanup_crit_edge, label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %llc_engine.0.i = getelementptr i8, ptr %.pn.i, i32 -8
  %1 = ptrtoint ptr %llc_engine.0.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %llc_engine.0.i, align 4
  %call.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef %name) #10
  %cmp3.i = icmp eq i32 %call.i, 0
  br i1 %cmp3.i, label %nfc_llc_name_to_engine.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

nfc_llc_name_to_engine.exit:                      ; preds = %for.body.i
  %llc_engine.0.i.le = getelementptr i8, ptr %.pn.i, i32 -8
  %cmp = icmp eq ptr %llc_engine.0.i.le, null
  br i1 %cmp, label %nfc_llc_name_to_engine.exit.cleanup_crit_edge, label %if.end

nfc_llc_name_to_engine.exit.cleanup_crit_edge:    ; preds = %nfc_llc_name_to_engine.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %nfc_llc_name_to_engine.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #9
  %cmp2 = icmp eq ptr %call7.i.i, null
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %ops = getelementptr i8, ptr %.pn.i, i32 -4
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %rx_headroom = getelementptr inbounds %struct.nfc_llc, ptr %call7.i.i, i32 0, i32 2
  %rx_tailroom = getelementptr inbounds %struct.nfc_llc, ptr %call7.i.i, i32 0, i32 3
  %call5 = tail call ptr %7(ptr noundef %hdev, ptr noundef %xmit_to_drv, ptr noundef %rcv_to_hci, i32 noundef %tx_headroom, i32 noundef %tx_tailroom, ptr noundef %rx_headroom, ptr noundef %rx_tailroom, ptr noundef %llc_failure) #6
  %8 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %call7.i.i, align 8
  %cmp7 = icmp eq ptr %call5, null
  br i1 %cmp7, label %if.then8, label %if.end9

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops, align 4
  %ops11 = getelementptr inbounds %struct.nfc_llc, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %ops11 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %ops11, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.then8, %if.end.cleanup_crit_edge, %nfc_llc_name_to_engine.exit.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then8 ], [ %call7.i.i, %if.end9 ], [ null, %nfc_llc_name_to_engine.exit.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %for.cond.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llc_free(ptr noundef %llc) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_llc, ptr %llc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %deinit = getelementptr inbounds %struct.nfc_llc_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %deinit, align 4
  tail call void %3(ptr noundef %llc) #6
  tail call void @kfree(ptr noundef %llc) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_start(ptr noundef %llc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_llc, ptr %llc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %start = getelementptr inbounds %struct.nfc_llc_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %start, align 4
  %call = tail call i32 %3(ptr noundef %llc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_stop(ptr noundef %llc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_llc, ptr %llc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %stop = getelementptr inbounds %struct.nfc_llc_ops, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stop to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stop, align 4
  %call = tail call i32 %3(ptr noundef %llc) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nfc_llc_rcv_from_drv(ptr noundef %llc, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_llc, ptr %llc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %rcv_from_drv = getelementptr inbounds %struct.nfc_llc_ops, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rcv_from_drv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rcv_from_drv, align 4
  tail call void %3(ptr noundef %llc, ptr noundef %skb) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_xmit_from_hci(ptr noundef %llc, ptr noundef %skb) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ops = getelementptr inbounds %struct.nfc_llc, ptr %llc, i32 0, i32 1
  %0 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops, align 4
  %xmit_from_hci = getelementptr inbounds %struct.nfc_llc_ops, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %xmit_from_hci to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %xmit_from_hci, align 4
  %call = tail call i32 %3(ptr noundef %llc, ptr noundef %skb) #6
  ret i32 %call
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @nfc_llc_get_data(ptr nocapture noundef readonly %llc) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %llc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %llc, align 4
  ret ptr %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @__ksymtab_nfc_llc_start, !1, !"__ksymtab_nfc_llc_start", i1 false, i1 false}
!1 = !{!"../net/nfc/hci/llc.c", i32 129, i32 1}
!2 = !{ptr @__ksymtab_nfc_llc_stop, !3, !"__ksymtab_nfc_llc_stop", i1 false, i1 false}
!3 = !{!"../net/nfc/hci/llc.c", i32 135, i32 1}
!4 = !{ptr @llc_engines, !5, !"llc_engines", i1 false, i1 false}
!5 = !{!"../net/nfc/hci/llc.c", i32 12, i32 8}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
