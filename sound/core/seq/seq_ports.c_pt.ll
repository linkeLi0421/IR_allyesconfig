; ModuleID = '/llk/IR_all_yes/sound/core/seq/seq_ports.c_pt.bc'
source_filename = "../sound/core/seq/seq_ports.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_seq_event_port_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_event_port_attach\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_event_port_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_event_port_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_event_port_attach\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_event_port_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_seq_event_port_detach\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_seq_event_port_detach\09\09\09\09"
module asm "\09.long\09__crc_snd_seq_event_port_detach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_seq_event_port_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_seq_event_port_detach\22\09\09\09\09\09"
module asm "__kstrtabns_snd_seq_event_port_detach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_seq_client = type { i32, i8, [64 x i8], i32, i32, [8 x i32], %struct.atomic_t, i32, i32, %struct.list_head, %struct.rwlock_t, %struct.mutex, %struct.mutex, i32, ptr, %union.anon.70 }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.70 = type { %struct.snd_seq_user_client }
%struct.snd_seq_user_client = type { ptr, ptr, ptr, i32 }
%struct.snd_seq_addr = type { i8, i8 }
%struct.snd_seq_client_port = type { %struct.snd_seq_addr, ptr, [64 x i8], %struct.list_head, %struct.atomic_t, %struct.snd_seq_port_subs_info, %struct.snd_seq_port_subs_info, ptr, ptr, ptr, i8, i32, i32, i32, i32, i32, i32 }
%struct.snd_seq_port_subs_info = type { %struct.list_head, i32, i8, %struct.rw_semaphore, %struct.rwlock_t, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.snd_seq_port_info = type { %struct.snd_seq_addr, [64 x i8], i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, [59 x i8] }
%struct.snd_seq_subscribers = type { %struct.snd_seq_port_subscribe, %struct.list_head, %struct.list_head, %struct.atomic_t }
%struct.snd_seq_port_subscribe = type { %struct.snd_seq_addr, %struct.snd_seq_addr, i32, i32, i8, [3 x i8], [64 x i8] }

@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/seq/seq_ports.c\00", [37 x i8] zeroinitializer }, align 32
@snd_seq_create_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014ALSA: seq: too many ports for client %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"snd_seq_create_port\00", [44 x i8] zeroinitializer }, align 32
@snd_seq_create_port._entry_ptr = internal global ptr @snd_seq_create_port._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"port-%d\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Unnamed port\00", [19 x i8] zeroinitializer }, align 32
@__kstrtab_snd_seq_event_port_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_event_port_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_event_port_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_event_port_attach to i32), ptr @__kstrtab_snd_seq_event_port_attach, ptr @__kstrtabns_snd_seq_event_port_attach }, section "___ksymtab+snd_seq_event_port_attach", align 4
@__kstrtab_snd_seq_event_port_detach = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_seq_event_port_detach = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_seq_event_port_detach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_seq_event_port_detach to i32), ptr @__kstrtab_snd_seq_event_port_detach, ptr @__kstrtabns_snd_seq_event_port_detach }, section "___ksymtab+snd_seq_event_port_detach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@port_subs_info_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&grp->list_lock\00", [16 x i8] zeroinitializer }, align 32
@port_subs_info_init.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&grp->list_mutex\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 120, i32 6 }
@___asan_gen_.11 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 124, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 136, i32 26 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 672, i32 47 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 103, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.36 = private constant [30 x i8] c"../sound/core/seq/seq_ports.c\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.36, i32 104, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_snd_seq_event_port_attach, ptr @__ksymtab_snd_seq_event_port_detach, ptr @snd_seq_create_port._entry, ptr @snd_seq_create_port._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @port_subs_info_init.__key, ptr @.str.5, ptr @port_subs_info_init.__key.6, ptr @.str.7], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_seq_create_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_subs_info_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_subs_info_init.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_port_use_ptr(ptr noundef %client, i32 noundef %num) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %client, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %ports_lock) #8
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %ports_list_head, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp2.not = icmp eq ptr %.pn, %ports_list_head
  br i1 %cmp2.not, label %for.cond.cleanup.sink.split_crit_edge, label %for.body

for.cond.cleanup.sink.split_crit_edge:            ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

for.body:                                         ; preds = %for.cond
  %port3 = getelementptr i8, ptr %.pn, i32 -71
  %1 = ptrtoint ptr %port3 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port3, align 1
  %conv = zext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv, %num
  br i1 %cmp4, label %if.then6, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then6:                                         ; preds = %for.body
  %closing = getelementptr i8, ptr %.pn, i32 352
  %3 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end8, label %if.then6.cleanup.sink.split_crit_edge

if.then6.cleanup.sink.split_crit_edge:            ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #10
  %port.0.le = getelementptr i8, ptr %.pn, i32 -72
  %use_lock = getelementptr i8, ptr %.pn, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !30
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end8, %if.then6.cleanup.sink.split_crit_edge, %for.cond.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %port.0.le, %if.end8 ], [ null, %if.then6.cleanup.sink.split_crit_edge ], [ null, %for.cond.cleanup.sink.split_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %ports_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_port_query_nearest(ptr noundef %client, ptr nocapture noundef readonly %pinfo) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %port1 = getelementptr inbounds %struct.snd_seq_addr, ptr %pinfo, i32 0, i32 1
  %0 = ptrtoint ptr %port1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port1, align 1
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %ports_lock) #8
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9
  %2 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn54 = load ptr, ptr %ports_list_head, align 4
  %cmp.not56 = icmp eq ptr %.pn54, %ports_list_head
  br i1 %cmp.not56, label %entry.if.end37_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end37_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn58 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn54, %entry.for.body_crit_edge ]
  %found.057 = phi ptr [ %found.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %port.059 = getelementptr i8, ptr %.pn58, i32 -72
  %port5 = getelementptr i8, ptr %.pn58, i32 -71
  %3 = ptrtoint ptr %port5 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %1)
  %cmp7 = icmp ult i8 %4, %1
  br i1 %cmp7, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %1)
  %cmp12 = icmp eq i8 %4, %1
  br i1 %cmp12, label %if.end.for.end_crit_edge, label %if.end15

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end15:                                         ; preds = %if.end
  %cmp16 = icmp eq ptr %found.057, null
  br i1 %cmp16, label %if.end15.if.then26_crit_edge, label %lor.lhs.false

if.end15.if.then26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

lor.lhs.false:                                    ; preds = %if.end15
  %port22 = getelementptr inbounds %struct.snd_seq_addr, ptr %found.057, i32 0, i32 1
  %5 = ptrtoint ptr %port22 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %6)
  %cmp24 = icmp ult i8 %4, %6
  br i1 %cmp24, label %lor.lhs.false.if.then26_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

lor.lhs.false.if.then26_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.then26:                                        ; preds = %lor.lhs.false.if.then26_crit_edge, %if.end15.if.then26_crit_edge
  br label %for.inc

for.inc:                                          ; preds = %if.then26, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %found.1 = phi ptr [ %found.057, %for.body.for.inc_crit_edge ], [ %port.059, %if.then26 ], [ %found.057, %lor.lhs.false.for.inc_crit_edge ]
  %7 = ptrtoint ptr %.pn58 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn = load ptr, ptr %.pn58, align 4
  %cmp.not = icmp eq ptr %.pn, %ports_list_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %found.2 = phi ptr [ %found.1, %for.inc.for.end_crit_edge ], [ %port.059, %if.end.for.end_crit_edge ]
  %tobool.not = icmp eq ptr %found.2, null
  br i1 %tobool.not, label %for.end.if.end37_crit_edge, label %if.then33

for.end.if.end37_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then33:                                        ; preds = %for.end
  %closing = getelementptr inbounds %struct.snd_seq_client_port, ptr %found.2, i32 0, i32 10
  %8 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load = load i8, ptr %closing, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool34.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool34.not, label %if.else, label %if.then33.if.end37_crit_edge

