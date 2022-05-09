; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_dev.c_pt.bc'
source_filename = "../net/ax25/ax25_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.139, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.139 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ax25_fwd_struct = type { %struct.ax25_address, %struct.ax25_address }
%struct.ax25_address = type { [7 x i8] }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ax25_dev_lock\00", [18 x i8] zeroinitializer }, align 32
@ax25_dev_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@ax25_dev_list = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@ax25_dev_device_up._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013AX.25: ax25_dev_device_up - out of memory\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ax25_dev_device_up\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/ax25/ax25_dev.c\00", [44 x i8] zeroinitializer }, align 32
@ax25_dev_device_up._entry_ptr = internal global ptr @ax25_dev_device_up._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 35306, i64 35307]
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"ax25_dev_lock\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 30, i32 1 }
@___asan_gen_.10 = private unnamed_addr constant [14 x i8] c"ax25_dev_list\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 29, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [23 x i8] c"../net/ax25/ax25_dev.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 56, i32 3 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @ax25_dev_device_up._entry, ptr @ax25_dev_device_up._entry_ptr, ptr @ax25_dev_free, ptr @.str, ptr @ax25_dev_lock, ptr @ax25_dev_list, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_dev_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_dev_list to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ax25_dev_device_up._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @ax25_addr_ax25dev(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %ax25_dev.06 = load ptr, ptr @ax25_dev_list, align 4
  %cmp.not7 = icmp eq ptr %ax25_dev.06, null
  br i1 %cmp.not7, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %ax25_dev.09 = phi ptr [ %ax25_dev.0, %for.inc.for.body_crit_edge ], [ %ax25_dev.06, %entry.for.body_crit_edge ]
  %res.08 = phi ptr [ %res.1, %for.inc.for.body_crit_edge ], [ null, %entry.for.body_crit_edge ]
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.09, i32 0, i32 1
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  %call = tail call i32 @ax25cmp(ptr noundef %addr, ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp eq i32 %call, 0
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %refcount.i = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.09, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !22

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %5 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %.not.i.i.i.i = icmp sgt i32 %5, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.for.inc_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !23

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.for.inc_crit_edge:                ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef %.sink.i.i.i.i) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %res.1 = phi ptr [ %res.08, %for.body.for.inc_crit_edge ], [ %ax25_dev.09, %if.else.i.i.i.i.for.inc_crit_edge ], [ %ax25_dev.09, %if.end15.sink.split.i.i.i.i ]
  %6 = ptrtoint ptr %ax25_dev.09 to i32
  call void @__asan_load4_noabort(i32 %6)
  %ax25_dev.0 = load ptr, ptr %ax25_dev.09, align 4
  %cmp.not = icmp eq ptr %ax25_dev.0, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %res.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %res.1, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  ret ptr %res.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dev_device_up(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 136) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %refcount = getelementptr inbounds %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  %1 = ptrtoint ptr %refcount to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %refcount, align 4
  %ax25_ptr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %2 = ptrtoint ptr %ax25_ptr to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %ax25_ptr, align 4
  %dev2 = getelementptr inbounds %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev2, align 4
  %dev_tracker = getelementptr inbounds %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 2
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %if.end.dev_hold_track.exit_crit_edge, label %do.body1.i.i

if.end.dev_hold_track.exit_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold_track.exit

do.body1.i.i:                                     ; preds = %if.end
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !24
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %5 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %13, %7
  %14 = inttoptr i32 %add.i.i to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  %add13.i.i = add i32 %16, 1
  store i32 %add13.i.i, ptr %14, align 4
  %17 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !25
  %and.i.i.i.i = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_hold.exit.i_crit_edge, !prof !22

do.body1.i.i.dev_hold.exit.i_crit_edge:           ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_hold.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_hold.exit.i

dev_hold.exit.i:                                  ; preds = %if.then28.i.i, %do.body1.i.i.dev_hold.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #8, !srcloc !26
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker, i32 noundef 2592) #8
  br label %dev_hold_track.exit

