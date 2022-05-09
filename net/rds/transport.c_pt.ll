; ModuleID = '/llk/IR_all_yes/net/rds/transport.c_pt.bc'
source_filename = "../net/rds/transport.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+rds_trans_register\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_trans_register\09\09\09\09"
module asm "\09.long\09__crc_rds_trans_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_trans_register:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_trans_register\22\09\09\09\09\09"
module asm "__kstrtabns_rds_trans_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+rds_trans_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_rds_trans_unregister\09\09\09\09"
module asm "\09.long\09__crc_rds_trans_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rds_trans_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22rds_trans_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_rds_trans_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.rds_transport = type { [16 x i8], %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@rds_trans_sem = internal global { %struct.rw_semaphore, [32 x i8] } { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @rds_trans_sem, i64 56), ptr getelementptr (i8, ptr @rds_trans_sem, i64 56) }, ptr @rds_trans_sem, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [32 x i8] zeroinitializer }, align 32
@transports = internal global { [3 x ptr], [20 x i8] } zeroinitializer, align 32
@rds_trans_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013RDS Transport type %d already registered\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rds_trans_register\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/rds/transport.c\00", [44 x i8] zeroinitializer }, align 32
@rds_trans_register._entry_ptr = internal global ptr @rds_trans_register._entry, section ".printk_index", align 4
@rds_trans_register._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016Registered RDS/%s transport\0A\00", [33 x i8] zeroinitializer }, align 32
@rds_trans_register._entry_ptr.5 = internal global ptr @rds_trans_register._entry.3, section ".printk_index", align 4
@__kstrtab_rds_trans_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_trans_register = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_trans_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_trans_register to i32), ptr @__kstrtab_rds_trans_register, ptr @__kstrtabns_rds_trans_register }, section "___ksymtab_gpl+rds_trans_register", align 4
@rds_trans_unregister._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016Unregistered RDS/%s transport\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rds_trans_unregister\00", [43 x i8] zeroinitializer }, align 32
@rds_trans_unregister._entry_ptr = internal global ptr @rds_trans_unregister._entry, section ".printk_index", align 4
@__kstrtab_rds_trans_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_rds_trans_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_rds_trans_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rds_trans_unregister to i32), ptr @__kstrtab_rds_trans_unregister, ptr @__kstrtabns_rds_trans_unregister }, section "___ksymtab_gpl+rds_trans_unregister", align 4
@rds_loop_transport = external dso_local global %struct.rds_transport, align 4
@rds_trans_modules = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.10, ptr null, ptr @.str.11], [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rds_trans_sem.wait_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rds_trans_sem\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rds_rdma\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rds_tcp\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [14 x i8] c"rds_trans_sem\00", align 1
@___asan_gen_.15 = private unnamed_addr constant [11 x i8] c"transports\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 47, i32 30 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 57, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 61, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 73, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [18 x i8] c"rds_trans_modules\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 41, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 48, i32 8 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 42, i32 19 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private constant [23 x i8] c"../net/rds/transport.c\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 44, i32 20 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_rds_trans_register, ptr @__ksymtab_rds_trans_unregister, ptr @rds_trans_register._entry, ptr @rds_trans_register._entry.3, ptr @rds_trans_register._entry_ptr, ptr @rds_trans_register._entry_ptr.5, ptr @rds_trans_unregister._entry, ptr @rds_trans_unregister._entry_ptr, ptr @rds_trans_sem, ptr @transports, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @rds_trans_modules, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_trans_sem to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @transports to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_trans_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_trans_register._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_trans_unregister._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rds_trans_modules to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_trans_register(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strlen(ptr noundef %trans) #8
  %0 = add i32 %call, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -17, i32 %0)
  %cmp = icmp ult i32 %0, -17
  br i1 %cmp, label %do.body2, label %do.end5, !prof !40

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/rds/transport.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 52, 0\0A.popsection", ""() #5, !srcloc !41
  unreachable