if.then33.if.end37_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.else:                                          ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %found.2, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !30
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then33.if.end37_crit_edge, %for.end.if.end37_crit_edge, %entry.if.end37_crit_edge
  %found.3 = phi ptr [ %found.2, %if.else ], [ null, %for.end.if.end37_crit_edge ], [ null, %if.then33.if.end37_crit_edge ], [ null, %entry.if.end37_crit_edge ]
  tail call void @_raw_read_unlock(ptr noundef %ports_lock) #8
  ret ptr %found.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @snd_seq_create_port(ptr noundef %client, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %client, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 120, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end23:                                         ; preds = %entry
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 8
  %0 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_ports, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 253, i32 %1)
  %cmp = icmp sgt i32 %1, 253
  br i1 %cmp, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 3
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %3) #11
  br label %cleanup

if.end29:                                         ; preds = %if.end23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 452) #12
  %tobool31.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool31.not, label %if.end29.cleanup_crit_edge, label %if.end33

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %number34 = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 3
  %5 = ptrtoint ptr %number34 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %number34, align 4
  %conv = trunc i32 %6 to i8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %call7.i.i, align 8
  %port37 = getelementptr inbounds %struct.snd_seq_addr, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %port37 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %port37, align 1
  %owner = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %owner, align 4
  %name = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 2
  %call38 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef -1)
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  %10 = ptrtoint ptr %use_lock to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 0, ptr %use_lock, align 8
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %c_src to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %c_src, ptr %c_src, align 4
  %prev.i.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %c_src, ptr %prev.i.i, align 8
  %count.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %count.i, align 4
  %exclusive.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 2
  %14 = ptrtoint ptr %exclusive.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %exclusive.i, align 8
  %bf.clear.i = and i8 %bf.load.i, 127
  store i8 %bf.clear.i, ptr %exclusive.i, align 8
  %list_lock.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 4
  tail call void @__rwlock_init(ptr noundef %list_lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @port_subs_info_init.__key) #8
  %list_mutex.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 3
  tail call void @__init_rwsem(ptr noundef %list_mutex.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @port_subs_info_init.__key.6) #8
  %open.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 5
  %15 = ptrtoint ptr %open.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %open.i, align 8
  %close.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 5, i32 6
  %16 = ptrtoint ptr %close.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %close.i, align 4
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %c_dest to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %c_dest, ptr %c_dest, align 8
  %prev.i.i114 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i114 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %c_dest, ptr %prev.i.i114, align 4
  %count.i115 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 1
  %19 = ptrtoint ptr %count.i115 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %count.i115, align 8
  %exclusive.i116 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 2
  %20 = ptrtoint ptr %exclusive.i116 to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load.i117 = load i8, ptr %exclusive.i116, align 4
  %bf.clear.i118 = and i8 %bf.load.i117, 127
  store i8 %bf.clear.i118, ptr %exclusive.i116, align 4
  %list_lock.i119 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 4
  tail call void @__rwlock_init(ptr noundef %list_lock.i119, ptr noundef nonnull @.str.5, ptr noundef nonnull @port_subs_info_init.__key) #8
  %list_mutex.i120 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 3
  tail call void @__init_rwsem(ptr noundef %list_mutex.i120, ptr noundef nonnull @.str.7, ptr noundef nonnull @port_subs_info_init.__key.6) #8
  %open.i121 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 5
  %21 = ptrtoint ptr %open.i121 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %open.i121, align 4
  %close.i122 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %close.i122 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %close.i122, align 8
  %call.i.i113 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !30
  %24 = tail call i32 @llvm.smax.i32(i32 %port, i32 0)
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ports_mutex, i32 noundef 0) #8
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 10
  tail call void @_raw_write_lock_irq(ptr noundef %ports_lock) #8
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9
  %25 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn124 = load ptr, ptr %ports_list_head, align 4
  %cmp44.not125 = icmp eq ptr %.pn124, %ports_list_head
  br i1 %cmp44.not125, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp55 = icmp slt i32 %port, 0
  br label %for.body

for.body:                                         ; preds = %if.end54.for.body_crit_edge, %for.body.lr.ph
  %.pn127 = phi ptr [ %.pn124, %for.body.lr.ph ], [ %.pn, %if.end54.for.body_crit_edge ]
  %num.0126 = phi i32 [ %24, %for.body.lr.ph ], [ %spec.select112, %if.end54.for.body_crit_edge ]
  %port49 = getelementptr i8, ptr %.pn127, i32 -71
  %26 = ptrtoint ptr %port49 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port49, align 1
  %conv50 = zext i8 %27 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %num.0126, i32 %conv50)
  %cmp51 = icmp slt i32 %num.0126, %conv50
  br i1 %cmp51, label %for.body.for.end_crit_edge, label %if.end54

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end54:                                         ; preds = %for.body
  %add = add nuw nsw i32 %conv50, 1
  %spec.select112 = select i1 %cmp55, i32 %add, i32 %num.0126
  %28 = ptrtoint ptr %.pn127 to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn = load ptr, ptr %.pn127, align 4
  %cmp44.not = icmp eq ptr %.pn, %ports_list_head
  br i1 %cmp44.not, label %if.end54.for.end_crit_edge, label %if.end54.for.body_crit_edge

if.end54.for.body_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end54.for.end_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end54.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end33.for.end_crit_edge
  %num.0.lcssa = phi i32 [ %24, %if.end33.for.end_crit_edge ], [ %num.0126, %for.body.for.end_crit_edge ], [ %spec.select112, %if.end54.for.end_crit_edge ]
  %.pn.lcssa = phi ptr [ %ports_list_head, %if.end33.for.end_crit_edge ], [ %.pn127, %for.body.for.end_crit_edge ], [ %ports_list_head, %if.end54.for.end_crit_edge ]
  %list67 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.lcssa, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i, align 4
  %call.i.i123 = tail call zeroext i1 @__list_add_valid(ptr noundef %list67, ptr noundef %30, ptr noundef %.pn.lcssa) #8
  br i1 %call.i.i123, label %if.end.i.i, label %for.end.list_add_tail.exit_crit_edge

for.end.list_add_tail.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list67, ptr %prev.i, align 4
  %32 = ptrtoint ptr %list67 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.pn.lcssa, ptr %list67, align 8
  %prev3.i.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %call7.i.i, i32 0, i32 3, i32 1
  %33 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %list67, ptr %30, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.end.list_add_tail.exit_crit_edge
  %35 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_ports, align 4
  %inc = add i32 %36, 1
  store i32 %inc, ptr %num_ports, align 4
  %conv70 = trunc i32 %num.0.lcssa to i8
  %37 = ptrtoint ptr %port37 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv70, ptr %port37, align 1
  %call75 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name, ptr noundef nonnull @.str.3, i32 noundef %num.0.lcssa)
  tail call void @_raw_write_unlock_irq(ptr noundef %ports_lock) #8
  tail call void @mutex_unlock(ptr noundef %ports_mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %if.end29.cleanup_crit_edge, %do.end27, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end27 ], [ %call7.i.i, %list_add_tail.exit ], [ null, %if.end29.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_delete_port(ptr noundef %client, i32 noundef %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ports_mutex, i32 noundef 0) #8
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 10
  tail call void @_raw_write_lock_irq(ptr noundef %ports_lock) #8
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %ports_list_head, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %ports_list_head
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %port2 = getelementptr i8, ptr %.pn, i32 -71
  %1 = ptrtoint ptr %port2 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %port2, align 1
  %conv = zext i8 %2 to i32
  %cmp3 = icmp eq i32 %conv, %port
  br i1 %cmp3, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %for.body
  %p.0.le = getelementptr i8, ptr %.pn, i32 -72
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 8
  %11 = ptrtoint ptr %num_ports to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_ports, align 4
  %dec = add i32 %12, -1
  store i32 %dec, ptr %num_ports, align 4
  br label %for.end

for.end:                                          ; preds = %list_del.exit, %for.cond.for.end_crit_edge
  %found.0 = phi ptr [ %p.0.le, %list_del.exit ], [ null, %for.cond.for.end_crit_edge ]
  tail call void @_raw_write_unlock_irq(ptr noundef %ports_lock) #8
  tail call void @mutex_unlock(ptr noundef %ports_mutex) #8
  %tobool.not = icmp eq ptr %found.0, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.then13

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @port_delete(ptr noundef %client, ptr noundef nonnull %found.0)
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then13 ], [ -2, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @port_delete(ptr nocapture noundef readonly %client, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %closing = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 10
  %0 = ptrtoint ptr %closing to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %closing, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %closing, align 4
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 4
  tail call void @snd_use_lock_sync_helper(ptr noundef %use_lock, ptr noundef nonnull @.str, i32 noundef 250) #8
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5
  tail call fastcc void @clear_subscriber_list(ptr noundef %client, ptr noundef %port, ptr noundef %c_src, i32 noundef 1)
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6
  tail call fastcc void @clear_subscriber_list(ptr noundef %client, ptr noundef %port, ptr noundef %c_dest, i32 noundef 0)
  %private_free = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 8
  %1 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_free, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %private_data = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 9
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data, align 4
  tail call void %2(ptr noundef %4) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %count = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not = icmp eq i32 %6, 0
  br i1 %cmp.not, label %if.end.if.end17_crit_edge, label %do.end, !prof !32

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #8
  br label %if.end17

if.end17:                                         ; preds = %do.end, %if.end.if.end17_crit_edge
  %count26 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %count26 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp27.not = icmp eq i32 %8, 0
  br i1 %cmp27.not, label %if.end17.if.end49_crit_edge, label %do.end43, !prof !32

if.end17.if.end49_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

do.end43:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 260, i32 noundef 9, ptr noundef null) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end43, %if.end17.if.end49_crit_edge
  tail call void @kfree(ptr noundef %port) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_delete_all_ports(ptr noundef %client) local_unnamed_addr #0 align 64 {
entry:
  %deleted_list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %deleted_list) #8
  %0 = ptrtoint ptr %deleted_list to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %deleted_list, align 4, !annotation !33
  %1 = getelementptr inbounds %struct.list_head, ptr %deleted_list, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !33
  %ports_mutex = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 11
  tail call void @mutex_lock_nested(ptr noundef %ports_mutex, i32 noundef 0) #8
  %ports_lock = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 10
  tail call void @_raw_write_lock_irq(ptr noundef %ports_lock) #8
  %ports_list_head = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9
  %3 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ports_list_head, align 4
  %cmp.i.not = icmp eq ptr %4, %ports_list_head
  br i1 %cmp.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %deleted_list, ptr noundef %ports_list_head, ptr noundef %4) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_add.exit_crit_edge