dev_hold_track.exit:                              ; preds = %dev_hold.exit.i, %if.end.dev_hold_track.exit_crit_edge
  %forward = getelementptr inbounds %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %forward to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %forward, align 4
  %values = getelementptr inbounds %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %values to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %values, align 4
  %arrayidx4 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 1
  %20 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx4, align 8
  %arrayidx6 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %arrayidx6, align 4
  %arrayidx8 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 3
  %22 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %arrayidx8, align 8
  %arrayidx10 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 4
  %23 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 5
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 10000, ptr %arrayidx14, align 4
  %arrayidx16 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 7
  %26 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3000, ptr %arrayidx16, align 8
  %arrayidx18 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 8
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 300000, ptr %arrayidx18, align 4
  %arrayidx20 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 9
  %28 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %arrayidx20, align 8
  %arrayidx22 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 10
  %29 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 10, ptr %arrayidx22, align 4
  %arrayidx24 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 11
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 256, ptr %arrayidx24, align 8
  %arrayidx26 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 12
  %31 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %arrayidx26, align 4
  %arrayidx28 = getelementptr %struct.ax25_dev, ptr %call7.i.i, i32 0, i32 5, i32 13
  %32 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 180000, ptr %arrayidx28, align 8
  tail call void @ax25_ds_setup_timer(ptr noundef nonnull %call7.i.i) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %33 = load ptr, ptr @ax25_dev_list, align 4
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %call7.i.i, align 8
  store ptr %call7.i.i, ptr @ax25_dev_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %refcount, i32 1, i32 3, i32 1) #8
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount, ptr %refcount, i32 1, ptr elementtype(i32) %refcount) #8, !srcloc !21
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %dev_hold_track.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !22

dev_hold_track.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %dev_hold_track.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %dev_hold_track.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %36 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %36)
  %.not.i.i.i.i = icmp sgt i32 %36, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.ax25_dev_hold.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !23

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.ax25_dev_hold.exit_crit_edge:     ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ax25_dev_hold.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %dev_hold_track.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %dev_hold_track.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcount, i32 noundef %.sink.i.i.i.i) #8
  br label %ax25_dev_hold.exit

ax25_dev_hold.exit:                               ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.ax25_dev_hold.exit_crit_edge
  %call29 = tail call i32 @ax25_register_dev_sysctl(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %ax25_dev_hold.exit, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_setup_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ax25_register_dev_sysctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dev_device_down(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_ptr.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @ax25_unregister_dev_sysctl(ptr noundef nonnull %1) #8
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  tail call void @ax25_ds_del_timer(ptr noundef nonnull %1) #8
  %s.0103 = load ptr, ptr @ax25_dev_list, align 4
  %cmp1.not104 = icmp eq ptr %s.0103, null
  br i1 %cmp1.not104, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %s.0105 = phi ptr [ %s.0, %for.inc.for.body_crit_edge ], [ %s.0103, %if.end.for.body_crit_edge ]
  %forward = getelementptr inbounds %struct.ax25_dev, ptr %s.0105, i32 0, i32 3
  %2 = ptrtoint ptr %forward to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %forward, align 4
  %cmp2 = icmp eq ptr %3, %dev
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %forward to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %forward, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %5 = ptrtoint ptr %s.0105 to i32
  call void @__asan_load4_noabort(i32 %5)
  %s.0 = load ptr, ptr %s.0105, align 4
  %cmp1.not = icmp eq ptr %s.0, null
  br i1 %cmp1.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %6 = load ptr, ptr @ax25_dev_list, align 4
  %cmp6 = icmp eq ptr %6, %1
  br i1 %cmp6, label %if.then7, label %for.end.while.cond_crit_edge

for.end.while.cond_crit_edge:                     ; preds = %for.end
  br label %while.cond

if.then7:                                         ; preds = %for.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  store ptr %8, ptr @ax25_dev_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %refcount.i = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.ax25_dev_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.ax25_dev_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %ax25_dev_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %ax25_dev_put.exit

if.then.i:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %ax25_dev_put.exit

ax25_dev_put.exit:                                ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.ax25_dev_put.exit_crit_edge
  %10 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ax25_ptr.i, align 4
  %tobool.not.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i, label %ax25_dev_put.exit.dev_put_track.exit_crit_edge, label %do.body1.i.i

ax25_dev_put.exit.dev_put_track.exit_crit_edge:   ; preds = %ax25_dev_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %ax25_dev_put.exit
  %dev_tracker = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #8
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !24
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %12 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %14 = ptrtoint ptr %13 to i32
  %15 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i.i.i = and i32 %15, -16384
  %16 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %20, %14
  %21 = inttoptr i32 %add.i.i to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  %add13.i.i = add i32 %23, -1
  store i32 %add13.i.i, ptr %21, align 4
  %24 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !25
  %and.i.i.i.i = and i32 %24, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !22

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %11) #8, !srcloc !26
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %ax25_dev_put.exit.dev_put_track.exit_crit_edge
  %call.i.i.i.i.i.i52 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i53 = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i53)
  %cmp.i.i.i.i54 = icmp eq i32 %asmresult.i.i.i.i.i.i.i53, 1
  br i1 %cmp.i.i.i.i54, label %if.then.i58, label %if.end5.i.i.i.i56

