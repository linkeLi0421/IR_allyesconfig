; ModuleID = '/llk/IR_all_yes/net/ax25/ax25_ds_subr.c_pt.bc'
source_filename = "../net/ax25/ax25_ds_subr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.12 }
%union.anon.12 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.ax25_cb = type { %struct.hlist_node, %struct.ax25_address, %struct.ax25_address, ptr, ptr, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.timer_list, i32, i32, i32, i32, i32, i16, i16, i16, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, %struct.sk_buff_head, i8, %struct.timer_list, %struct.timer_list, ptr, %struct.refcount_struct }
%struct.hlist_node = type { ptr, ptr }
%struct.ax25_address = type { [7 x i8] }
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ax25_dev = type { ptr, ptr, ptr, ptr, ptr, [14 x i32], %struct.ax25_dama_info, %struct.refcount_struct }
%struct.ax25_dama_info = type { i8, %struct.timer_list, i16 }
%struct.sk_buff = type { %union.anon, %union.anon.2, %union.anon.110, [48 x i8], %union.anon.111, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.113, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon.0 }
%struct.anon.0 = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.2 = type { ptr }
%union.anon.110 = type { i64 }
%union.anon.111 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, ptr }
%union.anon.113 = type { %struct.anon.114 }
%struct.anon.114 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.115, i32, i32, i32, i16, i16, %union.anon.117, i32, %union.anon.118, %union.anon.119, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.115 = type { i32 }
%union.anon.117 = type { i32 }
%union.anon.118 = type { i32 }
%union.anon.119 = type { i16 }

@ax25_list_lock = external dso_local global %struct.spinlock, align 4
@ax25_list = external dso_local local_unnamed_addr global %struct.hlist_head, align 4
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_nr_error_recovery(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition.i, align 2
  %2 = and i8 %1, 16
  store i8 %2, ptr %condition.i, align 2
  %n2count.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %3 = ptrtoint ptr %n2count.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %n2count.i, align 1
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #2
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #2
  tail call void @ax25_start_t3timer(ptr noundef %ax25) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_establish_data_link(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, 16
  store i8 %2, ptr %condition, align 2
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %3 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %n2count, align 1
  tail call void @ax25_calculate_t1(ptr noundef %ax25) #2
  tail call void @ax25_start_t1timer(ptr noundef %ax25) #2
  tail call void @ax25_stop_t2timer(ptr noundef %ax25) #2
  tail call void @ax25_start_t3timer(ptr noundef %ax25) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_ds_enquiry_response(ptr noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @ax25_std_enquiry_response(ptr noundef %ax25) #2
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ax25_requeue_frames(ptr noundef %ax25) #2
  tail call void @ax25_kick(ptr noundef %ax25) #2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 6
  %3 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %state, align 1
  %.off = add i8 %4, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off)
  %switch = icmp ult i8 %.off, 2
  br i1 %switch, label %if.end.if.then10_crit_edge, label %lor.lhs.false7

if.end.if.then10_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then10

lor.lhs.false7:                                   ; preds = %if.end
  %ack_queue = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 30
  %5 = ptrtoint ptr %ack_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ack_queue, align 4
  %cmp.i = icmp eq ptr %6, %ack_queue
  %cmp8.not116 = icmp eq ptr %6, null
  %cmp8.not = or i1 %cmp.i, %cmp8.not116
  br i1 %cmp8.not, label %if.else, label %lor.lhs.false7.if.then10_crit_edge

lor.lhs.false7.if.then10_crit_edge:               ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then10

if.then10:                                        ; preds = %lor.lhs.false7.if.then10_crit_edge, %if.end.if.then10_crit_edge
  tail call void @ax25_ds_t1_timeout(ptr noundef %ax25) #2
  br label %if.end11

if.else:                                          ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #4
  %n2count = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 15
  %7 = ptrtoint ptr %n2count to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %n2count, align 1
  br label %if.end11

if.end11:                                         ; preds = %if.else, %if.then10
  tail call void @ax25_start_t3timer(ptr noundef %ax25) #2
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %8 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ax25_dev, align 4
  tail call void @ax25_ds_set_timer(ptr noundef %9) #2
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_list to i32))
  %ax25o.0118 = load ptr, ptr @ax25_list, align 4
  %tobool14.not119 = icmp eq ptr %ax25o.0118, null
  br i1 %tobool14.not119, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end11.for.body_crit_edge
  %ax25o.0120 = phi ptr [ %ax25o.0, %for.inc.for.body_crit_edge ], [ %ax25o.0118, %if.end11.for.body_crit_edge ]
  %cmp15 = icmp eq ptr %ax25o.0120, %ax25
  br i1 %cmp15, label %for.body.for.inc_crit_edge, label %if.end18

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %ax25_dev19 = getelementptr inbounds %struct.ax25_cb, ptr %ax25o.0120, i32 0, i32 4
  %10 = ptrtoint ptr %ax25_dev19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ax25_dev19, align 4
  %12 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ax25_dev, align 4
  %cmp21.not = icmp eq ptr %11, %13
  br i1 %cmp21.not, label %if.end24, label %if.end18.for.inc_crit_edge

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.end24:                                         ; preds = %if.end18
  %state25 = getelementptr inbounds %struct.ax25_cb, ptr %ax25o.0120, i32 0, i32 6
  %14 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %state25, align 1
  %.off110 = add i8 %15, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off110)
  %switch111 = icmp ult i8 %.off110, 2
  br i1 %switch111, label %if.then34, label %if.end35