if.then.list_add.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %deleted_list, ptr %prev1.i.i, align 4
  %6 = ptrtoint ptr %deleted_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %4, ptr %deleted_list, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ports_list_head, ptr %1, align 4
  %8 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %deleted_list, ptr %ports_list_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then.list_add.exit_crit_edge
  %call.i.i37 = call zeroext i1 @__list_del_entry_valid(ptr noundef %ports_list_head) #8
  br i1 %call.i.i37, label %if.end.i.i38, label %list_add.exit.list_del_init.exit_crit_edge

list_add.exit.list_del_init.exit_crit_edge:       ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i38:                                     ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports_list_head, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i38, %list_add.exit.list_del_init.exit_crit_edge
  %15 = ptrtoint ptr %ports_list_head to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ports_list_head, ptr %ports_list_head, align 4
  %prev.i3.i = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 9, i32 1
  %16 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %ports_list_head, ptr %prev.i3.i, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %deleted_list to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %deleted_list, ptr %deleted_list, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %deleted_list, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %list_del_init.exit
  %num_ports = getelementptr inbounds %struct.snd_seq_client, ptr %client, i32 0, i32 8
  %19 = ptrtoint ptr %num_ports to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %num_ports, align 4
  call void @_raw_write_unlock_irq(ptr noundef %ports_lock) #8
  %20 = ptrtoint ptr %deleted_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %deleted_list, align 4
  %cmp.not44 = icmp eq ptr %21, %deleted_list
  br i1 %cmp.not44, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in45 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %21, %if.end.for.body_crit_edge ]
  %port.0 = getelementptr i8, ptr %.pn.in45, i32 -72
  %22 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in45, align 4
  %call.i.i39 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in45) #8
  br i1 %call.i.i39, label %if.end.i.i42, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i42:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i40, align 4
  %25 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in45, align 4
  %prev1.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i41, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i42, %for.body.list_del.exit_crit_edge
  %29 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in45, align 4
  %prev.i43 = getelementptr inbounds %struct.list_head, ptr %.pn.in45, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i43, align 4
  %31 = ptrtoint ptr %port.0 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port.0, align 4
  %conv = zext i8 %32 to i32
  %port13 = getelementptr i8, ptr %.pn.in45, i32 -71
  %33 = ptrtoint ptr %port13 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port13, align 1
  %conv14 = zext i8 %34 to i32
  call void @snd_seq_system_broadcast(i32 noundef %conv, i32 noundef %conv14, i32 noundef 64) #8
  call fastcc void @port_delete(ptr noundef %client, ptr noundef %port.0)
  %cmp.not = icmp eq ptr %.pn, %deleted_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @mutex_unlock(ptr noundef %ports_mutex) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %deleted_list) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_seq_system_broadcast(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_set_port_info(ptr noundef %port, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  %tobool1.not = icmp eq ptr %info, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 325, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end24:                                         ; preds = %entry
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %name, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool25.not = icmp eq i8 %1, 0
  br i1 %tobool25.not, label %if.end24.if.end30_crit_edge, label %if.then26

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %name27 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 2
  %call = tail call i32 @strscpy(ptr noundef %name27, ptr noundef %name, i32 noundef 64) #8
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end24.if.end30_crit_edge
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %capability, align 4
  %capability31 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 12
  %4 = ptrtoint ptr %capability31 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %capability31, align 4
  %type = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %type32 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 13
  %7 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %type32, align 4
  %midi_channels = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %midi_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %midi_channels, align 4
  %midi_channels33 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 14
  %10 = ptrtoint ptr %midi_channels33 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %midi_channels33, align 4
  %midi_voices = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %midi_voices to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %midi_voices, align 4
  %midi_voices34 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 15
  %13 = ptrtoint ptr %midi_voices34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %midi_voices34, align 4
  %synth_voices = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %synth_voices to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %synth_voices, align 4
  %synth_voices35 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 16
  %16 = ptrtoint ptr %synth_voices35 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %synth_voices35, align 4
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 10
  %17 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags, align 4
  %timestamping = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 10
  %19 = trunc i32 %18 to i8
  %20 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %timestamping, align 4
  %21 = shl i8 %19, 5
  %bf.shl = and i8 %21, 64
  %bf.clear = and i8 %bf.load, -65
  %bf.set = or i8 %bf.shl, %bf.clear
  store i8 %bf.set, ptr %timestamping, align 4
  %22 = load i32, ptr %flags, align 4
  %23 = trunc i32 %22 to i8
  %24 = shl i8 %23, 3
  %bf.shl43 = and i8 %24, 32
  %bf.clear44 = and i8 %bf.set, -33
  %bf.set45 = or i8 %bf.shl43, %bf.clear44
  store i8 %bf.set45, ptr %timestamping, align 4
  %time_queue = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 11
  %25 = ptrtoint ptr %time_queue to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %time_queue, align 4
  %conv = zext i8 %26 to i32
  %time_queue47 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 11
  %27 = ptrtoint ptr %time_queue47 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv, ptr %time_queue47, align 4
  br label %return

return:                                           ; preds = %if.end30, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_get_port_info(ptr noundef %port, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %port, null
  %tobool1.not = icmp eq ptr %info, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !31

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 355, i32 noundef 9, ptr noundef null) #8
  br label %return

if.end24:                                         ; preds = %entry
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 1
  %name25 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 2
  %call = tail call i32 @strscpy(ptr noundef %name, ptr noundef %name25, i32 noundef 64) #8
  %capability = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 12
  %0 = ptrtoint ptr %capability to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %capability, align 4
  %capability27 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 2
  %2 = ptrtoint ptr %capability27 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %capability27, align 4
  %type = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 13
  %3 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type, align 4
  %type28 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 3
  %5 = ptrtoint ptr %type28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %type28, align 4
  %midi_channels = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 14
  %6 = ptrtoint ptr %midi_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %midi_channels, align 4
  %midi_channels29 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 4
  %8 = ptrtoint ptr %midi_channels29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %midi_channels29, align 4
  %midi_voices = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 15
  %9 = ptrtoint ptr %midi_voices to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %midi_voices, align 4
  %midi_voices30 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 5
  %11 = ptrtoint ptr %midi_voices30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %midi_voices30, align 4
  %synth_voices = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 16
  %12 = ptrtoint ptr %synth_voices to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %synth_voices, align 4
  %synth_voices31 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 6
  %14 = ptrtoint ptr %synth_voices31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %synth_voices31, align 4
  %count = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5, i32 1
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %read_use = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 7
  %17 = ptrtoint ptr %read_use to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %read_use, align 4
  %count32 = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %count32 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count32, align 4
  %write_use = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 8
  %20 = ptrtoint ptr %write_use to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %write_use, align 4
  %flags = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 10
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags, align 4
  %timestamping = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 10
  %22 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %timestamping, align 4
  %23 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool33.not = icmp eq i8 %23, 0
  br i1 %tobool33.not, label %if.end24.return_crit_edge, label %if.then34

if.end24.return_crit_edge:                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %flags, align 4
  %25 = ptrtoint ptr %timestamping to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load36 = load i8, ptr %timestamping, align 4
  %26 = and i8 %bf.load36, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool40.not = icmp eq i8 %26, 0
  %spec.store.select = select i1 %tobool40.not, i32 2, i32 6
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %spec.store.select, ptr %flags, align 4
  %time_queue = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 11
  %28 = ptrtoint ptr %time_queue to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %time_queue, align 4
  %conv = trunc i32 %29 to i8
  %time_queue45 = getelementptr inbounds %struct.snd_seq_port_info, ptr %info, i32 0, i32 11
  %30 = ptrtoint ptr %time_queue45 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %time_queue45, align 4
  br label %return

return:                                           ; preds = %if.then34, %if.end24.return_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then34 ], [ 0, %if.end24.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_port_connect(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %src_client, ptr noundef %src_port, ptr nocapture noundef readonly %dest_client, ptr noundef %dest_port, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call7.i.i, ptr %info, i32 80)
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %call7.i.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  %2 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 0, ptr %ref_count, align 8
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %src_list to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %src_list, ptr %src_list, align 8
  %prev.i = getelementptr inbounds %struct.snd_seq_subscribers, ptr %call7.i.i, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %src_list, ptr %prev.i, align 4
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %dest_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %dest_list, ptr %dest_list, align 8
  %prev.i42 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %call7.i.i, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dest_list, ptr %prev.i42, align 4
  %flags = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 3
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %connector, i32 0, i32 3
  %9 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %number, align 4
  %number5 = getelementptr inbounds %struct.snd_seq_client, ptr %src_client, i32 0, i32 3
  %11 = ptrtoint ptr %number5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %number5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp = icmp ne i32 %10, %12
  %call6 = tail call fastcc i32 @check_and_subscribe_port(ptr noundef %src_client, ptr noundef %src_port, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true, i1 noundef zeroext %tobool2, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.error_crit_edge, label %if.end9

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %error

if.end9:                                          ; preds = %if.end
  %13 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %number, align 4
  %number12 = getelementptr inbounds %struct.snd_seq_client, ptr %dest_client, i32 0, i32 3
  %15 = ptrtoint ptr %number12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %number12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp13 = icmp ne i32 %14, %16
  %call14 = tail call fastcc i32 @check_and_subscribe_port(ptr noundef %dest_client, ptr noundef %dest_port, ptr noundef nonnull %call7.i.i, i1 noundef zeroext false, i1 noundef zeroext %tobool2, i1 noundef zeroext %cmp13)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %error_dest, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

error_dest:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %number, align 4
  %19 = ptrtoint ptr %number5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp20 = icmp ne i32 %18, %20
  %list_mutex.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %src_port, i32 0, i32 5, i32 3
  tail call void @down_write(ptr noundef %list_mutex.i) #8
  tail call fastcc void @__delete_and_unsubscribe_port(ptr noundef %src_client, ptr noundef %src_port, ptr noundef nonnull %call7.i.i, i1 noundef zeroext true, i1 noundef zeroext %cmp20) #8
  tail call void @up_write(ptr noundef %list_mutex.i) #8
  br label %error

error:                                            ; preds = %error_dest, %if.end.error_crit_edge
  %err.0 = phi i32 [ %call6, %if.end.error_crit_edge ], [ %call14, %error_dest ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end9.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %error ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_and_subscribe_port(ptr nocapture noundef readonly %client, ptr noundef %port, ptr noundef %subs, i1 noundef zeroext %is_src, i1 noundef zeroext %exclusive, i1 noundef zeroext %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6
  %cond = select i1 %is_src, ptr %c_src, ptr %c_dest
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 3
  tail call void @down_write(ptr noundef %list_mutex) #8
  br i1 %exclusive, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cond, align 4
  %cmp.i.not = icmp eq ptr %1, %cond
  br i1 %cmp.i.not, label %if.then.if.end22_crit_edge, label %if.then.__error_crit_edge

if.then.__error_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.else:                                          ; preds = %entry
  %exclusive6 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 2
  %2 = ptrtoint ptr %exclusive6 to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %exclusive6, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool7.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool7.not, label %for.cond.preheader, label %if.else.__error_crit_edge

if.else.__error_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

for.cond.preheader:                               ; preds = %if.else
  %retval.0.v.i = select i1 %is_src, i32 -80, i32 -88
  %port.i.i = getelementptr inbounds %struct.snd_seq_addr, ptr %subs, i32 0, i32 1
  %dest.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1
  %port.i28.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 1, i32 1
  %flags.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 3
  %queue.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %subs, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %match_subs_info.exit.for.cond_crit_edge, %for.cond.preheader
  %p.0.in = phi ptr [ %p.0, %match_subs_info.exit.for.cond_crit_edge ], [ %cond, %for.cond.preheader ]
  %3 = ptrtoint ptr %p.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %p.0 = load ptr, ptr %p.0.in, align 4
  %cmp.i69.not = icmp eq ptr %p.0, %cond
  br i1 %cmp.i69.not, label %for.cond.if.end22_crit_edge, label %for.body

for.cond.if.end22_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

for.body:                                         ; preds = %for.cond
  %retval.0.i = getelementptr i8, ptr %p.0, i32 %retval.0.v.i
  %4 = ptrtoint ptr %subs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %subs, align 1
  %6 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %retval.0.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.i.i = icmp eq i8 %5, %7
  br i1 %cmp.i.i, label %addr_match.exit.i, label %for.body.match_subs_info.exit_crit_edge

for.body.match_subs_info.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

addr_match.exit.i:                                ; preds = %for.body
  %8 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port.i.i, align 1
  %port5.i.i = getelementptr inbounds %struct.snd_seq_addr, ptr %retval.0.i, i32 0, i32 1
  %10 = ptrtoint ptr %port5.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp7.i.not.i = icmp eq i8 %9, %11
  br i1 %cmp7.i.not.i, label %land.lhs.true.i, label %addr_match.exit.i.match_subs_info.exit_crit_edge

addr_match.exit.i.match_subs_info.exit_crit_edge: ; preds = %addr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

land.lhs.true.i:                                  ; preds = %addr_match.exit.i
  %dest2.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %retval.0.i, i32 0, i32 1
  %12 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dest.i, align 1
  %14 = ptrtoint ptr %dest2.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dest2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %15)
  %cmp.i27.i = icmp eq i8 %13, %15
  br i1 %cmp.i27.i, label %addr_match.exit33.i, label %land.lhs.true.i.match_subs_info.exit_crit_edge

land.lhs.true.i.match_subs_info.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

addr_match.exit33.i:                              ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %port.i28.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port.i28.i, align 1
  %port5.i29.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %retval.0.i, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %port5.i29.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port5.i29.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp7.i30.not.i = icmp eq i8 %17, %19
  br i1 %cmp7.i30.not.i, label %if.then.i, label %addr_match.exit33.i.match_subs_info.exit_crit_edge

addr_match.exit33.i.match_subs_info.exit_crit_edge: ; preds = %addr_match.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

if.then.i:                                        ; preds = %addr_match.exit33.i
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool5.not.i = icmp eq i32 %21, 0
  br i1 %tobool5.not.i, label %if.then.i.__error_crit_edge, label %land.lhs.true6.i

if.then.i.__error_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

land.lhs.true6.i:                                 ; preds = %if.then.i
  %flags8.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %23)
  %cmp.i71 = icmp eq i32 %21, %23
  br i1 %cmp.i71, label %if.then9.i, label %land.lhs.true6.i.match_subs_info.exit_crit_edge

land.lhs.true6.i.match_subs_info.exit_crit_edge:  ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %queue.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %queue.i, align 4
  %queue10.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %retval.0.i, i32 0, i32 4
  %26 = ptrtoint ptr %queue10.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %queue10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %25, i8 %27)
  %cmp12.i = icmp eq i8 %25, %27
  %conv13.i = zext i1 %cmp12.i to i32
  br label %match_subs_info.exit

match_subs_info.exit:                             ; preds = %if.then9.i, %land.lhs.true6.i.match_subs_info.exit_crit_edge, %addr_match.exit33.i.match_subs_info.exit_crit_edge, %land.lhs.true.i.match_subs_info.exit_crit_edge, %addr_match.exit.i.match_subs_info.exit_crit_edge, %for.body.match_subs_info.exit_crit_edge
  %retval.0.i72 = phi i32 [ %conv13.i, %if.then9.i ], [ 0, %land.lhs.true6.i.match_subs_info.exit_crit_edge ], [ 0, %addr_match.exit33.i.match_subs_info.exit_crit_edge ], [ 0, %addr_match.exit.i.match_subs_info.exit_crit_edge ], [ 0, %for.body.match_subs_info.exit_crit_edge ], [ 0, %land.lhs.true.i.match_subs_info.exit_crit_edge ]
  %tobool18.not = icmp eq i32 %retval.0.i72, 0
  br i1 %tobool18.not, label %match_subs_info.exit.for.cond_crit_edge, label %match_subs_info.exit.__error_crit_edge

match_subs_info.exit.__error_crit_edge:           ; preds = %match_subs_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__error

match_subs_info.exit.for.cond_crit_edge:          ; preds = %match_subs_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end22:                                         ; preds = %for.cond.if.end22_crit_edge, %if.then.if.end22_crit_edge
  %owner.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 1
  %28 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %owner.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef %29) #8
  br i1 %call.i, label %if.end.i, label %if.end22.if.then27_crit_edge

if.end22.if.then27_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then27

if.end.i:                                         ; preds = %if.end22
  %count.i = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 1
  %30 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %count.i, align 4
  %inc.i = add i32 %31, 1
  store i32 %inc.i, ptr %count.i, align 4
  %open.i = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 5
  %32 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %open.i, align 4
  %tobool.not.i = icmp ne ptr %33, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i73 = icmp eq i32 %31, 0
  %or.cond.i = select i1 %tobool.not.i, i1 %cmp.i73, i1 false
  br i1 %or.cond.i, label %if.then2.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.then2.i:                                       ; preds = %if.end.i
  %private_data.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 9
  %34 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %private_data.i, align 4
  %call4.i = tail call i32 %33(ptr noundef %35, ptr noundef %subs) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end10.thread.i, label %if.then2.i.if.end10.i_crit_edge

if.then2.i.if.end10.i_crit_edge:                  ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10.i

if.end10.thread.i:                                ; preds = %if.then2.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %37) #8
  %38 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %count.i, align 4
  %dec.i = add i32 %39, -1
  store i32 %dec.i, ptr %count.i, align 4
  br label %if.then27