if.end5.i.i.i.i56:                                ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i53)
  %.not.i.i.i.i55 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i53, 0
  br i1 %.not.i.i.i.i55, label %if.end5.i.i.i.i56.cleanup_crit_edge, label %if.then10.i.i.i.i57, !prof !23

if.end5.i.i.i.i56.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i57:                              ; preds = %if.end5.i.i.i.i56
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i58:                                      ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %for.end.while.cond_crit_edge
  %s.1 = phi ptr [ %27, %while.body.while.cond_crit_edge ], [ %6, %for.end.while.cond_crit_edge ]
  %cmp10.not = icmp eq ptr %s.1, null
  br i1 %cmp10.not, label %while.cond.while.end_crit_edge, label %land.rhs

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  %26 = ptrtoint ptr %s.1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %s.1, align 4
  %cmp12.not = icmp eq ptr %27, null
  br i1 %cmp12.not, label %land.rhs.while.end_crit_edge, label %while.body

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %cmp14 = icmp eq ptr %27, %1
  br i1 %cmp14, label %if.then15, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

if.then15:                                        ; preds = %while.body
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %30 = ptrtoint ptr %s.1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %s.1, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %refcount.i60 = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i61 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i60, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i60, i32 1, i32 3, i32 1) #8
  %31 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i60, ptr %refcount.i60, i32 1, ptr elementtype(i32) %refcount.i60) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i62 = extractvalue { i32, i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i62)
  %cmp.i.i.i.i63 = icmp eq i32 %asmresult.i.i.i.i.i.i.i62, 1
  br i1 %cmp.i.i.i.i63, label %if.then.i67, label %if.end5.i.i.i.i65

if.end5.i.i.i.i65:                                ; preds = %if.then15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i62)
  %.not.i.i.i.i64 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i62, 0
  br i1 %.not.i.i.i.i64, label %if.end5.i.i.i.i65.ax25_dev_put.exit68_crit_edge, label %if.then10.i.i.i.i66, !prof !23

if.end5.i.i.i.i65.ax25_dev_put.exit68_crit_edge:  ; preds = %if.end5.i.i.i.i65
  call void @__sanitizer_cov_trace_pc() #10
  br label %ax25_dev_put.exit68

if.then10.i.i.i.i66:                              ; preds = %if.end5.i.i.i.i65
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i60, i32 noundef 3) #8
  br label %ax25_dev_put.exit68

if.then.i67:                                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %ax25_dev_put.exit68

ax25_dev_put.exit68:                              ; preds = %if.then.i67, %if.then10.i.i.i.i66, %if.end5.i.i.i.i65.ax25_dev_put.exit68_crit_edge
  %32 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ax25_ptr.i, align 4
  %tobool.not.i69 = icmp eq ptr %dev, null
  br i1 %tobool.not.i69, label %ax25_dev_put.exit68.dev_put_track.exit83_crit_edge, label %do.body1.i.i80

ax25_dev_put.exit68.dev_put_track.exit83_crit_edge: ; preds = %ax25_dev_put.exit68
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit83

