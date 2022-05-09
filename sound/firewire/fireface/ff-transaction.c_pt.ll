; ModuleID = '/llk/IR_all_yes/sound/firewire/fireface/ff-transaction.c_pt.bc'
source_filename = "../sound/firewire/fireface/ff-transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.snd_ff = type { ptr, ptr, %struct.mutex, %struct.spinlock, i32, ptr, [2 x ptr], %struct.fw_address_handler, [2 x ptr], [2 x i8], [2 x [9 x i32]], [2 x %struct.work_struct], [2 x %struct.fw_transaction], [2 x i64], [2 x i8], [2 x i32], i32, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, i8, %struct.wait_queue_head, %struct.amdtp_domain }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.snd_ff_spec = type { [3 x i32], [3 x i32], i32, i32, ptr, i64, i8, [2 x i64] }
%struct.fw_address_region = type { i64, i64 }
%struct.snd_ff_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@snd_ff_transaction_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ff->rx_midi_work[0])\00", [56 x i8] zeroinitializer }, align 32
@snd_ff_transaction_register.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&ff->rx_midi_work[1])\00", [56 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967280, i64 4294967285]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 211, i32 2 }
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [44 x i8] c"../sound/firewire/fireface/ff-transaction.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 212, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @snd_ff_transaction_register.__key, ptr @.str, ptr @snd_ff_transaction_register.__key.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_transaction_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ff_transaction_register.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_transaction_reregister(ptr nocapture noundef readonly %ff) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %3, i32 -4
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %node_id = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 4
  %shl = shl i32 %7, 16
  %async_handler = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7
  %8 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %async_handler, align 8
  %shr = lshr i64 %9, 32
  %10 = trunc i64 %shr to i32
  %conv1 = or i32 %shl, %10
  %11 = tail call i32 @llvm.bswap.i32(i32 %conv1)
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reg, align 4
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec, align 4
  %midi_high_addr = getelementptr inbounds %struct.snd_ff_spec, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %midi_high_addr to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %midi_high_addr, align 8
  %call3 = call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef 0, i64 noundef %16, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ff_transaction_register(ptr noundef %ff) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %midi_msg_region.i = alloca %struct.fw_address_region, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.fw_address_region, ptr %midi_msg_region.i, i32 0, i32 1
  %spec.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %async_handler.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7
  %length.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7, i32 1
  %address_callback.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7, i32 2
  %callback_data.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.065 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %midi_msg_region.i) #4
  %1 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %spec.i, align 4
  %midi_addr_range.i = getelementptr inbounds %struct.snd_ff_spec, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %midi_addr_range.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %midi_addr_range.i, align 8
  %conv.i = zext i8 %4 to i64
  %5 = ptrtoint ptr %length.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %length.i, align 8
  %6 = ptrtoint ptr %address_callback.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @handle_midi_msg, ptr %address_callback.i, align 8
  %7 = ptrtoint ptr %callback_data.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ff, ptr %callback_data.i, align 4
  %conv322.i = zext i32 %i.065 to i64
  %mul.i = shl nuw nsw i64 %conv322.i, 32
  %8 = ptrtoint ptr %midi_msg_region.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mul.i, ptr %midi_msg_region.i, align 8
  %add.i = or i64 %mul.i, %conv.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %add.i, ptr %0, align 8
  %call.i = call i32 @fw_core_add_address_handler(ptr noundef %async_handler.i, ptr noundef nonnull %midi_msg_region.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp.i = icmp sgt i32 %call.i, -1
  br i1 %cmp.i, label %if.then.i, label %for.body.allocate_own_address.exit_crit_edge

for.body.allocate_own_address.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %allocate_own_address.exit

if.then.i:                                        ; preds = %for.body
  %10 = ptrtoint ptr %async_handler.i to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %async_handler.i, align 8
  %and.i = and i64 %11, 4294967295
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i.allocate_own_address.exit_crit_edge, label %allocate_own_address.exit.thread

if.then.i.allocate_own_address.exit_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %allocate_own_address.exit

allocate_own_address.exit.thread:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  call void @fw_core_remove_address_handler(ptr noundef %async_handler.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %midi_msg_region.i) #4
  br label %for.inc

allocate_own_address.exit:                        ; preds = %if.then.i.allocate_own_address.exit_crit_edge, %for.body.allocate_own_address.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %midi_msg_region.i) #4
  %12 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %for.end [
    i32 -16, label %allocate_own_address.exit.for.inc_crit_edge
    i32 -11, label %allocate_own_address.exit.for.inc_crit_edge71
  ]