if.end10.i:                                       ; preds = %if.then2.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  br i1 %ack, label %land.lhs.true14.i, label %if.end10.i.if.end30_crit_edge

if.end10.i.if.end30_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true14.i:                                ; preds = %if.end10.i
  %40 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp15.i = icmp eq i32 %41, 1
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true14.i.if.end30_crit_edge

land.lhs.true14.i.if.end30_crit_edge:             ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then16.i:                                      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port, align 4
  %conv.i74 = zext i8 %43 to i32
  %port19.i = getelementptr inbounds %struct.snd_seq_addr, ptr %port, i32 0, i32 1
  %44 = ptrtoint ptr %port19.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port19.i, align 1
  %conv20.i = zext i8 %45 to i32
  %call21.i = tail call i32 @snd_seq_client_notify_subscription(i32 noundef %conv.i74, i32 noundef %conv20.i, ptr noundef %subs, i32 noundef 66) #8
  br label %if.end30

if.then27:                                        ; preds = %if.end10.thread.i, %if.end22.if.then27_crit_edge
  %retval.0.i75 = phi i32 [ -14, %if.end22.if.then27_crit_edge ], [ %call4.i, %if.end10.thread.i ]
  %exclusive28 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 2
  %46 = ptrtoint ptr %exclusive28 to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load29 = load i8, ptr %exclusive28, align 4
  %bf.clear = and i8 %bf.load29, 127
  store i8 %bf.clear, ptr %exclusive28, align 4
  br label %__error