do.body1.i.i80:                                   ; preds = %ax25_dev_put.exit68
  %dev_tracker19 = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 2
  %refcnt_tracker.i.i70 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 119
  %call.i.i71 = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i70, ptr noundef %dev_tracker19) #8
  %33 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !24
  %pcpu_refcnt.i.i72 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 118
  %34 = ptrtoint ptr %pcpu_refcnt.i.i72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcpu_refcnt.i.i72, align 4
  %36 = ptrtoint ptr %35 to i32
  %37 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i.i.i73 = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i73 to ptr
  %cpu.i.i74 = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %cpu.i.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cpu.i.i74, align 4
  %arrayidx.i.i75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %40
  %41 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx.i.i75, align 4
  %add.i.i76 = add i32 %42, %36
  %43 = inttoptr i32 %add.i.i76 to ptr
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %43, align 4
  %add13.i.i77 = add i32 %45, -1
  store i32 %add13.i.i77, ptr %43, align 4
  %46 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !25
  %and.i.i.i.i78 = and i32 %46, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i78)
  %tobool24.not.i.i79 = icmp eq i32 %and.i.i.i.i78, 0
  br i1 %tobool24.not.i.i79, label %if.then28.i.i81, label %do.body1.i.i80.dev_put.exit.i82_crit_edge, !prof !22

do.body1.i.i80.dev_put.exit.i82_crit_edge:        ; preds = %do.body1.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i82

if.then28.i.i81:                                  ; preds = %do.body1.i.i80
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i82

dev_put.exit.i82:                                 ; preds = %if.then28.i.i81, %do.body1.i.i80.dev_put.exit.i82_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %33) #8, !srcloc !26
  br label %dev_put_track.exit83

dev_put_track.exit83:                             ; preds = %dev_put.exit.i82, %ax25_dev_put.exit68.dev_put_track.exit83_crit_edge
  %call.i.i.i.i.i.i85 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i60, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i60, i32 1, i32 3, i32 1) #8
  %47 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i60, ptr %refcount.i60, i32 1, ptr elementtype(i32) %refcount.i60) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i86 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i86)
  %cmp.i.i.i.i87 = icmp eq i32 %asmresult.i.i.i.i.i.i.i86, 1
  br i1 %cmp.i.i.i.i87, label %if.then.i91, label %if.end5.i.i.i.i89

if.end5.i.i.i.i89:                                ; preds = %dev_put_track.exit83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i86)
  %.not.i.i.i.i88 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i86, 0
  br i1 %.not.i.i.i.i88, label %if.end5.i.i.i.i89.cleanup_crit_edge, label %if.then10.i.i.i.i90, !prof !23

if.end5.i.i.i.i89.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i90:                              ; preds = %if.end5.i.i.i.i89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i60, i32 noundef 3) #8
  br label %cleanup

if.then.i91:                                      ; preds = %dev_put_track.exit83
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %48 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr null, ptr %ax25_ptr.i, align 4
  %refcount.i93 = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i.i94 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i93, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i93, i32 1, i32 3, i32 1) #8
  %49 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i93, ptr %refcount.i93, i32 1, ptr elementtype(i32) %refcount.i93) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i95 = extractvalue { i32, i32, i32 } %49, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i95)
  %cmp.i.i.i.i96 = icmp eq i32 %asmresult.i.i.i.i.i.i.i95, 1
  br i1 %cmp.i.i.i.i96, label %if.then.i100, label %if.end5.i.i.i.i98

if.end5.i.i.i.i98:                                ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i95)
  %.not.i.i.i.i97 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i95, 0
  br i1 %.not.i.i.i.i97, label %if.end5.i.i.i.i98.cleanup_crit_edge, label %if.then10.i.i.i.i99, !prof !23

if.end5.i.i.i.i98.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i99:                              ; preds = %if.end5.i.i.i.i98
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i93, i32 noundef 3) #8
  br label %cleanup

if.then.i100:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i100, %if.then10.i.i.i.i99, %if.end5.i.i.i.i98.cleanup_crit_edge, %if.then.i91, %if.then10.i.i.i.i90, %if.end5.i.i.i.i89.cleanup_crit_edge, %if.then.i58, %if.then10.i.i.i.i57, %if.end5.i.i.i.i56.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_unregister_dev_sysctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ax25_fwd_ioctl(i32 noundef %cmd, ptr noundef %fwd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ax25_addr_ax25dev(ptr noundef %fwd)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.default [
    i32 35306, label %sw.bb
    i32 35307, label %sw.bb8
  ]

sw.bb:                                            ; preds = %if.end
  %port_to = getelementptr inbounds %struct.ax25_fwd_struct, ptr %fwd, i32 0, i32 1
  %call1 = tail call ptr @ax25_addr_ax25dev(ptr noundef %port_to)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %sw.bb
  %refcount.i = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i, ptr %refcount.i, i32 1, ptr elementtype(i32) %refcount.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i, !prof !23

if.end5.i.i.i.i.cleanup_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i, i32 noundef 3) #8
  br label %cleanup

