; ModuleID = '/llk/IR_all_yes/sound/virtio/virtio_ctl_msg.c_pt.bc'
source_filename = "../sound/virtio/virtio_ctl_msg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.virtio_snd_msg = type { %struct.scatterlist, %struct.scatterlist, %struct.list_head, %struct.completion, %struct.refcount_struct }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.virtio_snd = type { ptr, [4 x %struct.virtio_snd_queue], ptr, %struct.list_head, ptr, %struct.list_head, ptr, i32, ptr, i32, ptr, i32 }
%struct.virtio_snd_queue = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.virtio_device_id = type { i32, i32 }
%struct.virtio_snd_query_info = type { %struct.virtio_snd_hdr, i32, i32, i32 }
%struct.virtio_snd_hdr = type { i32 }
%struct.virtqueue = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr }

@virtsnd_msg_timeout_ms = external dso_local local_unnamed_addr global i32, align 4
@virtsnd_ctl_msg_send._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 162, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to send control message (0x%08x)\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"virtsnd_ctl_msg_send\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/virtio/virtio_ctl_msg.c\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtsnd_ctl_msg_send._entry_ptr = internal global ptr @virtsnd_ctl_msg_send._entry, section ".printk_index", align 4
@virtsnd_ctl_msg_send._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"control message (0x%08x) timeout\0A\00", [62 x i8] zeroinitializer }, align 32
@virtsnd_ctl_msg_send._entry_ptr.7 = internal global ptr @virtsnd_ctl_msg_send._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@switch.table.virtsnd_ctl_msg_send = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 -22, i32 -95, i32 -5], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 161, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.31 = private constant [33 x i8] c"../sound/virtio/virtio_ctl_msg.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 182, i32 4 }
@___asan_gen_.33 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 87, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [34 x i8] c"switch.table.virtsnd_ctl_msg_send\00", align 1
@llvm.compiler.used = appending global [13 x ptr] [ptr @virtsnd_ctl_msg_send._entry, ptr @virtsnd_ctl_msg_send._entry.5, ptr @virtsnd_ctl_msg_send._entry_ptr, ptr @virtsnd_ctl_msg_send._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @init_completion.__key, ptr @.str.8, ptr @switch.table.virtsnd_ctl_msg_send], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_ctl_msg_send._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtsnd_ctl_msg_send._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.virtsnd_ctl_msg_send to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_ctl_msg_ref(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !24
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %entry.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !25

entry.if.end15.sink.split.i.i.i_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %entry
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !26

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef %.sink.i.i.i) #8
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_ctl_msg_unref(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ref_count = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 4
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %ref_count, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count, ptr %ref_count, i32 1, ptr elementtype(i32) %ref_count) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !26

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref_count, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef %msg) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_ctl_msg_request(ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg, align 4
  %and.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !26

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

sg_virt.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %2) #8
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %msg, i32 0, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_ctl_msg_response(ptr nocapture noundef readonly %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sg_response = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 1
  %0 = ptrtoint ptr %sg_response to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sg_response, align 4
  %and.i.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !26

do.body2.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

sg_virt.exit:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = and i32 %1, -4
  %2 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %2) #8
  %offset.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %4
  ret ptr %add.ptr.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @virtsnd_ctl_msg_alloc(i32 noundef %request_size, i32 noundef %response_size, i32 noundef %gfp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %request_size)
  %tobool.not = icmp eq i32 %request_size, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %response_size)
  %tobool1.not = icmp eq i32 %response_size, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end8.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8.i.i:                                      ; preds = %entry
  %or.i = or i32 %gfp, 256
  %add = add i32 %request_size, 108
  %add2 = add i32 %add, %response_size
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add2, i32 noundef %or.i) #11
  %tobool3.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool3.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end5

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 108
  tail call void @sg_init_one(ptr noundef nonnull %call9.i.i, ptr noundef %add.ptr, i32 noundef %request_size) #8
  %sg_response = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 1
  %add.ptr7 = getelementptr i8, ptr %add.ptr, i32 %request_size
  tail call void @sg_init_one(ptr noundef %sg_response, ptr noundef %add.ptr7, i32 noundef %response_size) #8
  %list = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 2
  %0 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %list, ptr %list, align 8
  %prev.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 2, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %prev.i, align 4
  %notify = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %notify, align 16
  %wait.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #8
  %ref_count = getelementptr inbounds %struct.virtio_snd_msg, ptr %call9.i.i, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count, i32 noundef 4) #8
  %3 = ptrtoint ptr %ref_count to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %ref_count, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_ctl_msg_send(ptr noundef %snd, ptr noundef %msg, ptr noundef %out_sgs, ptr noundef %in_sgs, i1 noundef zeroext %nowait) local_unnamed_addr #0 align 64 {