do.end5:                                          ; preds = %entry
  tail call void @down_write(ptr noundef nonnull @rds_trans_sem) #5
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %trans, i32 0, i32 4
  %1 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %t_type, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @transports, i32 0, i32 %2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.else, label %do.end9

do.end9:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %2) #9
  br label %if.end20

if.else:                                          ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %trans, ptr %arrayidx, align 4
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %trans) #9
  br label %if.end20

if.end20:                                         ; preds = %if.else, %do.end9
  tail call void @up_write(ptr noundef nonnull @rds_trans_sem) #5
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_trans_unregister(ptr noundef %trans) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_write(ptr noundef nonnull @rds_trans_sem) #5
  %t_type = getelementptr inbounds %struct.rds_transport, ptr %trans, i32 0, i32 4
  %0 = ptrtoint ptr %t_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %t_type, align 4
  %arrayidx = getelementptr [3 x ptr], ptr @transports, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %trans) #9
  tail call void @up_write(ptr noundef nonnull @rds_trans_sem) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @rds_trans_put(ptr noundef readonly %trans) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %trans, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %t_owner = getelementptr inbounds %struct.rds_transport, ptr %trans, i32 0, i32 2
  %0 = ptrtoint ptr %t_owner to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %t_owner, align 4
  tail call void @module_put(ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_trans_get_preferred(ptr noundef %net, ptr noundef %addr, i32 noundef %scope_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %addr, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %3, %1
  %arrayidx4.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 2
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %xor.i = xor i32 %5, 65535
  %or5.i = or i32 %xor.i, %or.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %cmp.i = icmp eq i32 %or5.i, 0
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 127, i8 %7)
  %cmp = icmp eq i8 %7, 127
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  %or5.i35 = or i32 %or.i, %5
  %arrayidx7.i = getelementptr [4 x i32], ptr %addr, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx7.i, align 4
  %xor.i36 = xor i32 %9, 1
  %or8.i = or i32 %or5.i35, %xor.i36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or8.i)
  %cmp.i37 = icmp eq i32 %or8.i, 0
  br i1 %cmp.i37, label %if.else.cleanup_crit_edge, label %if.else.if.end6_crit_edge

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.else.if.end6_crit_edge, %if.then.if.end6_crit_edge
  tail call void @down_read(ptr noundef nonnull @rds_trans_sem) #5
  %10 = load ptr, ptr @transports, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %if.end6.for.inc_crit_edge, label %land.lhs.true

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end6
  %laddr_check = getelementptr inbounds %struct.rds_transport, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %laddr_check to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %laddr_check, align 4
  %call10 = tail call i32 %12(ptr noundef %net, ptr noundef %addr, i32 noundef %scope_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true13:                                  ; preds = %land.lhs.true
  %t_owner = getelementptr inbounds %struct.rds_transport, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %t_owner to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %t_owner, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true13.for.end_crit_edge, label %lor.lhs.false

land.lhs.true13.for.end_crit_edge:                ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false:                                    ; preds = %land.lhs.true13
  %call16 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %14) #5
  br i1 %call16, label %lor.lhs.false.for.end_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %if.end6.for.inc_crit_edge
  %15 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @transports, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %15, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %land.lhs.true.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true.1:                                  ; preds = %for.inc
  %laddr_check.1 = getelementptr inbounds %struct.rds_transport, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %laddr_check.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %laddr_check.1, align 4
  %call10.1 = tail call i32 %17(ptr noundef %net, ptr noundef %addr, i32 noundef %scope_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.1)
  %cmp11.1 = icmp eq i32 %call10.1, 0
  br i1 %cmp11.1, label %land.lhs.true13.1, label %land.lhs.true.1.for.inc.1_crit_edge

land.lhs.true.1.for.inc.1_crit_edge:              ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