if.then.i:                                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

if.end3:                                          ; preds = %sw.bb
  %forward = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %forward to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %forward, align 4
  %tobool4.not = icmp eq ptr %3, null
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end3
  %refcount.i28 = getelementptr inbounds %struct.ax25_dev, ptr %call1, i32 0, i32 7
  %call.i.i.i.i.i.i29 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i28, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i28, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i28, ptr %refcount.i28, i32 1, ptr elementtype(i32) %refcount.i28) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i30 = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i30)
  %cmp.i.i.i.i31 = icmp eq i32 %asmresult.i.i.i.i.i.i.i30, 1
  br i1 %cmp.i.i.i.i31, label %if.then.i35, label %if.end5.i.i.i.i33

if.end5.i.i.i.i33:                                ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i30)
  %.not.i.i.i.i32 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i30, 0
  br i1 %.not.i.i.i.i32, label %if.end5.i.i.i.i33.ax25_dev_put.exit36_crit_edge, label %if.then10.i.i.i.i34, !prof !23

if.end5.i.i.i.i33.ax25_dev_put.exit36_crit_edge:  ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  br label %ax25_dev_put.exit36

if.then10.i.i.i.i34:                              ; preds = %if.end5.i.i.i.i33
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i28, i32 noundef 3) #8
  br label %ax25_dev_put.exit36

if.then.i35:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call1) #8
  br label %ax25_dev_put.exit36

ax25_dev_put.exit36:                              ; preds = %if.then.i35, %if.then10.i.i.i.i34, %if.end5.i.i.i.i33.ax25_dev_put.exit36_crit_edge
  %refcount.i37 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i38 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i37, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i37, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i37, ptr %refcount.i37, i32 1, ptr elementtype(i32) %refcount.i37) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i39 = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i39)
  %cmp.i.i.i.i40 = icmp eq i32 %asmresult.i.i.i.i.i.i.i39, 1
  br i1 %cmp.i.i.i.i40, label %if.then.i44, label %if.end5.i.i.i.i42

if.end5.i.i.i.i42:                                ; preds = %ax25_dev_put.exit36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i39)
  %.not.i.i.i.i41 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i39, 0
  br i1 %.not.i.i.i.i41, label %if.end5.i.i.i.i42.cleanup_crit_edge, label %if.then10.i.i.i.i43, !prof !23

if.end5.i.i.i.i42.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i43:                              ; preds = %if.end5.i.i.i.i42
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i37, i32 noundef 3) #8
  br label %cleanup

if.then.i44:                                      ; preds = %ax25_dev_put.exit36
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %forward to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %forward, align 4
  %refcount.i46 = getelementptr inbounds %struct.ax25_dev, ptr %call1, i32 0, i32 7
  %call.i.i.i.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i46, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i46, i32 1, i32 3, i32 1) #8
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i46, ptr %refcount.i46, i32 1, ptr elementtype(i32) %refcount.i46) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i48 = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i48)
  %cmp.i.i.i.i49 = icmp eq i32 %asmresult.i.i.i.i.i.i.i48, 1
  br i1 %cmp.i.i.i.i49, label %if.then.i53, label %if.end5.i.i.i.i51

if.end5.i.i.i.i51:                                ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i48)
  %.not.i.i.i.i50 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i48, 0
  br i1 %.not.i.i.i.i50, label %if.end5.i.i.i.i51.ax25_dev_put.exit54_crit_edge, label %if.then10.i.i.i.i52, !prof !23

if.end5.i.i.i.i51.ax25_dev_put.exit54_crit_edge:  ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %ax25_dev_put.exit54

if.then10.i.i.i.i52:                              ; preds = %if.end5.i.i.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i46, i32 noundef 3) #8
  br label %ax25_dev_put.exit54

if.then.i53:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call1) #8
  br label %ax25_dev_put.exit54

ax25_dev_put.exit54:                              ; preds = %if.then.i53, %if.then10.i.i.i.i52, %if.end5.i.i.i.i51.ax25_dev_put.exit54_crit_edge
  %refcount.i55 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i56 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i55, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i55, i32 1, i32 3, i32 1) #8
  %10 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i55, ptr %refcount.i55, i32 1, ptr elementtype(i32) %refcount.i55) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i57 = extractvalue { i32, i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i57)
  %cmp.i.i.i.i58 = icmp eq i32 %asmresult.i.i.i.i.i.i.i57, 1
  br i1 %cmp.i.i.i.i58, label %if.then.i62, label %if.end5.i.i.i.i60