if.end30:                                         ; preds = %if.then16.i, %land.lhs.true14.i.if.end30_crit_edge, %if.end10.i.if.end30_crit_edge
  %list_lock = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %list_lock) #8
  br i1 %is_src, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.end30
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i76 = tail call zeroext i1 @__list_add_valid(ptr noundef %src_list, ptr noundef %48, ptr noundef %cond) #8
  br i1 %call.i.i76, label %if.end.i.i, label %if.then32.if.end36_crit_edge

if.then32.if.end36_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end.i.i:                                       ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %src_list, ptr %prev.i, align 4
  %50 = ptrtoint ptr %src_list to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %cond, ptr %src_list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %src_list, ptr %48, align 4
  br label %if.end36

if.else34:                                        ; preds = %if.end30
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 2
  %prev.i77 = getelementptr inbounds %struct.list_head, ptr %cond, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i77, align 4
  %call.i.i78 = tail call zeroext i1 @__list_add_valid(ptr noundef %dest_list, ptr noundef %54, ptr noundef %cond) #8
  br i1 %call.i.i78, label %if.end.i.i80, label %if.else34.if.end36_crit_edge

if.else34.if.end36_crit_edge:                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.end.i.i80:                                     ; preds = %if.else34
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %prev.i77 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dest_list, ptr %prev.i77, align 4
  %56 = ptrtoint ptr %dest_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %cond, ptr %dest_list, align 4
  %prev3.i.i79 = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 2, i32 1
  %57 = ptrtoint ptr %prev3.i.i79 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i79, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %dest_list, ptr %54, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end.i.i80, %if.else34.if.end36_crit_edge, %if.end.i.i, %if.then32.if.end36_crit_edge
  %exclusive39 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 2
  %59 = ptrtoint ptr %exclusive39 to i32
  call void @__asan_load1_noabort(i32 %59)
  %bf.load40 = load i8, ptr %exclusive39, align 4
  %bf.shl = select i1 %exclusive, i8 -128, i8 0
  %bf.clear41 = and i8 %bf.load40, 127
  %bf.set42 = or i8 %bf.clear41, %bf.shl
  store i8 %bf.set42, ptr %exclusive39, align 4
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !30
  tail call void @_raw_write_unlock_irq(ptr noundef %list_lock) #8
  br label %__error

