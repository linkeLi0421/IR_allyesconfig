; ModuleID = '/llk/IR_all_yes/net/ipv4/bpfilter/sockopt.c_pt.bc'
source_filename = "../net/ipv4/bpfilter/sockopt.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+bpfilter_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_bpfilter_ops\09\09\09\09"
module asm "\09.long\09__crc_bpfilter_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpfilter_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22bpfilter_ops\22\09\09\09\09\09"
module asm "__kstrtabns_bpfilter_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+bpfilter_umh_cleanup\22, \22a\22\09"
module asm "\09.weak\09__crc_bpfilter_umh_cleanup\09\09\09\09"
module asm "\09.long\09__crc_bpfilter_umh_cleanup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bpfilter_umh_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22bpfilter_umh_cleanup\22\09\09\09\09\09"
module asm "__kstrtabns_bpfilter_umh_cleanup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.bpfilter_umh_ops = type { %struct.umd_info, %struct.mutex, ptr, ptr }
%struct.umd_info = type { ptr, ptr, ptr, %struct.path, ptr }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@bpfilter_ops = dso_local global { %struct.bpfilter_umh_ops, [36 x i8] } zeroinitializer, align 32
@__kstrtab_bpfilter_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpfilter_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_bpfilter_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpfilter_ops to i32), ptr @__kstrtab_bpfilter_ops, ptr @__kstrtabns_bpfilter_ops }, section "___ksymtab_gpl+bpfilter_ops", align 4
@__kstrtab_bpfilter_umh_cleanup = external dso_local constant [0 x i8], align 1
@__kstrtabns_bpfilter_umh_cleanup = external dso_local constant [0 x i8], align 1
@__ksymtab_bpfilter_umh_cleanup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bpfilter_umh_cleanup to i32), ptr @__kstrtab_bpfilter_umh_cleanup, ptr @__kstrtabns_bpfilter_umh_cleanup }, section "___ksymtab_gpl+bpfilter_umh_cleanup", align 4
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/ipv4/bpfilter/sockopt.c\00", [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_sockopt__217_80_bpfilter_sockopt_init6 = internal global ptr @bpfilter_sockopt_init, section ".initcall6.init", align 4
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bpfilter\00", [23 x i8] zeroinitializer }, align 32
@bpfilter_sockopt_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&bpfilter_ops.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bpfilter_umh\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant [13 x i8] c"bpfilter_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 12, i32 25 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 65, i32 6 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 31, i32 3 }
@___asan_gen_.13 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 74, i32 2 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.20 = private constant [31 x i8] c"../net/ipv4/bpfilter/sockopt.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 76, i32 34 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @__initcall__kmod_sockopt__217_80_bpfilter_sockopt_init6, ptr @__ksymtab_bpfilter_ops, ptr @__ksymtab_bpfilter_umh_cleanup, ptr @bpfilter_ops, ptr @.str, ptr @.str.1, ptr @bpfilter_sockopt_init.__key, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpfilter_ops to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpfilter_sockopt_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @bpfilter_umh_cleanup(ptr nocapture noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pipe_to_umh = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %pipe_to_umh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pipe_to_umh, align 4
  tail call void @fput(ptr noundef %1) #4
  %pipe_from_umh = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %pipe_from_umh to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pipe_from_umh, align 4
  tail call void @fput(ptr noundef %3) #4
  %tgid = getelementptr inbounds %struct.umd_info, ptr %info, i32 0, i32 4
  %4 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tgid, align 4
  tail call void @put_pid(ptr noundef %5) #4
  %6 = ptrtoint ptr %tgid to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %tgid, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpfilter_ip_set_sockopt(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bpfilter_mbox_request(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bpfilter_mbox_request(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen, i1 noundef zeroext %is_set) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 1), i32 noundef 0) #4
  %0 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 2), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 1)) #4
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.1) #4
  tail call void @mutex_lock_nested(ptr noundef getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 1), i32 noundef 0) #4
  %1 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 2), align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.out_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %2 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 4), align 4
  %tobool4.not = icmp eq ptr %2, null
  br i1 %tobool4.not, label %if.end3.if.then9_crit_edge, label %land.lhs.true

if.end3.if.then9_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