if.then34:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ax25_ds_t1_timeout(ptr noundef nonnull %ax25o.0120) #2
  br label %for.inc

if.end35:                                         ; preds = %if.end24
  %condition36 = getelementptr inbounds %struct.ax25_cb, ptr %ax25o.0120, i32 0, i32 12
  %16 = ptrtoint ptr %condition36 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %condition36, align 2
  %18 = and i8 %17, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %15)
  %cmp42 = icmp eq i8 %15, 3
  %or.cond = select i1 %tobool39.not, i1 %cmp42, i1 false
  br i1 %or.cond, label %if.then44, label %if.end35.if.end45_crit_edge

if.end35.if.end45_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end45

if.then44:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ax25_requeue_frames(ptr noundef nonnull %ax25o.0120) #2
  tail call void @ax25_kick(ptr noundef nonnull %ax25o.0120) #2
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %if.end35.if.end45_crit_edge
  %19 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %state25, align 1
  %.off112 = add i8 %20, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %.off112)
  %switch113 = icmp ult i8 %.off112, 2
  br i1 %switch113, label %if.end45.if.then60_crit_edge, label %lor.lhs.false55

if.end45.if.then60_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then60

lor.lhs.false55:                                  ; preds = %if.end45
  %ack_queue56 = getelementptr inbounds %struct.ax25_cb, ptr %ax25o.0120, i32 0, i32 30
  %21 = ptrtoint ptr %ack_queue56 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ack_queue56, align 4
  %cmp.i114 = icmp eq ptr %22, %ack_queue56
  %cmp58.not117 = icmp eq ptr %22, null
  %cmp58.not = or i1 %cmp.i114, %cmp58.not117
  br i1 %cmp58.not, label %lor.lhs.false55.if.end61_crit_edge, label %lor.lhs.false55.if.then60_crit_edge

lor.lhs.false55.if.then60_crit_edge:              ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then60

lor.lhs.false55.if.end61_crit_edge:               ; preds = %lor.lhs.false55
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end61

if.then60:                                        ; preds = %lor.lhs.false55.if.then60_crit_edge, %if.end45.if.then60_crit_edge
  tail call void @ax25_ds_t1_timeout(ptr noundef nonnull %ax25o.0120) #2
  br label %if.end61

if.end61:                                         ; preds = %if.then60, %lor.lhs.false55.if.end61_crit_edge
  %23 = ptrtoint ptr %state25 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %state25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp64.not = icmp eq i8 %24, 0
  br i1 %cmp64.not, label %if.end61.for.inc_crit_edge, label %if.then66

if.end61.for.inc_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc

if.then66:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @ax25_start_t3timer(ptr noundef nonnull %ax25o.0120) #2
  br label %for.inc