__error:                                          ; preds = %if.end36, %if.then27, %match_subs_info.exit.__error_crit_edge, %if.then.i.__error_crit_edge, %if.else.__error_crit_edge, %if.then.__error_crit_edge
  %err.0 = phi i32 [ %retval.0.i75, %if.then27 ], [ 0, %if.end36 ], [ -16, %if.then.__error_crit_edge ], [ -16, %if.else.__error_crit_edge ], [ -16, %match_subs_info.exit.__error_crit_edge ], [ -16, %if.then.i.__error_crit_edge ]
  tail call void @up_write(ptr noundef %list_mutex) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_port_disconnect(ptr nocapture noundef readonly %connector, ptr nocapture noundef readonly %src_client, ptr noundef %src_port, ptr nocapture noundef readonly %dest_client, ptr noundef %dest_port, ptr nocapture noundef readonly %info) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %dest_port, i32 0, i32 6
  %list_mutex = getelementptr inbounds %struct.snd_seq_client_port, ptr %dest_port, i32 0, i32 6, i32 3
  tail call void @down_write(ptr noundef %list_mutex) #8
  %port.i.i = getelementptr inbounds %struct.snd_seq_addr, ptr %info, i32 0, i32 1
  %dest.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 1
  %port.i28.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 1, i32 1
  %flags.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 3
  %queue.i = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %info, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %match_subs_info.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %c_dest, %entry ], [ %.pn, %match_subs_info.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %subs.0 = getelementptr i8, ptr %.pn, i32 -88
  %cmp.not = icmp eq ptr %.pn, %c_dest
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @up_write(ptr noundef %list_mutex) #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %1 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %info, align 1
  %3 = ptrtoint ptr %subs.0 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %subs.0, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.i.i = icmp eq i8 %2, %4
  br i1 %cmp.i.i, label %addr_match.exit.i, label %for.body.match_subs_info.exit_crit_edge

for.body.match_subs_info.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

addr_match.exit.i:                                ; preds = %for.body
  %5 = ptrtoint ptr %port.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port.i.i, align 1
  %port5.i.i = getelementptr i8, ptr %.pn, i32 -87
  %7 = ptrtoint ptr %port5.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port5.i.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7.i.not.i = icmp eq i8 %6, %8
  br i1 %cmp7.i.not.i, label %land.lhs.true.i, label %addr_match.exit.i.match_subs_info.exit_crit_edge

addr_match.exit.i.match_subs_info.exit_crit_edge: ; preds = %addr_match.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

land.lhs.true.i:                                  ; preds = %addr_match.exit.i
  %dest2.i = getelementptr i8, ptr %.pn, i32 -86
  %9 = ptrtoint ptr %dest.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dest.i, align 1
  %11 = ptrtoint ptr %dest2.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %dest2.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.i27.i = icmp eq i8 %10, %12
  br i1 %cmp.i27.i, label %addr_match.exit33.i, label %land.lhs.true.i.match_subs_info.exit_crit_edge

land.lhs.true.i.match_subs_info.exit_crit_edge:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

addr_match.exit33.i:                              ; preds = %land.lhs.true.i
  %13 = ptrtoint ptr %port.i28.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port.i28.i, align 1
  %port5.i29.i = getelementptr i8, ptr %.pn, i32 -85
  %15 = ptrtoint ptr %port5.i29.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port5.i29.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp7.i30.not.i = icmp eq i8 %14, %16
  br i1 %cmp7.i30.not.i, label %if.then.i, label %addr_match.exit33.i.match_subs_info.exit_crit_edge

addr_match.exit33.i.match_subs_info.exit_crit_edge: ; preds = %addr_match.exit33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

if.then.i:                                        ; preds = %addr_match.exit33.i
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool5.not.i = icmp eq i32 %18, 0
  br i1 %tobool5.not.i, label %if.then.i.if.end13_crit_edge, label %land.lhs.true6.i

if.then.i.if.end13_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

land.lhs.true6.i:                                 ; preds = %if.then.i
  %flags8.i = getelementptr i8, ptr %.pn, i32 -80
  %19 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %cmp.i = icmp eq i32 %18, %20
  br i1 %cmp.i, label %if.then9.i, label %land.lhs.true6.i.match_subs_info.exit_crit_edge

land.lhs.true6.i.match_subs_info.exit_crit_edge:  ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %match_subs_info.exit

if.then9.i:                                       ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %queue.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %queue.i, align 4
  %queue10.i = getelementptr i8, ptr %.pn, i32 -76
  %23 = ptrtoint ptr %queue10.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %queue10.i, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp12.i = icmp eq i8 %22, %24
  %conv13.i = zext i1 %cmp12.i to i32
  br label %match_subs_info.exit

match_subs_info.exit:                             ; preds = %if.then9.i, %land.lhs.true6.i.match_subs_info.exit_crit_edge, %addr_match.exit33.i.match_subs_info.exit_crit_edge, %land.lhs.true.i.match_subs_info.exit_crit_edge, %addr_match.exit.i.match_subs_info.exit_crit_edge, %for.body.match_subs_info.exit_crit_edge
  %retval.0.i = phi i32 [ %conv13.i, %if.then9.i ], [ 0, %land.lhs.true6.i.match_subs_info.exit_crit_edge ], [ 0, %addr_match.exit33.i.match_subs_info.exit_crit_edge ], [ 0, %addr_match.exit.i.match_subs_info.exit_crit_edge ], [ 0, %for.body.match_subs_info.exit_crit_edge ], [ 0, %land.lhs.true.i.match_subs_info.exit_crit_edge ]
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %match_subs_info.exit.for.cond_crit_edge, label %match_subs_info.exit.if.end13_crit_edge

match_subs_info.exit.if.end13_crit_edge:          ; preds = %match_subs_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

match_subs_info.exit.for.cond_crit_edge:          ; preds = %match_subs_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end13:                                         ; preds = %match_subs_info.exit.if.end13_crit_edge, %if.then.i.if.end13_crit_edge
  %number = getelementptr inbounds %struct.snd_seq_client, ptr %connector, i32 0, i32 3
  %25 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %number, align 4
  %number3 = getelementptr inbounds %struct.snd_seq_client, ptr %dest_client, i32 0, i32 3
  %27 = ptrtoint ptr %number3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %number3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %28)
  %cmp4 = icmp ne i32 %26, %28
  tail call fastcc void @__delete_and_unsubscribe_port(ptr noundef %dest_client, ptr noundef %dest_port, ptr noundef %subs.0, i1 noundef zeroext false, i1 noundef zeroext %cmp4)
  tail call void @up_write(ptr noundef %list_mutex) #8
  %29 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %number, align 4
  %number15 = getelementptr inbounds %struct.snd_seq_client, ptr %src_client, i32 0, i32 3
  %31 = ptrtoint ptr %number15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %number15, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp16 = icmp ne i32 %30, %32
  %list_mutex.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %src_port, i32 0, i32 5, i32 3
  tail call void @down_write(ptr noundef %list_mutex.i) #8
  tail call fastcc void @__delete_and_unsubscribe_port(ptr noundef %src_client, ptr noundef %src_port, ptr noundef %subs.0, i1 noundef zeroext true, i1 noundef zeroext %cmp16) #8
  tail call void @up_write(ptr noundef %list_mutex.i) #8
  tail call void @kfree(ptr noundef %subs.0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %for.end.thread
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -2, %for.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__delete_and_unsubscribe_port(ptr nocapture noundef readonly %client, ptr noundef %port, ptr noundef %subs, i1 noundef zeroext %is_src, i1 noundef zeroext %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %c_src = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5
  %c_dest = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6
  %cond = select i1 %is_src, ptr %c_src, ptr %c_dest
  %src_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 1
  %dest_list = getelementptr inbounds %struct.snd_seq_subscribers, ptr %subs, i32 0, i32 2
  %cond6 = select i1 %is_src, ptr %src_list, ptr %dest_list
  %list_lock = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 4
  tail call void @_raw_write_lock_irq(ptr noundef %list_lock) #8
  %0 = ptrtoint ptr %cond6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %cond6, align 4
  %cmp.i.not = icmp eq ptr %1, %cond6
  br i1 %cmp.i.not, label %if.end15.critedge, label %if.then

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %cond6) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del_init.exit_crit_edge

if.then.list_del_init.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %cond6, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %cond6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cond6, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %cond6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %cond6, ptr %cond6, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %cond6, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cond6, ptr %prev.i3.i, align 4
  %exclusive.c = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 2
  %10 = ptrtoint ptr %exclusive.c to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.c = load i8, ptr %exclusive.c, align 4
  %bf.clear.c = and i8 %bf.load.c, 127
  store i8 %bf.clear.c, ptr %exclusive.c, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %list_lock) #8
  %count.i = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 1
  %11 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i, label %list_del_init.exit.if.end15_crit_edge, label %if.end.i

list_del_init.exit.if.end15_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.end.i:                                         ; preds = %list_del_init.exit
  %dec.i = add i32 %12, -1
  %13 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec.i, ptr %count.i, align 4
  %close.i = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 6
  %14 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %close.i, align 4
  %tobool2.not.i = icmp ne ptr %15, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i29 = icmp eq i32 %dec.i, 0
  %or.cond.i = select i1 %tobool2.not.i, i1 %cmp.i29, i1 false
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %private_data.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %private_data.i, align 4
  %call.i = tail call i32 %15(ptr noundef %17, ptr noundef %subs) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then4.i, %if.end.i.if.end6.i_crit_edge
  br i1 %ack, label %land.lhs.true8.i, label %if.end6.i.if.end16.i_crit_edge

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