if.end5.i.i.i.i60:                                ; preds = %ax25_dev_put.exit54
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i57)
  %.not.i.i.i.i59 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i57, 0
  br i1 %.not.i.i.i.i59, label %if.end5.i.i.i.i60.cleanup_crit_edge, label %if.then10.i.i.i.i61, !prof !23

if.end5.i.i.i.i60.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i61:                              ; preds = %if.end5.i.i.i.i60
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i55, i32 noundef 3) #8
  br label %cleanup

if.then.i62:                                      ; preds = %ax25_dev_put.exit54
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

sw.bb8:                                           ; preds = %if.end
  %forward9 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 3
  %11 = ptrtoint ptr %forward9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %forward9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %sw.bb8
  %refcount.i64 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i65 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i64, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i64, i32 1, i32 3, i32 1) #8
  %13 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i64, ptr %refcount.i64, i32 1, ptr elementtype(i32) %refcount.i64) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i66 = extractvalue { i32, i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i66)
  %cmp.i.i.i.i67 = icmp eq i32 %asmresult.i.i.i.i.i.i.i66, 1
  br i1 %cmp.i.i.i.i67, label %if.then.i71, label %if.end5.i.i.i.i69

if.end5.i.i.i.i69:                                ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i66)
  %.not.i.i.i.i68 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i66, 0
  br i1 %.not.i.i.i.i68, label %if.end5.i.i.i.i69.cleanup_crit_edge, label %if.then10.i.i.i.i70, !prof !23

if.end5.i.i.i.i69.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i70:                              ; preds = %if.end5.i.i.i.i69
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i64, i32 noundef 3) #8
  br label %cleanup

if.then.i71:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  %14 = ptrtoint ptr %forward9 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %forward9, align 4
  %refcount.i73 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i73, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i73, i32 1, i32 3, i32 1) #8
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i73, ptr %refcount.i73, i32 1, ptr elementtype(i32) %refcount.i73) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i75 = extractvalue { i32, i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i75)
  %cmp.i.i.i.i76 = icmp eq i32 %asmresult.i.i.i.i.i.i.i75, 1
  br i1 %cmp.i.i.i.i76, label %if.then.i80, label %if.end5.i.i.i.i78

if.end5.i.i.i.i78:                                ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i75)
  %.not.i.i.i.i77 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i75, 0
  br i1 %.not.i.i.i.i77, label %if.end5.i.i.i.i78.cleanup_crit_edge, label %if.then10.i.i.i.i79, !prof !23

if.end5.i.i.i.i78.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i79:                              ; preds = %if.end5.i.i.i.i78
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i73, i32 noundef 3) #8
  br label %cleanup

if.then.i80:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

sw.default:                                       ; preds = %if.end
  %refcount.i82 = getelementptr inbounds %struct.ax25_dev, ptr %call, i32 0, i32 7
  %call.i.i.i.i.i.i83 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcount.i82, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %refcount.i82, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcount.i82, ptr %refcount.i82, i32 1, ptr elementtype(i32) %refcount.i82) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i84 = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i84)
  %cmp.i.i.i.i85 = icmp eq i32 %asmresult.i.i.i.i.i.i.i84, 1
  br i1 %cmp.i.i.i.i85, label %if.then.i89, label %if.end5.i.i.i.i87

if.end5.i.i.i.i87:                                ; preds = %sw.default
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i84)
  %.not.i.i.i.i86 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i84, 0
  br i1 %.not.i.i.i.i86, label %if.end5.i.i.i.i87.cleanup_crit_edge, label %if.then10.i.i.i.i88, !prof !23

if.end5.i.i.i.i87.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i.i88:                              ; preds = %if.end5.i.i.i.i87
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %refcount.i82, i32 noundef 3) #8
  br label %cleanup