entry:
  %psgs = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %snd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %snd, align 4
  %queues.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @virtsnd_msg_timeout_ms to i32))
  %2 = load i32, ptr @virtsnd_msg_timeout_ms, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %2) #8
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %msg, align 4
  %and.i.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %virtsnd_ctl_msg_request.exit, label %do.body2.i.i.i, !prof !26

do.body2.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

virtsnd_ctl_msg_request.exit:                     ; preds = %entry
  %and.i.i.i = and i32 %4, -4
  %5 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %5) #8
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %msg, i32 0, i32 1
  %6 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %7
  %sg_response.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 1
  %8 = ptrtoint ptr %sg_response.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sg_response.i, align 4
  %and.i.i.i.i90 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i90)
  %tobool.i.not.i.i.i91 = icmp eq i32 %and.i.i.i.i90, 0
  br i1 %tobool.i.not.i.i.i91, label %virtsnd_ctl_msg_response.exit, label %do.body2.i.i.i92, !prof !26

do.body2.i.i.i92:                                 ; preds = %virtsnd_ctl_msg_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

virtsnd_ctl_msg_response.exit:                    ; preds = %virtsnd_ctl_msg_request.exit
  %and.i.i.i93 = and i32 %9, -4
  %10 = inttoptr i32 %and.i.i.i93 to ptr
  %call1.i.i94 = tail call ptr @page_address(ptr noundef %10) #8
  %offset.i.i95 = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %offset.i.i95 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %offset.i.i95, align 4
  %add.ptr.i.i96 = getelementptr i8, ptr %call1.i.i94, i32 %12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %psgs) #8
  %13 = getelementptr inbounds [4 x ptr], ptr %psgs, i32 0, i32 1
  %ref_count.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 4
  %14 = getelementptr inbounds i8, ptr %psgs, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 12)
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #8
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #8, !srcloc !24
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %virtsnd_ctl_msg_response.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !25

virtsnd_ctl_msg_response.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %virtsnd_ctl_msg_response.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %virtsnd_ctl_msg_response.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %17 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %.not.i.i.i.i = icmp sgt i32 %17, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.virtsnd_ctl_msg_ref.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !26

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.virtsnd_ctl_msg_ref.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_ctl_msg_ref.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %virtsnd_ctl_msg_response.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %virtsnd_ctl_msg_response.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #8
  br label %virtsnd_ctl_msg_ref.exit

virtsnd_ctl_msg_ref.exit:                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.virtsnd_ctl_msg_ref.exit_crit_edge
  %18 = ptrtoint ptr %add.ptr.i.i96 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 58720256, ptr %add.ptr.i.i96, align 4
  %19 = ptrtoint ptr %psgs to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %msg, ptr %psgs, align 4
  %tobool.not = icmp eq ptr %out_sgs, null
  br i1 %tobool.not, label %virtsnd_ctl_msg_ref.exit.if.end_crit_edge, label %if.then

virtsnd_ctl_msg_ref.exit.if.end_crit_edge:        ; preds = %virtsnd_ctl_msg_ref.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %virtsnd_ctl_msg_ref.exit
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %out_sgs, ptr %13, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %virtsnd_ctl_msg_ref.exit.if.end_crit_edge
  %nouts.0 = phi i32 [ 2, %if.then ], [ 1, %virtsnd_ctl_msg_ref.exit.if.end_crit_edge ]
  %arrayidx8 = getelementptr [4 x ptr], ptr %psgs, i32 0, i32 %nouts.0
  %21 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %sg_response.i, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %in_sgs, null
  br i1 %tobool9.not, label %if.end.do.body15_crit_edge, label %if.then10

if.end.do.body15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %add12 = add nuw nsw i32 %nouts.0, 1
  %arrayidx13 = getelementptr [4 x ptr], ptr %psgs, i32 0, i32 %add12
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %in_sgs, ptr %arrayidx13, align 4
  br label %do.body15