for.inc:                                          ; preds = %if.then66, %if.end61.for.inc_crit_edge, %if.then34, %if.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %25 = ptrtoint ptr %ax25o.0120 to i32
  call void @__asan_load4_noabort(i32 %25)
  %ax25o.0 = load ptr, ptr %ax25o.0120, align 4
  %tobool14.not = icmp eq ptr %ax25o.0, null
  br i1 %tobool14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end11.for.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_std_enquiry_response(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_requeue_frames(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_t1_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t3timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_set_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_calculate_t1(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_start_t1timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_stop_t2timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dev_dama_off(ptr noundef %ax25_dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %ax25_dev, null
  br i1 %cmp, label %entry.if.end5_crit_edge, label %if.end

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

if.end:                                           ; preds = %entry
  %dama = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 6
  %0 = ptrtoint ptr %dama to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dama, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @ax25_list_lock) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ax25_list to i32))
  %ax25.027.i = load ptr, ptr @ax25_list, align 4
  %tobool2.not28.i = icmp eq ptr %ax25.027.i, null
  br i1 %tobool2.not28.i, label %land.lhs.true.if.then2_crit_edge, label %land.lhs.true.for.body.i_crit_edge

land.lhs.true.for.body.i_crit_edge:               ; preds = %land.lhs.true
  br label %for.body.i

land.lhs.true.if.then2_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then2

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %land.lhs.true.for.body.i_crit_edge
  %ax25.029.i = phi ptr [ %ax25.0.i, %for.inc.i.for.body.i_crit_edge ], [ %ax25.027.i, %land.lhs.true.for.body.i_crit_edge ]
  %ax25_dev3.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.029.i, i32 0, i32 4
  %2 = ptrtoint ptr %ax25_dev3.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ax25_dev3.i, align 4
  %cmp.i = icmp eq ptr %3, %ax25_dev
  br i1 %cmp.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %condition.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.029.i, i32 0, i32 12
  %4 = ptrtoint ptr %condition.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %condition.i, align 2
  %6 = and i8 %5, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not.i = icmp eq i8 %6, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.for.inc.i_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %state.i = getelementptr inbounds %struct.ax25_cb, ptr %ax25.029.i, i32 0, i32 6
  %7 = ptrtoint ptr %state.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %state.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %8)
  %cmp7.i = icmp ugt i8 %8, 1
  br i1 %cmp7.i, label %ax25_check_dama_slave.exit, label %land.lhs.true5.i.for.inc.i_crit_edge

land.lhs.true5.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true5.i.for.inc.i_crit_edge, %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %9 = ptrtoint ptr %ax25.029.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %ax25.0.i = load ptr, ptr %ax25.029.i, align 4
  %tobool2.not.i = icmp eq ptr %ax25.0.i, null
  br i1 %tobool2.not.i, label %for.inc.i.if.then2_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

for.inc.i.if.then2_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then2

ax25_check_dama_slave.exit:                       ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #2
  br label %if.end5

if.then2:                                         ; preds = %for.inc.i.if.then2_crit_edge, %land.lhs.true.if.then2_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @ax25_list_lock) #2
  %dev.i = getelementptr inbounds %struct.ax25_dev, ptr %ax25_dev, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %cmp.i11 = icmp eq ptr %11, null
  br i1 %cmp.i11, label %if.then2.ax25_kiss_cmd.exit_crit_edge, label %if.end.i

if.then2.ax25_kiss_cmd.exit_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #4
  br label %ax25_kiss_cmd.exit

if.end.i:                                         ; preds = %if.then2
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 2, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #2
  %cmp1.i = icmp eq ptr %call.i.i, null
  br i1 %cmp1.i, label %if.end.i.ax25_kiss_cmd.exit_crit_edge, label %if.end3.i

if.end.i.ax25_kiss_cmd.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %ax25_kiss_cmd.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %12 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv.i.i, ptr %network_header.i.i, align 4
  %call4.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef 2) #2
  %incdec.ptr.i = getelementptr i8, ptr %call4.i, i32 1
  %17 = ptrtoint ptr %call4.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 5, ptr %call4.i, align 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %incdec.ptr.i, align 1
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = getelementptr inbounds %struct.anon.0, ptr %call.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %21, align 8
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %25 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %26 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %mac_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 21
  %27 = ptrtoint ptr %mac_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv.i.i.i, ptr %mac_header.i.i.i, align 2
  %pkt_type.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15
  %28 = ptrtoint ptr %pkt_type.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %bf.load.i.i = load i16, ptr %pkt_type.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, 8191
  store i16 %bf.clear.i.i, ptr %pkt_type.i.i, align 8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %29 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 2, ptr %protocol.i, align 8
  %call8.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i) #2
  br label %ax25_kiss_cmd.exit