allocate_own_address.exit.for.inc_crit_edge71:    ; preds = %allocate_own_address.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

allocate_own_address.exit.for.inc_crit_edge:      ; preds = %allocate_own_address.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

for.inc:                                          ; preds = %allocate_own_address.exit.for.inc_crit_edge, %allocate_own_address.exit.for.inc_crit_edge71, %allocate_own_address.exit.thread
  %err.0.i61 = phi i32 [ -11, %allocate_own_address.exit.thread ], [ %call.i, %allocate_own_address.exit.for.inc_crit_edge ], [ %call.i, %allocate_own_address.exit.for.inc_crit_edge71 ]
  %inc = add nuw nsw i32 %i.065, 1
  %exitcond.not = icmp eq i32 %inc, 65535
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.end:                                          ; preds = %allocate_own_address.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  br i1 %cmp3, label %for.end.cleanup_crit_edge, label %if.end5

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %for.end
  %unit.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %13 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 8
  %card.i = getelementptr i8, ptr %16, i32 -4
  %17 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #4
  %node_id.i = getelementptr inbounds %struct.fw_card, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %node_id.i, align 4
  %shl.i = shl i32 %20, 16
  %21 = ptrtoint ptr %async_handler.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %async_handler.i, align 8
  %shr.i = lshr i64 %22, 32
  %23 = trunc i64 %shr.i to i32
  %conv1.i = or i32 %shl.i, %23
  %24 = call i32 @llvm.bswap.i32(i32 %conv1.i) #4
  %25 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %reg.i, align 4
  %26 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spec.i, align 4
  %midi_high_addr.i = getelementptr inbounds %struct.snd_ff_spec, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %midi_high_addr.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %midi_high_addr.i, align 8
  %call3.i = call i32 @snd_fw_transaction(ptr noundef %14, i32 noundef 0, i64 noundef %29, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp7 = icmp slt i32 %call3.i, 0
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %do.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  %rx_midi_work = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 11
  call void @__init_work(ptr noundef %rx_midi_work, i32 noundef 0) #4
  %30 = ptrtoint ptr %rx_midi_work to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -64, ptr %rx_midi_work, align 4
  %lockdep_map = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 0, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @snd_ff_transaction_register.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry16 = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 0, i32 1
  %31 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %entry16, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 0, i32 2
  %33 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @transmit_midi0_msg, ptr %func, align 4
  %arrayidx21 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 1
  call void @__init_work(ptr noundef %arrayidx21, i32 noundef 0) #4
  %34 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 -64, ptr %arrayidx21, align 4
  %lockdep_map29 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 1, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map29, ptr noundef nonnull @.str.2, ptr noundef nonnull @snd_ff_transaction_register.__key.1, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry32 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 1, i32 1
  %35 = ptrtoint ptr %entry32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %entry32, ptr %entry32, align 4
  %prev.i59 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 1, i32 1, i32 1
  %36 = ptrtoint ptr %prev.i59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %entry32, ptr %prev.i59, align 4
  %func35 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 1, i32 2
  %37 = ptrtoint ptr %func35 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @transmit_midi1_msg, ptr %func35, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end5.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ %call.i, %for.end.cleanup_crit_edge ], [ %call3.i, %if.end5.cleanup_crit_edge ], [ %err.0.i61, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @transmit_midi0_msg(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -276
  tail call fastcc void @transmit_midi_msg(ptr noundef %add.ptr, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @transmit_midi1_msg(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -320
  tail call fastcc void @transmit_midi_msg(ptr noundef %add.ptr, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ff_transaction_unregister(ptr noundef %ff) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #4
  %callback_data = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7, i32 3
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %async_handler = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 7
  %2 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %callback_data, align 4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %reg, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %4 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit, align 4
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %6 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec, align 4
  %midi_high_addr = getelementptr inbounds %struct.snd_ff_spec, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %midi_high_addr to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %midi_high_addr, align 8
  %call = call i32 @snd_fw_transaction(ptr noundef %5, i32 noundef 0, i64 noundef %9, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #4
  call void @fw_core_remove_address_handler(ptr noundef %async_handler) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_midi_msg(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr noundef %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #4
  %async_handler = getelementptr inbounds %struct.snd_ff, ptr %callback_data, i32 0, i32 7
  %0 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %async_handler, align 8
  %sub = sub i64 %offset, %1
  %spec = getelementptr inbounds %struct.snd_ff, ptr %callback_data, i32 0, i32 5
  %2 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %spec, align 4
  %protocol = getelementptr inbounds %struct.snd_ff_spec, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %protocol, align 8
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %conv = trunc i64 %sub to i32
  tail call void %7(ptr noundef %callback_data, i32 noundef %conv, ptr noundef %data, i32 noundef %length) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @transmit_midi_msg(ptr noundef %ff, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 8, i32 %port
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx, align 4
  %unit = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef nonnull %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx2 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 15, i32 %port
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3.not = icmp eq i32 %7, 0
  br i1 %cmp3.not, label %lor.lhs.false4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %arrayidx5 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 14, i32 %port
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1, !range !15
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool6.not = icmp eq i8 %9, 0
  br i1 %tobool6.not, label %if.end8, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false4
  %arrayidx9 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 13, i32 %port
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %arrayidx9, align 8
  %call10 = tail call i64 @ktime_get() #4
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %call10)
  %cmp3.i.i = icmp sgt i64 %11, %call10
  br i1 %cmp3.i.i, label %if.then12, label %if.end15

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx13 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 11, i32 %port
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %arrayidx13) #4
  br label %cleanup

if.end15:                                         ; preds = %if.end8
  %spec = getelementptr inbounds %struct.snd_ff, ptr %ff, i32 0, i32 5
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec, align 4
  %protocol = getelementptr inbounds %struct.snd_ff_spec, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %protocol to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %protocol, align 8
  %fill_midi_msg = getelementptr inbounds %struct.snd_ff_protocol, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %fill_midi_msg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fill_midi_msg, align 4
  %call16 = tail call i32 %18(ptr noundef %ff, ptr noundef nonnull %1, i32 noundef %port) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 1
  br i1 %cmp17, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port)
  %cmp20 = icmp eq i32 %port, 0
  %19 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spec, align 4
  %midi_rx_addrs = getelementptr inbounds %struct.snd_ff_spec, ptr %20, i32 0, i32 7
  %arrayidx26 = getelementptr %struct.snd_ff_spec, ptr %20, i32 0, i32 7, i32 1
  %addr.0.in = select i1 %cmp20, ptr %midi_rx_addrs, ptr %arrayidx26
  %callback.0 = select i1 %cmp20, ptr @finish_transmit_midi0_msg, ptr @finish_transmit_midi1_msg
  %21 = ptrtoint ptr %addr.0.in to i32
  call void @__asan_load8_noabort(i32 %21)
  %addr.0 = load i64, ptr %addr.0.in, align 8
  %call28 = tail call i64 @ktime_get() #4
  %22 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx2, align 4
  %mul31 = mul i32 %23, 256000
  %conv = zext i32 %mul31 to i64
  %add = add i64 %call28, %conv
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %add, ptr %arrayidx9, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call16)
  %cmp34 = icmp ne i32 %call16, 1
  %. = zext i1 %cmp34 to i32
  %generation39 = getelementptr i8, ptr %5, i32 -12
  %25 = ptrtoint ptr %generation39 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %generation39, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #4, !srcloc !16
  %card = getelementptr i8, ptr %5, i32 -4
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %arrayidx46 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 12, i32 %port
  %node_id = getelementptr i8, ptr %5, i32 -16
  %29 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %node_id, align 8
  %max_speed = getelementptr i8, ptr %5, i32 -8
  %31 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_speed, align 8
  %arrayidx47 = getelementptr %struct.snd_ff, ptr %ff, i32 0, i32 10, i32 %port
  %mul48 = shl i32 %call16, 2
  tail call void @fw_send_request(ptr noundef %28, ptr noundef %arrayidx46, i32 noundef %., i32 noundef %30, i32 noundef %26, i32 noundef %32, i64 noundef %addr.0, ptr noundef %arrayidx47, i32 noundef %mul48, ptr noundef nonnull %callback.0, ptr noundef %arrayidx46) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end15.cleanup_crit_edge, %if.then12, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_empty(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @finish_transmit_midi0_msg(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %callback_data, i32 -172
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %2 = and i32 %rcode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1.i = getelementptr i8, ptr %callback_data, i32 316
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx1.i, align 1
  br label %finish_transmit_midi_msg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp.not.i = icmp eq i32 %rcode, 0
  br i1 %cmp.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i = getelementptr i8, ptr %callback_data, i32 300
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr i8, ptr %callback_data, i32 -88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %arrayidx4.i) #4
  br label %finish_transmit_midi_msg.exit

if.end6.i:                                        ; preds = %if.end.i
  %arrayidx7.i = getelementptr i8, ptr %callback_data, i32 320
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @snd_rawmidi_transmit_ack(ptr noundef %1, i32 noundef %8) #4
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx7.i, align 4
  %call11.i = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.then12.i, label %if.end6.i.finish_transmit_midi_msg.exit_crit_edge

if.end6.i.finish_transmit_midi_msg.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %finish_transmit_midi_msg.exit

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14.i = getelementptr i8, ptr %callback_data, i32 -88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i31.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %arrayidx14.i) #4
  br label %finish_transmit_midi_msg.exit

finish_transmit_midi_msg.exit:                    ; preds = %if.then12.i, %if.end6.i.finish_transmit_midi_msg.exit_crit_edge, %if.then2.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @finish_transmit_midi1_msg(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readnone %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr i8, ptr %callback_data, i32 -316
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %arrayidx.i, align 4
  %2 = and i32 %rcode, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2)
  %3 = icmp eq i32 %2, 6
  br i1 %3, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx1.i = getelementptr i8, ptr %callback_data, i32 169
  %4 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx1.i, align 1
  br label %finish_transmit_midi_msg.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp.not.i = icmp eq i32 %rcode, 0
  br i1 %cmp.not.i, label %if.end6.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx3.i = getelementptr i8, ptr %callback_data, i32 160
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %arrayidx3.i, align 8
  %arrayidx4.i = getelementptr i8, ptr %callback_data, i32 -192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %6 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %6, ptr noundef %arrayidx4.i) #4
  br label %finish_transmit_midi_msg.exit

if.end6.i:                                        ; preds = %if.end.i
  %arrayidx7.i = getelementptr i8, ptr %callback_data, i32 176
  %7 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.i, align 4
  %call8.i = tail call i32 @snd_rawmidi_transmit_ack(ptr noundef %1, i32 noundef %8) #4
  %9 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx7.i, align 4
  %call11.i = tail call i32 @snd_rawmidi_transmit_empty(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.then12.i, label %if.end6.i.finish_transmit_midi_msg.exit_crit_edge

if.end6.i.finish_transmit_midi_msg.exit_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %finish_transmit_midi_msg.exit

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #6
  %arrayidx14.i = getelementptr i8, ptr %callback_data, i32 -192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i31.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %arrayidx14.i) #4
  br label %finish_transmit_midi_msg.exit

finish_transmit_midi_msg.exit:                    ; preds = %if.then12.i, %if.end6.i.finish_transmit_midi_msg.exit_crit_edge, %if.then2.i, %if.then.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @snd_ff_transaction_register.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireface/ff-transaction.c", i32 211, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @snd_ff_transaction_register.__key.1, !4, !"__key", i1 false, i1 false}
!4 = !{!"../sound/firewire/fireface/ff-transaction.c", i32 212, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{i8 0, i8 2}
!16 = !{i64 2154527480}