if.then.i89:                                      ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i89, %if.then10.i.i.i.i88, %if.end5.i.i.i.i87.cleanup_crit_edge, %if.then.i80, %if.then10.i.i.i.i79, %if.end5.i.i.i.i78.cleanup_crit_edge, %if.then.i71, %if.then10.i.i.i.i70, %if.end5.i.i.i.i69.cleanup_crit_edge, %if.then.i62, %if.then10.i.i.i.i61, %if.end5.i.i.i.i60.cleanup_crit_edge, %if.then.i44, %if.then10.i.i.i.i43, %if.end5.i.i.i.i42.cleanup_crit_edge, %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end5.i.i.i.i.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i ], [ -22, %if.then.i ], [ -22, %if.end5.i.i.i.i42.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i43 ], [ -22, %if.then.i44 ], [ 0, %if.end5.i.i.i.i60.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i61 ], [ 0, %if.then.i62 ], [ -22, %if.end5.i.i.i.i69.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i70 ], [ -22, %if.then.i71 ], [ 0, %if.end5.i.i.i.i78.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i79 ], [ 0, %if.then.i80 ], [ -22, %if.end5.i.i.i.i87.cleanup_crit_edge ], [ -22, %if.then10.i.i.i.i88 ], [ -22, %if.then.i89 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @ax25_fwd_dev(ptr noundef readonly %dev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_ptr.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 81
  %0 = ptrtoint ptr %ax25_ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_ptr.i, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %forward = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %forward to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %forward, align 4
  %cmp1 = icmp eq ptr %3, null
  %dev. = select i1 %cmp1, ptr %dev, ptr %3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %dev, %entry.cleanup_crit_edge ], [ %dev., %if.end ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dev_free() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_lock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  %0 = load ptr, ptr @ax25_dev_list, align 4
  %cmp.not5 = icmp eq ptr %0, null
  br i1 %cmp.not5, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %dev_put_track.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %ax25_dev.06 = phi ptr [ %18, %dev_put_track.exit.while.body_crit_edge ], [ %0, %entry.while.body_crit_edge ]
  %dev = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.06, i32 0, i32 1
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %while.body.dev_put_track.exit_crit_edge, label %do.body1.i.i

while.body.dev_put_track.exit_crit_edge:          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %while.body
  %dev_tracker = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev.06, i32 0, i32 2
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #8
  %3 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !24
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %2, i32 0, i32 118
  %4 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %7 = tail call i32 @llvm.read_register.i32(metadata !11) #8
  %and.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %6
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add13.i.i = add i32 %15, -1
  store i32 %add13.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !25
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !22

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %3) #8, !srcloc !26
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %while.body.dev_put_track.exit_crit_edge
  %17 = ptrtoint ptr %ax25_dev.06 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ax25_dev.06, align 4
  tail call void @kfree(ptr noundef nonnull %ax25_dev.06) #8
  %cmp.not = icmp eq ptr %18, null
  br i1 %cmp.not, label %dev_put_track.exit.while.end_crit_edge, label %dev_put_track.exit.while.body_crit_edge

dev_put_track.exit.while.body_crit_edge:          ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

dev_put_track.exit.while.end_crit_edge:           ; preds = %dev_put_track.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %dev_put_track.exit.while.end_crit_edge, %entry.while.end_crit_edge
  store ptr null, ptr @ax25_dev_list, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef nonnull @ax25_dev_lock) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9}
!llvm.named.register.sp = !{!11}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ax25/ax25_dev.c", i32 30, i32 1}
!2 = !{ptr @ax25_dev_lock, !1, !"ax25_dev_lock", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../net/ax25/ax25_dev.c", i32 56, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @ax25_dev_device_up._entry, !4, !"_entry", i1 false, i1 false}
!8 = !{ptr @ax25_dev_device_up._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @ax25_dev_list, !10, !"ax25_dev_list", i1 false, i1 false}
!10 = !{!"../net/ax25/ax25_dev.c", i32 29, i32 11}
!11 = !{!"sp"}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{i64 2148251645, i64 2148251677, i64 2148251706, i64 2148251740, i64 2148251771, i64 2148251794}
!22 = !{!"branch_weights", i32 1, i32 2000}
!23 = !{!"branch_weights", i32 2000, i32 1}
!24 = !{i64 642596, i64 642657}
!25 = !{i64 645328}
!26 = !{i64 645613}
!27 = !{i64 2148339646}
!28 = !{i64 2148254110, i64 2148254142, i64 2148254171, i64 2148254205, i64 2148254236, i64 2148254259}
!29 = !{i64 2149275926}