ax25_kiss_cmd.exit:                               ; preds = %if.end3.i, %if.end.i.ax25_kiss_cmd.exit_crit_edge, %if.then2.ax25_kiss_cmd.exit_crit_edge
  %30 = ptrtoint ptr %dama to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %dama, align 4
  tail call void @ax25_ds_del_timer(ptr noundef nonnull %ax25_dev) #2
  br label %if.end5

if.end5:                                          ; preds = %ax25_kiss_cmd.exit, %ax25_check_dama_slave.exit, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ax25_ds_del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dama_on(ptr nocapture noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %0 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ax25_dev, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %entry.ax25_dev_dama_on.exit_crit_edge, label %if.end.i

entry.ax25_dev_dama_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %ax25_dev_dama_on.exit

if.end.i:                                         ; preds = %entry
  %dama.i = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %dama.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dama.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp1.i = icmp eq i8 %3, 0
  br i1 %cmp1.i, label %if.then3.i, label %if.end.i.if.end4.i_crit_edge

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.then3.i:                                       ; preds = %if.end.i
  %dev.i.i = getelementptr inbounds %struct.ax25_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %cmp.i.i = icmp eq ptr %5, null
  br i1 %cmp.i.i, label %if.then3.i.if.end4.i_crit_edge, label %if.end.i.i

if.then3.i.if.end4.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.end.i.i:                                       ; preds = %if.then3.i
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 2, i32 noundef 2592, i32 noundef 0, i32 noundef -1) #2
  %cmp1.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %cmp1.i.i, label %if.end.i.i.if.end4.i_crit_edge, label %if.end3.i.i

if.end.i.i.if.end4.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end4.i

if.end3.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #4
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i.i, align 4
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i.i.i, ptr %network_header.i.i.i, align 4
  %call4.i.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef 2) #2
  %incdec.ptr.i.i = getelementptr i8, ptr %call4.i.i, i32 1
  %11 = ptrtoint ptr %call4.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %call4.i.i, align 1
  %12 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %incdec.ptr.i.i, align 1
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  %15 = getelementptr inbounds %struct.anon.0, ptr %call.i.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %15, align 8
  %17 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i, align 4
  %19 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %head.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %mac_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 21
  %21 = ptrtoint ptr %mac_header.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i.i.i, ptr %mac_header.i.i.i.i, align 2
  %pkt_type.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15
  %22 = ptrtoint ptr %pkt_type.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i.i = load i16, ptr %pkt_type.i.i.i, align 8
  %bf.clear.i.i.i = and i16 %bf.load.i.i.i, 8191
  store i16 %bf.clear.i.i.i, ptr %pkt_type.i.i.i, align 8
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 15, i32 0, i32 18
  %23 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 2, ptr %protocol.i.i, align 8
  %call8.i.i = tail call i32 @dev_queue_xmit(ptr noundef nonnull %call.i.i.i) #2
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end3.i.i, %if.end.i.i.if.end4.i_crit_edge, %if.then3.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge
  %24 = ptrtoint ptr %dama.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %dama.i, align 4
  tail call void @ax25_ds_set_timer(ptr noundef nonnull %1) #2
  br label %ax25_dev_dama_on.exit

ax25_dev_dama_on.exit:                            ; preds = %if.end4.i, %entry.ax25_dev_dama_on.exit_crit_edge
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %25 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %condition, align 2
  %27 = or i8 %26, 16
  store i8 %27, ptr %condition, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ax25_dama_off(ptr nocapture noundef %ax25) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %condition = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 12
  %0 = ptrtoint ptr %condition to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %condition, align 2
  %2 = and i8 %1, -17
  store i8 %2, ptr %condition, align 2
  %ax25_dev = getelementptr inbounds %struct.ax25_cb, ptr %ax25, i32 0, i32 4
  %3 = ptrtoint ptr %ax25_dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ax25_dev, align 4
  tail call void @ax25_dev_dama_off(ptr noundef %4)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_queue_xmit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

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