land.lhs.true8.i:                                 ; preds = %if.end6.i
  %18 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %client, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp9.i = icmp eq i32 %19, 1
  br i1 %cmp9.i, label %if.then10.i, label %land.lhs.true8.i.if.end16.i_crit_edge

land.lhs.true8.i.if.end16.i_crit_edge:            ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then10.i:                                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port, align 4
  %conv.i30 = zext i8 %21 to i32
  %port13.i = getelementptr inbounds %struct.snd_seq_addr, ptr %port, i32 0, i32 1
  %22 = ptrtoint ptr %port13.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %port13.i, align 1
  %conv14.i = zext i8 %23 to i32
  %call15.i = tail call i32 @snd_seq_client_notify_subscription(i32 noundef %conv.i30, i32 noundef %conv14.i, ptr noundef %subs, i32 noundef 67) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %land.lhs.true8.i.if.end16.i_crit_edge, %if.end6.i.if.end16.i_crit_edge
  %owner.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 1
  %24 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %25) #8
  br label %if.end15

if.end15.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %exclusive.c26 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond, i32 0, i32 2
  %26 = ptrtoint ptr %exclusive.c26 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.c27 = load i8, ptr %exclusive.c26, align 4
  %bf.clear.c28 = and i8 %bf.load.c27, 127
  store i8 %bf.clear.c28, ptr %exclusive.c26, align 4
  tail call void @_raw_write_unlock_irq(ptr noundef %list_lock) #8
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %if.end16.i, %list_del_init.exit.if.end15_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_port_get_subscription(ptr noundef %src_grp, ptr nocapture noundef readonly %dest_addr, ptr nocapture noundef writeonly %subs) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list_mutex = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %src_grp, i32 0, i32 3
  tail call void @down_read(ptr noundef %list_mutex) #8
  %port.i = getelementptr inbounds %struct.snd_seq_addr, ptr %dest_addr, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %addr_match.exit.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ %src_grp, %entry ], [ %.pn, %addr_match.exit.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %src_grp
  br i1 %cmp.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.cond
  %dest = getelementptr i8, ptr %.pn, i32 -78
  %1 = ptrtoint ptr %dest_addr to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %dest_addr, align 1
  %3 = ptrtoint ptr %dest to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dest, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %2, i8 %4)
  %cmp.i = icmp eq i8 %2, %4
  br i1 %cmp.i, label %land.rhs.i, label %for.body.addr_match.exit_crit_edge

for.body.addr_match.exit_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %addr_match.exit

land.rhs.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %port.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %port.i, align 1
  %port5.i = getelementptr i8, ptr %.pn, i32 -77
  %7 = ptrtoint ptr %port5.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp7.i = icmp eq i8 %6, %8
  %phi.cast.i = zext i1 %cmp7.i to i32
  br label %addr_match.exit

addr_match.exit:                                  ; preds = %land.rhs.i, %for.body.addr_match.exit_crit_edge
  %9 = phi i32 [ 0, %for.body.addr_match.exit_crit_edge ], [ %phi.cast.i, %land.rhs.i ]
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %addr_match.exit.for.cond_crit_edge, label %if.then

addr_match.exit.for.cond_crit_edge:               ; preds = %addr_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then:                                          ; preds = %addr_match.exit
  call void @__sanitizer_cov_trace_pc() #10
  %s.0.le = getelementptr i8, ptr %.pn, i32 -80
  %10 = call ptr @memcpy(ptr %subs, ptr %s.0.le, i32 80)
  br label %for.end

for.end:                                          ; preds = %if.then, %for.cond.for.end_crit_edge
  %err.0 = phi i32 [ 0, %if.then ], [ -2, %for.cond.for.end_crit_edge ]
  tail call void @up_read(ptr noundef %list_mutex) #8
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_event_port_attach(i32 noundef %client, ptr noundef %pcbp, i32 noundef %cap, i32 noundef %type, i32 noundef %midi_channels, i32 noundef %midi_voices, ptr noundef %portname) #0 align 64 {
entry:
  %portinfo = alloca %struct.snd_seq_port_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %portinfo) #8
  %0 = call ptr @memset(ptr %portinfo, i32 0, i32 164)
  %conv = trunc i32 %client to i8
  %1 = ptrtoint ptr %portinfo to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %portinfo, align 4
  %name = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 1
  %tobool.not = icmp eq ptr %portname, null
  %spec.select = select i1 %tobool.not, ptr @.str.4, ptr %portname
  %call = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %spec.select, i32 noundef 64) #8
  %capability = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 2
  %2 = ptrtoint ptr %capability to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cap, ptr %capability, align 4
  %type2 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 3
  %3 = ptrtoint ptr %type2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %type, ptr %type2, align 4
  %kernel = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 9
  %4 = ptrtoint ptr %kernel to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pcbp, ptr %kernel, align 4
  %midi_channels3 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 4
  %5 = ptrtoint ptr %midi_channels3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %midi_channels, ptr %midi_channels3, align 4
  %midi_voices4 = getelementptr inbounds %struct.snd_seq_port_info, ptr %portinfo, i32 0, i32 5
  %6 = ptrtoint ptr %midi_voices4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %midi_voices, ptr %midi_voices4, align 4
  %call5 = call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef -1062972640, ptr noundef nonnull %portinfo) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call5)
  %cmp = icmp sgt i32 %call5, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %portinfo, i32 0, i32 1
  %7 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %port, align 1
  %conv8 = zext i8 %8 to i32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %conv8, %if.then ], [ %call5, %entry.if.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %portinfo) #8
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_kernel_client_ctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_seq_event_port_detach(i32 noundef %client, i32 noundef %port) #0 align 64 {
entry:
  %portinfo = alloca %struct.snd_seq_port_info, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 164, ptr nonnull %portinfo) #8
  %0 = call ptr @memset(ptr %portinfo, i32 0, i32 164)
  %conv = trunc i32 %client to i8
  %1 = ptrtoint ptr %portinfo to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %portinfo, align 4
  %conv2 = trunc i32 %port to i8
  %port4 = getelementptr inbounds %struct.snd_seq_addr, ptr %portinfo, i32 0, i32 1
  %2 = ptrtoint ptr %port4 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv2, ptr %port4, align 1
  %call = call i32 @snd_seq_kernel_client_ctl(i32 noundef %client, i32 noundef 1084511009, ptr noundef nonnull %portinfo) #8
  call void @llvm.lifetime.end.p0(i64 164, ptr nonnull %portinfo) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__rwlock_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_use_lock_sync_helper(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clear_subscriber_list(ptr nocapture noundef readonly %client, ptr noundef %port, ptr noundef readonly %grp, i32 noundef %is_src) unnamed_addr #0 align 64 {
entry:
  %c = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %grp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %grp, align 4
  %cmp.i.not44 = icmp eq ptr %1, %grp
  br i1 %cmp.i.not44, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %is_src)
  %tobool3 = icmp ne i32 %is_src, 0
  %retval.0.v.i = select i1 %tobool3, i32 -80, i32 -88
  %c_src.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 5
  %c_dest.i = getelementptr inbounds %struct.snd_seq_client_port, ptr %port, i32 0, i32 6
  %cond.i = select i1 %tobool3, ptr %c_src.i, ptr %c_dest.i
  %list_mutex.i = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond.i, i32 0, i32 3
  %lnot17 = xor i1 %tobool3, true
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %p.045 = phi ptr [ %1, %for.body.lr.ph ], [ %n.046, %cleanup.for.body_crit_edge ]
  %2 = ptrtoint ptr %p.045 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.046 = load ptr, ptr %p.045, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #8
  %3 = ptrtoint ptr %c to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %c, align 4, !annotation !33
  %retval.0.i = getelementptr i8, ptr %p.045, i32 %retval.0.v.i
  %dest = getelementptr inbounds %struct.snd_seq_port_subscribe, ptr %retval.0.i, i32 0, i32 1
  %retval.0.i.sink = select i1 %tobool3, ptr %dest, ptr %retval.0.i
  %call8 = call fastcc ptr @get_client_port(ptr noundef %retval.0.i.sink, ptr noundef nonnull %c)
  tail call void @down_write(ptr noundef %list_mutex.i) #8
  tail call fastcc void @__delete_and_unsubscribe_port(ptr noundef %client, ptr noundef %port, ptr noundef %retval.0.i, i1 noundef zeroext %tobool3, i1 noundef zeroext false) #8
  tail call void @up_write(ptr noundef %list_mutex.i) #8
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.then11, label %if.end15