land.lhs.true13.1:                                ; preds = %land.lhs.true.1
  %t_owner.1 = getelementptr inbounds %struct.rds_transport, ptr %15, i32 0, i32 2
  %18 = ptrtoint ptr %t_owner.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %t_owner.1, align 4
  %tobool14.not.1 = icmp eq ptr %19, null
  br i1 %tobool14.not.1, label %land.lhs.true13.1.for.end_crit_edge, label %lor.lhs.false.1

land.lhs.true13.1.for.end_crit_edge:              ; preds = %land.lhs.true13.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false.1:                                  ; preds = %land.lhs.true13.1
  %call16.1 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %19) #5
  br i1 %call16.1, label %lor.lhs.false.1.for.end_crit_edge, label %lor.lhs.false.1.for.inc.1_crit_edge

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

lor.lhs.false.1.for.end_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.1:                                        ; preds = %lor.lhs.false.1.for.inc.1_crit_edge, %land.lhs.true.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %20 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @transports, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %20, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %land.lhs.true.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true.2:                                  ; preds = %for.inc.1
  %laddr_check.2 = getelementptr inbounds %struct.rds_transport, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %laddr_check.2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %laddr_check.2, align 4
  %call10.2 = tail call i32 %22(ptr noundef %net, ptr noundef %addr, i32 noundef %scope_id) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.2)
  %cmp11.2 = icmp eq i32 %call10.2, 0
  br i1 %cmp11.2, label %land.lhs.true13.2, label %land.lhs.true.2.for.inc.2_crit_edge

land.lhs.true.2.for.inc.2_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

land.lhs.true13.2:                                ; preds = %land.lhs.true.2
  %t_owner.2 = getelementptr inbounds %struct.rds_transport, ptr %20, i32 0, i32 2
  %23 = ptrtoint ptr %t_owner.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %t_owner.2, align 4
  %tobool14.not.2 = icmp eq ptr %24, null
  br i1 %tobool14.not.2, label %land.lhs.true13.2.for.end_crit_edge, label %lor.lhs.false.2

land.lhs.true13.2.for.end_crit_edge:              ; preds = %land.lhs.true13.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

lor.lhs.false.2:                                  ; preds = %land.lhs.true13.2
  %call16.2 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %24) #5
  br i1 %call16.2, label %lor.lhs.false.2.for.end_crit_edge, label %lor.lhs.false.2.for.inc.2_crit_edge

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

lor.lhs.false.2.for.end_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.2:                                        ; preds = %lor.lhs.false.2.for.inc.2_crit_edge, %land.lhs.true.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  br label %for.end