do.body15:                                        ; preds = %if.then10, %if.end.do.body15_crit_edge
  %nins.0 = phi i32 [ 2, %if.then10 ], [ 1, %if.end.do.body15_crit_edge ]
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queues.i) #8
  %vqueue = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 1, i32 0, i32 1
  %23 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vqueue, align 4
  %call20 = call i32 @virtqueue_add_sgs(ptr noundef %24, ptr noundef nonnull %psgs, i32 noundef %nouts.0, i32 noundef %nins.0, ptr noundef %msg, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.then22, label %do.end32

if.then22:                                        ; preds = %do.body15
  %25 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %vqueue, align 4
  %call24 = call zeroext i1 @virtqueue_kick_prepare(ptr noundef %26) #8
  %list = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 2
  %ctl_msgs = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 3, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %28, ptr noundef %ctl_msgs) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end.i.i:                                       ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list, ptr %prev.i, align 4
  %30 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %ctl_msgs, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list, ptr %28, align 4
  br label %if.end34

do.end32:                                         ; preds = %do.body15
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queues.i, i32 noundef %call17) #8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i, align 4
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str, i32 noundef %35) #12
  %call.i.i.i.i.i.i98 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #8
  %36 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i100, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %do.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i99 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i99, label %if.end5.i.i.i.i.on_exit_crit_edge, label %if.then10.i.i.i.i, !prof !26

if.end5.i.i.i.i.on_exit_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #8
  br label %on_exit

if.then.i100:                                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  call void @kfree(ptr noundef %msg) #8
  br label %on_exit

if.end34:                                         ; preds = %if.end.i.i, %if.then22.if.end34_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queues.i, i32 noundef %call17) #8
  br i1 %call24, label %if.then36, label %if.end34.if.end39_crit_edge

if.end34.if.end39_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end39

if.then36:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %vqueue to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vqueue, align 4
  %call38 = call zeroext i1 @virtqueue_notify(ptr noundef %38) #8
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end34.if.end39_crit_edge
  br i1 %nowait, label %if.end39.on_exit_crit_edge, label %if.end42

if.end39.on_exit_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

if.end42:                                         ; preds = %if.end39
  %notify43 = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 3
  %call44 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %notify43, i32 noundef %call2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 1
  br i1 %cmp45, label %if.then47, label %if.end56

if.then47:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool48.not = icmp eq i32 %call44, 0
  br i1 %tobool48.not, label %do.end52, label %if.then47.on_exit_crit_edge

if.then47.on_exit_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

do.end52:                                         ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #10
  %dev53 = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %add.ptr.i.i, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev53, ptr noundef nonnull @.str.6, i32 noundef %41) #12
  br label %on_exit

if.end56:                                         ; preds = %if.end42
  %42 = ptrtoint ptr %add.ptr.i.i96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i96, align 4
  %44 = call i32 @llvm.bswap.i32(i32 %43)
  %switch.tableidx = add i32 %44, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %45 = icmp ult i32 %switch.tableidx, 4
  br i1 %45, label %switch.lookup, label %if.end56.on_exit_crit_edge

if.end56.on_exit_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %on_exit

switch.lookup:                                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.virtsnd_ctl_msg_send, i32 0, i32 %switch.tableidx
  %46 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %46)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %on_exit

on_exit:                                          ; preds = %switch.lookup, %if.end56.on_exit_crit_edge, %do.end52, %if.then47.on_exit_crit_edge, %if.end39.on_exit_crit_edge, %if.then.i100, %if.then10.i.i.i.i, %if.end5.i.i.i.i.on_exit_crit_edge
  %rc.0 = phi i32 [ 0, %if.end39.on_exit_crit_edge ], [ %call44, %if.then47.on_exit_crit_edge ], [ -110, %do.end52 ], [ %call20, %if.end5.i.i.i.i.on_exit_crit_edge ], [ %call20, %if.then10.i.i.i.i ], [ %call20, %if.then.i100 ], [ %switch.load, %switch.lookup ], [ -22, %if.end56.on_exit_crit_edge ]
  %call.i.i.i.i.i.i103 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #8
  %47 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i104 = extractvalue { i32, i32, i32 } %47, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i104)
  %cmp.i.i.i.i105 = icmp eq i32 %asmresult.i.i.i.i.i.i.i104, 1
  br i1 %cmp.i.i.i.i105, label %if.then.i109, label %if.end5.i.i.i.i107

