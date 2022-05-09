; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-transaction.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_address_region = type { i64, i64 }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
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
%struct.snd_motu_packet_format = type { i8, i8, i8, i8, [3 x i8] }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
%struct.amdtp_motu_cache = type { ptr, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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

@snd_motu_transaction_register.resp_register_region = internal constant { %struct.fw_address_region, [16 x i8] } { %struct.fw_address_region { i64 281474439839744, i64 281474439905279 }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"resp_register_region\00", align 1
@___asan_gen_.2 = private constant [42 x i8] c"../sound/firewire/motu/motu-transaction.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 99, i32 40 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @snd_motu_transaction_register.resp_register_region], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_transaction_register.resp_register_region to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_transaction_read(ptr nocapture noundef readonly %motu, i32 noundef %offset, ptr noundef %reg, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2 = icmp eq i32 %size, 4
  %. = select i1 %cmp2, i32 4, i32 5
  %unit = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %conv = zext i32 %offset to i64
  %add = add nuw nsw i64 %conv, 281474708275200
  %call = tail call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef %., i64 noundef %add, ptr noundef %reg, i32 noundef %size, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_transaction_write(ptr nocapture noundef readonly %motu, i32 noundef %offset, ptr noundef %reg, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rem = and i32 %size, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp1 = icmp eq i32 %size, 0
  %or.cond = or i1 %cmp1, %cmp.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %size)
  %cmp2 = icmp ne i32 %size, 4
  %. = zext i1 %cmp2 to i32
  %unit = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %conv = zext i32 %offset to i64
  %add = add nuw nsw i64 %conv, 281474708275200
  %call = tail call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef %., i64 noundef %add, ptr noundef %reg, i32 noundef %size, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_transaction_reregister(ptr nocapture noundef readonly %motu) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #3
  %async_handler = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12
  %callback_data = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12, i32 3
  %4 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr i8, ptr %3, i32 -4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %node_id = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id, align 4
  %shl = shl i32 %9, 16
  %10 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %async_handler, align 8
  %shr = lshr i64 %11, 32
  %12 = trunc i64 %shr to i32
  %conv2 = or i32 %shl, %12
  %13 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv2, ptr %data, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef 0, i64 noundef 281474708278020, ptr noundef nonnull %data, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp slt i32 %call.i, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %async_handler, align 8
  %conv10 = trunc i64 %15 to i32
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv10, ptr %data, align 4
  %17 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %unit, align 4
  %call.i22 = call i32 @snd_fw_transaction(ptr noundef %18, i32 noundef 0, i64 noundef 281474708278024, ptr noundef nonnull %data, i32 noundef 4, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i22, %if.end7 ], [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_transaction_register(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %async_handler = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12
  %length = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12, i32 1
  %0 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 4, ptr %length, align 8
  %address_callback = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12, i32 2
  %1 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @handle_message, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12, i32 3
  %2 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %motu, ptr %callback_data, align 4
  %call = tail call i32 @fw_core_add_address_handler(ptr noundef %async_handler, ptr noundef nonnull @snd_motu_transaction_register.resp_register_region) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %unit.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %7 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback_data, align 4
  %cmp.i = icmp eq ptr %8, null
  br i1 %cmp.i, label %if.end.snd_motu_transaction_reregister.exit.thread_crit_edge, label %if.end.i

if.end.snd_motu_transaction_reregister.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_motu_transaction_reregister.exit.thread

if.end.i:                                         ; preds = %if.end
  %card.i = getelementptr i8, ptr %6, i32 -4
  %9 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr inbounds %struct.fw_card, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %node_id.i, align 4
  %shl.i = shl i32 %12, 16
  %13 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %async_handler, align 8
  %shr.i = lshr i64 %14, 32
  %15 = trunc i64 %shr.i to i32
  %conv2.i = or i32 %shl.i, %15
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv2.i, ptr %data.i, align 4
  %call.i.i = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 0, i64 noundef 281474708278020, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %if.end.i.snd_motu_transaction_reregister.exit.thread_crit_edge, label %snd_motu_transaction_reregister.exit

if.end.i.snd_motu_transaction_reregister.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_motu_transaction_reregister.exit.thread

snd_motu_transaction_reregister.exit.thread:      ; preds = %if.end.i.snd_motu_transaction_reregister.exit.thread_crit_edge, %if.end.snd_motu_transaction_reregister.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %if.end.i.snd_motu_transaction_reregister.exit.thread_crit_edge ], [ -22, %if.end.snd_motu_transaction_reregister.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  br label %if.then6

snd_motu_transaction_reregister.exit:             ; preds = %if.end.i
  %17 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %async_handler, align 8
  %conv10.i = trunc i64 %18 to i32
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv10.i, ptr %data.i, align 4
  %20 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit.i, align 4
  %call.i22.i = call i32 @snd_fw_transaction(ptr noundef %21, i32 noundef 0, i64 noundef 281474708278024, ptr noundef nonnull %data.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %cmp5 = icmp slt i32 %call.i22.i, 0
  br i1 %cmp5, label %snd_motu_transaction_reregister.exit.if.then6_crit_edge, label %snd_motu_transaction_reregister.exit.cleanup_crit_edge

snd_motu_transaction_reregister.exit.cleanup_crit_edge: ; preds = %snd_motu_transaction_reregister.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

snd_motu_transaction_reregister.exit.if.then6_crit_edge: ; preds = %snd_motu_transaction_reregister.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then6

if.then6:                                         ; preds = %snd_motu_transaction_reregister.exit.if.then6_crit_edge, %snd_motu_transaction_reregister.exit.thread
  %retval.0.i23 = phi i32 [ %retval.0.i.ph, %snd_motu_transaction_reregister.exit.thread ], [ %call.i22.i, %snd_motu_transaction_reregister.exit.if.then6_crit_edge ]
  call void @fw_core_remove_address_handler(ptr noundef %async_handler) #3
  %22 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %address_callback, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %snd_motu_transaction_reregister.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %retval.0.i23, %if.then6 ], [ %call.i22.i, %snd_motu_transaction_reregister.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_message(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcode)
  %cmp.not = icmp eq i32 %tcode, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #3
  br label %cleanup

if.end:                                           ; preds = %entry
  %async_handler = getelementptr inbounds %struct.snd_motu, ptr %callback_data, i32 0, i32 12
  %0 = ptrtoint ptr %async_handler to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %async_handler, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %offset)
  %cmp2.not = icmp eq i64 %1, %offset
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %length)
  %cmp3.not = icmp eq i32 %length, 4
  %or.cond = and i1 %cmp3.not, %cmp2.not
  br i1 %or.cond, label %do.body6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 7) #3
  br label %cleanup

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %lock = getelementptr inbounds %struct.snd_motu, ptr %callback_data, i32 0, i32 3
  %call8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %msg = getelementptr inbounds %struct.snd_motu, ptr %callback_data, i32 0, i32 13
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %msg, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call8) #3
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #3
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %callback_data, i32 0, i32 16
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then4, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_motu_transaction_unregister(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #3
  %address_callback = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12, i32 2
  %0 = ptrtoint ptr %address_callback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %address_callback, align 8
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %async_handler = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 12
  tail call void @fw_core_remove_address_handler(ptr noundef %async_handler) #3
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %address_callback, align 8
  %3 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %data, align 4
  %unit.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 1
  %4 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %5, i32 noundef 0, i64 noundef 281474708278020, ptr noundef nonnull %data, i32 noundef 4, i32 noundef 0) #3
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call.i10 = call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 0, i64 noundef 281474708278024, ptr noundef nonnull %data, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @snd_motu_transaction_register.resp_register_region, !1, !"resp_register_region", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-transaction.c", i32 99, i32 40}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