for.end:                                          ; preds = %for.inc.2, %lor.lhs.false.2.for.end_crit_edge, %land.lhs.true13.2.for.end_crit_edge, %lor.lhs.false.1.for.end_crit_edge, %land.lhs.true13.1.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %land.lhs.true13.for.end_crit_edge
  %ret.0 = phi ptr [ %10, %lor.lhs.false.for.end_crit_edge ], [ %10, %land.lhs.true13.for.end_crit_edge ], [ %15, %land.lhs.true13.1.for.end_crit_edge ], [ %15, %lor.lhs.false.1.for.end_crit_edge ], [ %20, %land.lhs.true13.2.for.end_crit_edge ], [ %20, %lor.lhs.false.2.for.end_crit_edge ], [ null, %for.inc.2 ]
  tail call void @up_read(ptr noundef nonnull @rds_trans_sem) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.else.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %ret.0, %for.end ], [ @rds_loop_transport, %if.then.cleanup_crit_edge ], [ @rds_loop_transport, %if.else.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @rds_trans_get(i32 noundef %t_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @down_read(ptr noundef nonnull @rds_trans_sem) #5
  %arrayidx = getelementptr [3 x ptr], ptr @transports, i32 0, i32 %t_type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.then:                                          ; preds = %entry
  tail call void @up_read(ptr noundef nonnull @rds_trans_sem) #5
  %2 = and i32 %t_type, 1073741823
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %tobool2.not = icmp eq i32 %2, 1
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %if.then3

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx1 = getelementptr [3 x ptr], ptr @rds_trans_modules, i32 0, i32 %t_type
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %call = tail call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef %4) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.then.if.end6_crit_edge
  tail call void @down_read(ptr noundef nonnull @rds_trans_sem) #5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool7.not = icmp eq ptr %6, null
  br i1 %tobool7.not, label %if.end6.if.end14_crit_edge, label %if.end6.land.lhs.true_crit_edge

if.end6.land.lhs.true_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end6.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %trans.028 = phi ptr [ %6, %if.end6.land.lhs.true_crit_edge ], [ %1, %entry.land.lhs.true_crit_edge ]
  %t_type8 = getelementptr inbounds %struct.rds_transport, ptr %trans.028, i32 0, i32 4
  %7 = ptrtoint ptr %t_type8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %t_type8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %t_type)
  %cmp = icmp eq i32 %8, %t_type
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true.if.end14_crit_edge

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true9:                                   ; preds = %land.lhs.true
  %t_owner = getelementptr inbounds %struct.rds_transport, ptr %trans.028, i32 0, i32 2
  %9 = ptrtoint ptr %t_owner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %t_owner, align 4
  %tobool10.not = icmp eq ptr %10, null
  br i1 %tobool10.not, label %land.lhs.true9.if.then13_crit_edge, label %lor.lhs.false

land.lhs.true9.if.then13_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

lor.lhs.false:                                    ; preds = %land.lhs.true9
  %call12 = tail call zeroext i1 @try_module_get(ptr noundef nonnull %10) #5
  br i1 %call12, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end14_crit_edge

lor.lhs.false.if.end14_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %land.lhs.true9.if.then13_crit_edge
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %lor.lhs.false.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end6.if.end14_crit_edge
  %ret.0 = phi ptr [ %trans.028, %if.then13 ], [ null, %lor.lhs.false.if.end14_crit_edge ], [ null, %land.lhs.true.if.end14_crit_edge ], [ null, %if.end6.if.end14_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @rds_trans_sem) #5
  ret ptr %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rds_trans_stats_info_copy(ptr noundef %iter, i32 noundef %avail) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @rds_info_iter_unmap(ptr noundef %iter) #5
  tail call void @down_read(ptr noundef nonnull @rds_trans_sem) #5
  %0 = load ptr, ptr @transports, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %lor.lhs.false

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false:                                    ; preds = %entry
  %stats_info_copy = getelementptr inbounds %struct.rds_transport, ptr %0, i32 0, i32 21
  %1 = ptrtoint ptr %stats_info_copy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stats_info_copy, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 %2(ptr noundef %iter, i32 noundef %avail) #5
  %3 = tail call i32 @llvm.usub.sat.i32(i32 %avail, i32 %call)
  br label %for.inc

for.inc:                                          ; preds = %if.end, %lor.lhs.false.for.inc_crit_edge, %entry.for.inc_crit_edge
  %total.1 = phi i32 [ %call, %if.end ], [ 0, %lor.lhs.false.for.inc_crit_edge ], [ 0, %entry.for.inc_crit_edge ]
  %avail.addr.1 = phi i32 [ %3, %if.end ], [ %avail, %lor.lhs.false.for.inc_crit_edge ], [ %avail, %entry.for.inc_crit_edge ]
  %4 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @transports, i32 0, i32 1), align 4
  %tobool.not.1 = icmp eq ptr %4, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %lor.lhs.false.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

lor.lhs.false.1:                                  ; preds = %for.inc
  %stats_info_copy.1 = getelementptr inbounds %struct.rds_transport, ptr %4, i32 0, i32 21
  %5 = ptrtoint ptr %stats_info_copy.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats_info_copy.1, align 4
  %tobool1.not.1 = icmp eq ptr %6, null
  br i1 %tobool1.not.1, label %lor.lhs.false.1.for.inc.1_crit_edge, label %if.end.1