if.end5.i.i.i.i107:                               ; preds = %on_exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i104)
  %.not.i.i.i.i106 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i104, 0
  br i1 %.not.i.i.i.i106, label %if.end5.i.i.i.i107.virtsnd_ctl_msg_unref.exit111_crit_edge, label %if.then10.i.i.i.i108, !prof !26

if.end5.i.i.i.i107.virtsnd_ctl_msg_unref.exit111_crit_edge: ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_ctl_msg_unref.exit111

if.then10.i.i.i.i108:                             ; preds = %if.end5.i.i.i.i107
  call void @__sanitizer_cov_trace_pc() #10
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #8
  br label %virtsnd_ctl_msg_unref.exit111

if.then.i109:                                     ; preds = %on_exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  call void @kfree(ptr noundef %msg) #8
  br label %virtsnd_ctl_msg_unref.exit111

virtsnd_ctl_msg_unref.exit111:                    ; preds = %if.then.i109, %if.then10.i.i.i.i108, %if.end5.i.i.i.i107.virtsnd_ctl_msg_unref.exit111_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %psgs) #8
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_notify(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_ctl_msg_complete(ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %list = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %notify = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 3
  tail call void @complete(ptr noundef %notify) #8
  %ref_count.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %msg, i32 0, i32 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !27
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #8, !srcloc !28
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.virtsnd_ctl_msg_unref.exit_crit_edge, label %if.then10.i.i.i.i, !prof !26

if.end5.i.i.i.i.virtsnd_ctl_msg_unref.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %virtsnd_ctl_msg_unref.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #8
  br label %virtsnd_ctl_msg_unref.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !29
  tail call void @kfree(ptr noundef %msg) #8
  br label %virtsnd_ctl_msg_unref.exit

virtsnd_ctl_msg_unref.exit:                       ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.virtsnd_ctl_msg_unref.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_ctl_msg_cancel_all(ptr noundef %snd) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queues.i = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queues.i) #8
  %ctl_msgs = getelementptr inbounds %struct.virtio_snd, ptr %snd, i32 0, i32 3
  %0 = ptrtoint ptr %ctl_msgs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ctl_msgs, align 4
  %cmp.i.not13 = icmp eq ptr %1, %ctl_msgs
  br i1 %cmp.i.not13, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %4, %while.body.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -40
  tail call void @virtsnd_ctl_msg_complete(ptr noundef %add.ptr)
  %3 = ptrtoint ptr %ctl_msgs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %ctl_msgs, align 4
  %cmp.i.not = icmp eq ptr %4, %ctl_msgs
  br i1 %cmp.i.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queues.i, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtsnd_ctl_query_info(ptr noundef %snd, i32 noundef %command, i32 noundef %start_id, i32 noundef %count, i32 noundef %size, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #8
  %0 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 128) #13
  %tobool3.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool3.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %call7.i.i.i, i32 108
  tail call void @sg_init_one(ptr noundef nonnull %call7.i.i.i, ptr noundef %add.ptr.i, i32 noundef 16) #8
  %sg_response.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 1
  %add.ptr7.i = getelementptr i8, ptr %call7.i.i.i, i32 124
  tail call void @sg_init_one(ptr noundef %sg_response.i, ptr noundef %add.ptr7.i, i32 noundef 4) #8
  %list.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list.i, ptr %list.i, align 8
  %prev.i.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list.i, ptr %prev.i.i, align 4
  %notify.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %notify.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %notify.i, align 8
  %wait.i.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @init_completion.__key) #8
  %ref_count.i = getelementptr inbounds %struct.virtio_snd_msg, ptr %call7.i.i.i, i32 0, i32 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #8
  %5 = ptrtoint ptr %ref_count.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile i32 1, ptr %ref_count.i, align 8
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call7.i.i.i, align 8
  %and.i.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.i.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.i.not.i.i.i, label %virtsnd_ctl_msg_request.exit, label %do.body2.i.i.i, !prof !26

do.body2.i.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #8, !srcloc !30
  unreachable