if.then11:                                        ; preds = %for.body
  %ref_count = getelementptr inbounds %struct.snd_seq_subscribers, ptr %retval.0.i, i32 0, i32 3
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !34
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !35
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then13, label %if.then11.cleanup_crit_edge

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %retval.0.i) #8
  br label %cleanup

if.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %c, align 4
  %c_src.i39 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call8, i32 0, i32 5
  %c_dest.i40 = getelementptr inbounds %struct.snd_seq_client_port, ptr %call8, i32 0, i32 6
  %cond.i41 = select i1 %tobool3, ptr %c_dest.i40, ptr %c_src.i39
  %list_mutex.i42 = getelementptr inbounds %struct.snd_seq_port_subs_info, ptr %cond.i41, i32 0, i32 3
  tail call void @down_write(ptr noundef %list_mutex.i42) #8
  tail call fastcc void @__delete_and_unsubscribe_port(ptr noundef %6, ptr noundef nonnull %call8, ptr noundef %retval.0.i, i1 noundef zeroext %lnot17, i1 noundef zeroext true) #8
  tail call void @up_write(ptr noundef %list_mutex.i42) #8
  tail call void @kfree(ptr noundef %retval.0.i) #8
  %use_lock = getelementptr inbounds %struct.snd_seq_client_port, ptr %call8, i32 0, i32 4
  %call.i.i37 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !37
  %use_lock18 = getelementptr inbounds %struct.snd_seq_client, ptr %6, i32 0, i32 6
  %call.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock18, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock18, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock18, ptr %use_lock18, i32 1, ptr elementtype(i32) %use_lock18) #8, !srcloc !37
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then13, %if.then11.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #8
  %cmp.i.not = icmp eq ptr %n.046, %grp
  br i1 %cmp.i.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @get_client_port(ptr nocapture noundef readonly %addr, ptr nocapture noundef %cp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %addr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %addr, align 1
  %conv = zext i8 %1 to i32
  %call = tail call ptr @snd_seq_client_use_ptr(i32 noundef %conv) #8
  %2 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %cp, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %port = getelementptr inbounds %struct.snd_seq_addr, ptr %addr, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port, align 1
  %ports_lock.i = getelementptr inbounds %struct.snd_seq_client, ptr %call, i32 0, i32 10
  tail call void @_raw_read_lock(ptr noundef %ports_lock.i) #8
  %ports_list_head.i = getelementptr inbounds %struct.snd_seq_client, ptr %call, i32 0, i32 9
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %.pn.in.i = phi ptr [ %ports_list_head.i, %if.end.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp2.not.i = icmp eq ptr %.pn.i, %ports_list_head.i
  br i1 %cmp2.not.i, label %for.cond.i.snd_seq_port_use_ptr.exit.thread_crit_edge, label %for.body.i

for.cond.i.snd_seq_port_use_ptr.exit.thread_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_port_use_ptr.exit.thread

for.body.i:                                       ; preds = %for.cond.i
  %port3.i = getelementptr i8, ptr %.pn.i, i32 -71
  %6 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port3.i, align 1
  %cmp4.i = icmp eq i8 %7, %4
  br i1 %cmp4.i, label %if.then6.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

if.then6.i:                                       ; preds = %for.body.i
  %closing.i = getelementptr i8, ptr %.pn.i, i32 352
  %8 = ptrtoint ptr %closing.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %bf.load.i = load i8, ptr %closing.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %snd_seq_port_use_ptr.exit, label %if.then6.i.snd_seq_port_use_ptr.exit.thread_crit_edge

if.then6.i.snd_seq_port_use_ptr.exit.thread_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_seq_port_use_ptr.exit.thread

snd_seq_port_use_ptr.exit.thread:                 ; preds = %if.then6.i.snd_seq_port_use_ptr.exit.thread_crit_edge, %for.cond.i.snd_seq_port_use_ptr.exit.thread_crit_edge
  tail call void @_raw_read_unlock(ptr noundef %ports_lock.i) #8
  br label %if.then4

snd_seq_port_use_ptr.exit:                        ; preds = %if.then6.i
  %port.0.le.i = getelementptr i8, ptr %.pn.i, i32 -72
  %use_lock.i = getelementptr i8, ptr %.pn.i, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock.i, ptr %use_lock.i, i32 1, ptr elementtype(i32) %use_lock.i) #8, !srcloc !30
  tail call void @_raw_read_unlock(ptr noundef %ports_lock.i) #8
  %tobool3.not = icmp eq ptr %port.0.le.i, null
  br i1 %tobool3.not, label %snd_seq_port_use_ptr.exit.if.then4_crit_edge, label %snd_seq_port_use_ptr.exit.cleanup_crit_edge

snd_seq_port_use_ptr.exit.cleanup_crit_edge:      ; preds = %snd_seq_port_use_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

snd_seq_port_use_ptr.exit.if.then4_crit_edge:     ; preds = %snd_seq_port_use_ptr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then4

if.then4:                                         ; preds = %snd_seq_port_use_ptr.exit.if.then4_crit_edge, %snd_seq_port_use_ptr.exit.thread
  %10 = ptrtoint ptr %cp to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cp, align 4
  %use_lock = getelementptr inbounds %struct.snd_seq_client, ptr %11, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %use_lock, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %use_lock, i32 1, i32 3, i32 1) #8
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %use_lock, ptr %use_lock, i32 1, ptr elementtype(i32) %use_lock) #8, !srcloc !37
  %13 = ptrtoint ptr %cp to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %cp, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then4, %snd_seq_port_use_ptr.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then4 ], [ %port.0.le.i, %snd_seq_port_use_ptr.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_seq_client_use_ptr(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_seq_client_notify_subscription(i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !11, !13, !15, !17, !18, !20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/core/seq/seq_ports.c", i32 120, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/core/seq/seq_ports.c", i32 124, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @snd_seq_create_port._entry, !3, !"_entry", i1 false, i1 false}
!6 = !{ptr @snd_seq_create_port._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/core/seq/seq_ports.c", i32 136, i32 26}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/seq/seq_ports.c", i32 672, i32 47}
!11 = !{ptr @__ksymtab_snd_seq_event_port_attach, !12, !"__ksymtab_snd_seq_event_port_attach", i1 false, i1 false}
!12 = !{!"../sound/core/seq/seq_ports.c", i32 691, i32 1}
!13 = !{ptr @__ksymtab_snd_seq_event_port_detach, !14, !"__ksymtab_snd_seq_event_port_detach", i1 false, i1 false}
!14 = !{!"../sound/core/seq/seq_ports.c", i32 711, i32 1}
!15 = !{ptr @port_subs_info_init.__key, !16, !"__key", i1 false, i1 false}
!16 = !{!"../sound/core/seq/seq_ports.c", i32 103, i32 2}
!17 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @port_subs_info_init.__key.6, !19, !"__key", i1 false, i1 false}
!19 = !{!"../sound/core/seq/seq_ports.c", i32 104, i32 2}
!20 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i64 2148496479, i64 2148496505, i64 2148496534, i64 2148496568, i64 2148496599, i64 2148496622}
!31 = !{!"branch_weights", i32 1, i32 2000}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!"auto-init"}
!34 = !{i64 2148584931}
!35 = !{i64 2148499664, i64 2148499696, i64 2148499725, i64 2148499759, i64 2148499790, i64 2148499813}
!36 = !{i64 2148585160}
!37 = !{i64 2148498944, i64 2148498970, i64 2148498999, i64 2148499033, i64 2148499064, i64 2148499087}