lor.lhs.false.1.for.inc.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.end.1:                                         ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #7
  %call.1 = tail call i32 %6(ptr noundef %iter, i32 noundef %avail.addr.1) #5
  %7 = tail call i32 @llvm.usub.sat.i32(i32 %avail.addr.1, i32 %call.1)
  %add.1 = add i32 %call.1, %total.1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %lor.lhs.false.1.for.inc.1_crit_edge, %for.inc.for.inc.1_crit_edge
  %total.1.1 = phi i32 [ %add.1, %if.end.1 ], [ %total.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %total.1, %for.inc.for.inc.1_crit_edge ]
  %avail.addr.1.1 = phi i32 [ %7, %if.end.1 ], [ %avail.addr.1, %lor.lhs.false.1.for.inc.1_crit_edge ], [ %avail.addr.1, %for.inc.for.inc.1_crit_edge ]
  %8 = load ptr, ptr getelementptr inbounds ([3 x ptr], ptr @transports, i32 0, i32 2), align 4
  %tobool.not.2 = icmp eq ptr %8, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %lor.lhs.false.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

lor.lhs.false.2:                                  ; preds = %for.inc.1
  %stats_info_copy.2 = getelementptr inbounds %struct.rds_transport, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %stats_info_copy.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stats_info_copy.2, align 4
  %tobool1.not.2 = icmp eq ptr %10, null
  br i1 %tobool1.not.2, label %lor.lhs.false.2.for.inc.2_crit_edge, label %if.end.2

lor.lhs.false.2.for.inc.2_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.end.2:                                         ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #7
  %call.2 = tail call i32 %10(ptr noundef %iter, i32 noundef %avail.addr.1.1) #5
  %add.2 = add i32 %call.2, %total.1.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %lor.lhs.false.2.for.inc.2_crit_edge, %for.inc.1.for.inc.2_crit_edge
  %total.1.2 = phi i32 [ %add.2, %if.end.2 ], [ %total.1.1, %lor.lhs.false.2.for.inc.2_crit_edge ], [ %total.1.1, %for.inc.1.for.inc.2_crit_edge ]
  tail call void @up_read(ptr noundef nonnull @rds_trans_sem) #5
  ret i32 %total.1.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rds_info_iter_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/rds/transport.c", i32 57, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @rds_trans_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @rds_trans_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/rds/transport.c", i32 61, i32 3}
!8 = !{ptr @rds_trans_register._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @rds_trans_register._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_rds_trans_register, !11, !"__ksymtab_rds_trans_register", i1 false, i1 false}
!11 = !{!"../net/rds/transport.c", i32 66, i32 1}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../net/rds/transport.c", i32 73, i32 2}
!14 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @rds_trans_unregister._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @rds_trans_unregister._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_rds_trans_unregister, !18, !"__ksymtab_rds_trans_unregister", i1 false, i1 false}
!18 = !{!"../net/rds/transport.c", i32 77, i32 1}
!19 = !{ptr @transports, !20, !"transports", i1 false, i1 false}
!20 = !{!"../net/rds/transport.c", i32 47, i32 30}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/rds/transport.c", i32 48, i32 8}
!23 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rds_trans_sem, !22, !"rds_trans_sem", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/rds/transport.c", i32 42, i32 19}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../net/rds/transport.c", i32 44, i32 20}
!29 = !{ptr @rds_trans_modules, !30, !"rds_trans_modules", i1 false, i1 false}
!30 = !{!"../net/rds/transport.c", i32 41, i32 21}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2158185556, i64 2158186039, i64 2158185593, i64 2158185649, i64 2158185683, i64 2158185707, i64 2158185748, i64 2158185769, i64 2158185797, i64 2158185831}