virtsnd_ctl_msg_request.exit:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i.i = and i32 %7, -4
  %8 = inttoptr i32 %and.i.i.i to ptr
  %call1.i.i = tail call ptr @page_address(ptr noundef %8) #8
  %offset.i.i = getelementptr inbounds %struct.scatterlist, ptr %call7.i.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %call1.i.i, i32 %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %command)
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %add.ptr.i.i, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %start_id)
  %start_id2 = getelementptr inbounds %struct.virtio_snd_query_info, ptr %add.ptr.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %start_id2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %start_id2, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %count)
  %count3 = getelementptr inbounds %struct.virtio_snd_query_info, ptr %add.ptr.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %count3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %count3, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %size)
  %size4 = getelementptr inbounds %struct.virtio_snd_query_info, ptr %add.ptr.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %size4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %size4, align 4
  %mul = mul i32 %size, %count
  call void @sg_init_one(ptr noundef nonnull %sg, ptr noundef %info, i32 noundef %mul) #8
  %call5 = call i32 @virtsnd_ctl_msg_send(ptr noundef %snd, ptr noundef nonnull %call7.i.i.i, ptr noundef null, ptr noundef nonnull %sg, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %virtsnd_ctl_msg_request.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %virtsnd_ctl_msg_request.exit ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtsnd_ctl_notify_cb(ptr noundef %vqueue) local_unnamed_addr #0 align 64 {
entry:
  %length = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %vdev = getelementptr inbounds %struct.virtqueue, ptr %vqueue, i32 0, i32 3
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 4
  %priv = getelementptr inbounds %struct.virtio_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 8
  %queues.i = getelementptr inbounds %struct.virtio_snd, ptr %3, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %length) #8
  %4 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %length, align 4, !annotation !31
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queues.i) #8
  br label %do.body6

do.body6:                                         ; preds = %do.cond11.do.body6_crit_edge, %entry
  call void @virtqueue_disable_cb(ptr noundef %vqueue) #8
  %call722 = call ptr @virtqueue_get_buf(ptr noundef %vqueue, ptr noundef nonnull %length) #8
  %tobool.not23 = icmp eq ptr %call722, null
  br i1 %tobool.not23, label %do.body6.while.end_crit_edge, label %do.body6.while.body_crit_edge

do.body6.while.body_crit_edge:                    ; preds = %do.body6
  br label %while.body

do.body6.while.end_crit_edge:                     ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %do.body6.while.body_crit_edge
  %call724 = phi ptr [ %call7, %while.body.while.body_crit_edge ], [ %call722, %do.body6.while.body_crit_edge ]
  call void @virtsnd_ctl_msg_complete(ptr noundef nonnull %call724)
  %call7 = call ptr @virtqueue_get_buf(ptr noundef %vqueue, ptr noundef nonnull %length) #8
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %do.body6.while.end_crit_edge
  %call8 = call zeroext i1 @virtqueue_is_broken(ptr noundef %vqueue) #8
  br i1 %call8, label %while.end.do.end15_crit_edge, label %do.cond11, !prof !25

while.end.do.end15_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.cond11:                                        ; preds = %while.end
  %call12 = call zeroext i1 @virtqueue_enable_cb(ptr noundef %vqueue) #8
  br i1 %call12, label %do.cond11.do.end15_crit_edge, label %do.cond11.do.body6_crit_edge

do.cond11.do.body6_crit_edge:                     ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body6

do.cond11.do.end15_crit_edge:                     ; preds = %do.cond11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end15

do.end15:                                         ; preds = %do.cond11.do.end15_crit_edge, %while.end.do.end15_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %queues.i, i32 noundef %call3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %length) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtqueue_disable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_enable_cb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/virtio/virtio_ctl_msg.c", i32 161, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @virtsnd_ctl_msg_send._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @virtsnd_ctl_msg_send._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/virtio/virtio_ctl_msg.c", i32 182, i32 4}
!10 = !{ptr @virtsnd_ctl_msg_send._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @virtsnd_ctl_msg_send._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @init_completion.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../include/linux/completion.h", i32 87, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{i64 2148252790, i64 2148252822, i64 2148252851, i64 2148252885, i64 2148252916, i64 2148252939}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{i64 2148340791}
!28 = !{i64 2148255255, i64 2148255287, i64 2148255316, i64 2148255350, i64 2148255381, i64 2148255404}
!29 = !{i64 2150022092}
!30 = !{i64 2153398758, i64 2153399250, i64 2153398795, i64 2153398851, i64 2153398885, i64 2153398909, i64 2153398950, i64 2153398971, i64 2153398999, i64 2153399033}
!31 = !{!"auto-init"}