land.lhs.true:                                    ; preds = %if.end3
  %call5 = tail call zeroext i1 @thread_group_exited(ptr noundef nonnull %2) #4
  br i1 %call5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %3 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 1), align 4
  tail call void @fput(ptr noundef %3) #4
  %4 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 2), align 4
  tail call void @fput(ptr noundef %4) #4
  %5 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 4), align 4
  tail call void @put_pid(ptr noundef %5) #4
  store ptr null, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 4), align 4
  br label %if.then9

if.end7:                                          ; preds = %land.lhs.true
  %.pr = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 4), align 4
  %tobool8.not = icmp eq ptr %.pr, null
  br i1 %tobool8.not, label %if.end7.if.then9_crit_edge, label %if.end7.if.end14_crit_edge

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end7.if.then9_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then9

if.then9:                                         ; preds = %if.end7.if.then9_crit_edge, %if.then6, %if.end3.if.then9_crit_edge
  %6 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 3), align 4
  %call10 = tail call i32 %6() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.then9.if.end14_crit_edge, label %if.then9.out_crit_edge

if.then9.out_crit_edge:                           ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %out

if.then9.if.end14_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9.if.end14_crit_edge, %if.end7.if.end14_crit_edge
  %7 = load ptr, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 2), align 4
  %call16 = tail call i32 %7(ptr noundef %sk, i32 noundef %optname, [2 x i32] %optval.coerce, i32 noundef %optlen, i1 noundef zeroext %is_set) #4
  br label %out

out:                                              ; preds = %if.end14, %if.then9.out_crit_edge, %if.then.out_crit_edge
  %err.0 = phi i32 [ %call16, %if.end14 ], [ %call10, %if.then9.out_crit_edge ], [ -92, %if.then.out_crit_edge ]
  tail call void @mutex_unlock(ptr noundef getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 1)) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bpfilter_ip_get_sockopt(ptr noundef %sk, i32 noundef %optname, ptr noundef %optval, ptr noundef %optlen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 65) #4
  %0 = tail call i32 @llvm.read_register.i32(metadata !17) #4
  %and.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 4
  %2 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #3, !srcloc !27
  %and.i = and i32 %2, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  %3 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %optlen, i32 -1226833921) #4, !srcloc !30
  %asmresult = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %2) #4, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #4, !srcloc !29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool.not = icmp eq i32 %asmresult, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %asmresult1 = extractvalue { i32, i32 } %3, 1
  %4 = ptrtoint ptr %optval to i32
  %.fca.0.insert = insertvalue [2 x i32] poison, i32 %4, 0
  %.fca.1.insert = insertvalue [2 x i32] %.fca.0.insert, i32 0, 1
  %call3 = tail call fastcc i32 @bpfilter_mbox_request(ptr noundef %sk, i32 noundef %optname, [2 x i32] %.fca.1.insert, i32 noundef %asmresult1, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -14, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpfilter_sockopt_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__mutex_init(ptr noundef getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 1), ptr noundef nonnull @.str.2, ptr noundef nonnull @bpfilter_sockopt_init.__key) #4
  store ptr null, ptr getelementptr inbounds (%struct.bpfilter_umh_ops, ptr @bpfilter_ops, i32 0, i32 0, i32 4), align 4
  store ptr @.str.3, ptr @bpfilter_ops, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @thread_group_exited(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind readonly }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15}
!llvm.named.register.sp = !{!17}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__ksymtab_bpfilter_ops, !1, !"__ksymtab_bpfilter_ops", i1 false, i1 false}
!1 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 13, i32 1}
!2 = !{ptr @__ksymtab_bpfilter_umh_cleanup, !3, !"__ksymtab_bpfilter_umh_cleanup", i1 false, i1 false}
!3 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 22, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 65, i32 6}
!6 = !{ptr @__initcall__kmod_sockopt__217_80_bpfilter_sockopt_init6, !7, !"__initcall__kmod_sockopt__217_80_bpfilter_sockopt_init6", i1 false, i1 false}
!7 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 80, i32 1}
!8 = !{ptr @bpfilter_ops, !9, !"bpfilter_ops", i1 false, i1 false}
!9 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 12, i32 25}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 31, i32 3}
!12 = !{ptr @bpfilter_sockopt_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 74, i32 2}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../net/ipv4/bpfilter/sockopt.c", i32 76, i32 34}
!17 = !{!"sp"}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 4553226}
!28 = !{i64 4553423}
!29 = !{i64 2152038656}
!30 = !{i64 2153510289, i64 2153510569, i64 2153510903, i64 2153511237}
