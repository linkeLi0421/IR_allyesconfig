; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-transaction.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-transaction.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fw_address_region = type { i64, i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_dice = type { ptr, ptr, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, i32, [2 x [3 x i32]], [2 x [3 x i32]], [2 x i32], [2 x i32], %struct.fw_address_handler, i32, i32, i32, i8, %struct.wait_queue_head, [2 x %struct.fw_iso_resources], [2 x %struct.fw_iso_resources], [2 x %struct.amdtp_stream], [2 x %struct.amdtp_stream], i8, %struct.completion, i32, %struct.amdtp_domain }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.92, %struct.anon.93 }
%struct.anon.92 = type { i32, i32, i32 }
%struct.anon.93 = type { i8 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@snd_dice_rates = external dso_local local_unnamed_addr constant [7 x i32], align 4
@fw_high_memory_region = external dso_local constant %struct.fw_address_region, align 8
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@register_notification_address._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"device is already in use\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"register_notification_address\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/firewire/dice/dice-transaction.c\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@register_notification_address._entry_ptr = internal global ptr @register_notification_address._entry, section ".printk_index", align 4
@get_subaddrs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 319, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"unknown DICE version: 0x%08x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"get_subaddrs\00", [19 x i8] zeroinitializer }, align 32
@get_subaddrs._entry_ptr = internal global ptr @get_subaddrs._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.7 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.8 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967285]
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 199, i32 4 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [42 x i8] c"../sound/firewire/dice/dice-transaction.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 317, i32 4 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @get_subaddrs._entry, ptr @get_subaddrs._entry_ptr, ptr @register_notification_address._entry, ptr @register_notification_address._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @register_notification_address._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_subaddrs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_write(ptr nocapture noundef readonly %dice, i32 noundef %type, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 6
  br label %get_subaddr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 5
  br label %get_subaddr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sync_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 7
  br label %get_subaddr.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rsrv_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 8
  br label %get_subaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  br label %get_subaddr.exit

get_subaddr.exit:                                 ; preds = %sw.default.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %conv11.pn.in.in.i = phi ptr [ %global_offset.i, %sw.default.i ], [ %rsrv_offset.i, %sw.bb7.i ], [ %sync_offset.i, %sw.bb4.i ], [ %rx_offset.i, %sw.bb1.i ], [ %tx_offset.i, %sw.bb.i ]
  %conv = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp ne i32 %len, 4
  %cond = zext i1 %cmp to i32
  %3 = ptrtoint ptr %conv11.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %conv11.pn.in.i = load i32, ptr %conv11.pn.in.in.i, align 4
  %conv11.pn.i = zext i32 %conv11.pn.in.i to i64
  %offset.addr.0.i = add nuw nsw i64 %conv, 281474439839744
  %add13.i = add nuw nsw i64 %offset.addr.0.i, %conv11.pn.i
  %call1 = tail call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef %cond, i64 noundef %add13.i, ptr noundef %buf, i32 noundef %len, i32 noundef 0) #5
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_read(ptr nocapture noundef readonly %dice, i32 noundef %type, i32 noundef %offset, ptr noundef %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %type, label %sw.default.i [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb4.i
    i32 5, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %tx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 6
  br label %get_subaddr.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 5
  br label %get_subaddr.exit

sw.bb4.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %sync_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 7
  br label %get_subaddr.exit

sw.bb7.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %rsrv_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 8
  br label %get_subaddr.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  br label %get_subaddr.exit

get_subaddr.exit:                                 ; preds = %sw.default.i, %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i
  %conv11.pn.in.in.i = phi ptr [ %global_offset.i, %sw.default.i ], [ %rsrv_offset.i, %sw.bb7.i ], [ %sync_offset.i, %sw.bb4.i ], [ %rx_offset.i, %sw.bb1.i ], [ %tx_offset.i, %sw.bb.i ]
  %conv = zext i32 %offset to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp = icmp eq i32 %len, 4
  %cond = select i1 %cmp, i32 4, i32 5
  %3 = ptrtoint ptr %conv11.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %conv11.pn.in.i = load i32, ptr %conv11.pn.in.in.i, align 4
  %conv11.pn.i = zext i32 %conv11.pn.in.i to i64
  %offset.addr.0.i = add nuw nsw i64 %conv, 281474439839744
  %add13.i = add nuw nsw i64 %offset.addr.0.i, %conv11.pn.i
  %call1 = tail call i32 @snd_fw_transaction(ptr noundef %1, i32 noundef %cond, i64 noundef %add13.i, ptr noundef %buf, i32 noundef %len, i32 noundef 0) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_get_clock_source(ptr nocapture noundef readonly %dice, ptr nocapture noundef writeonly %source) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #5
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %info, align 4, !annotation !24
  %unit.i.i.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i.i.i, align 4
  %global_offset.i.i.i.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %3 = ptrtoint ptr %global_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %conv11.pn.in.i.i.i.i = load i32, ptr %global_offset.i.i.i.i, align 4
  %conv11.pn.i.i.i.i = zext i32 %conv11.pn.in.i.i.i.i to i64
  %add13.i.i.i.i = add nuw nsw i64 %conv11.pn.i.i.i.i, 281474439839820
  %call1.i.i.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef %add13.i.i.i.i, ptr noundef nonnull %info, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1.i.i.i)
  %cmp = icmp sgt i32 %call1.i.i.i, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and = and i32 %5, 255
  %6 = ptrtoint ptr %source to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %source, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #5
  ret i32 %call1.i.i.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_get_rate(ptr nocapture noundef readonly %dice, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info) #5
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %info, align 4, !annotation !24
  %unit.i.i.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %1 = ptrtoint ptr %unit.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit.i.i.i, align 4
  %global_offset.i.i.i.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %3 = ptrtoint ptr %global_offset.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %conv11.pn.in.i.i.i.i = load i32, ptr %global_offset.i.i.i.i, align 4
  %conv11.pn.i.i.i.i = zext i32 %conv11.pn.in.i.i.i.i to i64
  %add13.i.i.i.i = add nuw nsw i64 %conv11.pn.i.i.i.i, 281474439839820
  %call1.i.i.i = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef %add13.i.i.i.i, ptr noundef nonnull %info, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %cmp = icmp slt i32 %call1.i.i.i, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info, align 4
  %and = lshr i32 %5, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %shr)
  %cmp1 = icmp ugt i32 %shr, 6
  br i1 %cmp1, label %if.end.end_crit_edge, label %if.end3

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr [7 x i32], ptr @snd_dice_rates, i32 0, i32 %shr
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %rate, align 4
  br label %end

end:                                              ; preds = %if.end3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ %call1.i.i.i, %entry.end_crit_edge ], [ %call1.i.i.i, %if.end3 ], [ -38, %if.end.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_set_enable(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %global_enabled = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 24
  %0 = ptrtoint ptr %global_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %global_enabled, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %bf.cast.not = icmp sgt i8 %bf.load, -1
  br i1 %bf.cast.not, label %if.end, label %entry.end_crit_edge

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %value, align 4
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %4 = ptrtoint ptr %global_offset.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %conv11.pn.in.i = load i32, ptr %global_offset.i, align 4
  %conv11.pn.i = zext i32 %conv11.pn.in.i to i64
  %add13.i = add nuw nsw i64 %conv11.pn.i, 281474439839824
  %owner_generation = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 15
  %5 = ptrtoint ptr %owner_generation to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %owner_generation, align 8
  %or = or i32 %6, 256
  %call1 = call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 0, i64 noundef %add13.i, ptr noundef nonnull %value, i32 noundef 4, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.end_crit_edge, label %if.end3

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %global_enabled to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load5 = load i8, ptr %global_enabled, align 8
  %bf.set = or i8 %bf.load5, -128
  store i8 %bf.set, ptr %global_enabled, align 8
  br label %end

end:                                              ; preds = %if.end3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.end_crit_edge ], [ %call1, %if.end.end_crit_edge ], [ %call1, %if.end3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_transaction_clear_enable(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #5
  %0 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %value, align 4
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %3 = ptrtoint ptr %global_offset.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %conv11.pn.in.i = load i32, ptr %global_offset.i, align 4
  %conv11.pn.i = zext i32 %conv11.pn.in.i to i64
  %add13.i = add nuw nsw i64 %conv11.pn.i, 281474439839824
  %owner_generation = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 15
  %4 = ptrtoint ptr %owner_generation to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %owner_generation, align 8
  %or = or i32 %5, 768
  %call1 = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 0, i64 noundef %add13.i, ptr noundef nonnull %value, i32 noundef 4, i32 noundef %or) #5
  %global_enabled = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 24
  %6 = ptrtoint ptr %global_enabled to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %global_enabled, align 8
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %global_enabled, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_dice_transaction_destroy(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_data = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %notification_handler = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 16) #8
  %cmp.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.i, label %if.end.unregister_notification_address.exit_crit_edge, label %if.end.i

if.end.unregister_notification_address.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %unregister_notification_address.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %card.i = getelementptr i8, ptr %5, i32 -4
  %7 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card.i, align 4
  %node_id.i = getelementptr inbounds %struct.fw_card, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %node_id.i, align 4
  %conv18.i = zext i32 %10 to i64
  %shl.i = shl i64 %conv18.i, 48
  %11 = ptrtoint ptr %notification_handler to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %notification_handler, align 8
  %or.i = or i64 %shl.i, %12
  %13 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or.i, ptr %call7.i.i, align 8
  %arrayidx2.i = getelementptr i64, ptr %call7.i.i, i32 1
  %14 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 -281474976710656, ptr %arrayidx2.i, align 8
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %global_offset.i.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %17 = ptrtoint ptr %global_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %conv11.pn.in.i.i = load i32, ptr %global_offset.i.i, align 4
  %conv11.pn.i.i = zext i32 %conv11.pn.in.i.i to i64
  %add13.i.i = add nuw nsw i64 %conv11.pn.i.i, 281474439839744
  %owner_generation.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 15
  %18 = ptrtoint ptr %owner_generation.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %owner_generation.i, align 8
  %or5.i = or i32 %19, 768
  %call6.i = tail call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 18, i64 noundef %add13.i.i, ptr noundef nonnull %call7.i.i, i32 noundef 16, i32 noundef %or5.i) #5
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  %20 = ptrtoint ptr %owner_generation.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %owner_generation.i, align 8
  br label %unregister_notification_address.exit

unregister_notification_address.exit:             ; preds = %if.end.i, %if.end.unregister_notification_address.exit_crit_edge
  tail call void @fw_core_remove_address_handler(ptr noundef %notification_handler) #5
  %21 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %unregister_notification_address.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_reinit(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %callback_data = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14, i32 3
  %0 = ptrtoint ptr %callback_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %callback_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call fastcc i32 @register_notification_address(ptr noundef %dice, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @register_notification_address(ptr nocapture noundef %dice, i1 noundef zeroext %retry) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 16) #8
  %tobool2.not = icmp eq ptr %call7.i, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cond = select i1 %retry, i32 3, i32 0
  %card = getelementptr i8, ptr %3, i32 -4
  %notification_handler = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14
  %arrayidx3 = getelementptr i64, ptr %call7.i, i32 1
  %generation = getelementptr i8, ptr %3, i32 -12
  %owner_generation = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 15
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  br label %for.cond

for.cond:                                         ; preds = %if.end36, %for.cond.preheader
  %retries.0 = phi i32 [ -1, %if.end36 ], [ %cond, %for.cond.preheader ]
  %5 = ptrtoint ptr %call7.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -281474976710656, ptr %call7.i, align 8
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %node_id = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %node_id, align 4
  %conv63 = zext i32 %9 to i64
  %shl = shl i64 %conv63, 48
  %10 = ptrtoint ptr %notification_handler to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %notification_handler, align 8
  %or = or i64 %shl, %11
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %or, ptr %arrayidx3, align 8
  %13 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %generation, align 4
  %15 = ptrtoint ptr %owner_generation to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %owner_generation, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !25
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  %18 = ptrtoint ptr %global_offset.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %conv11.pn.in.i = load i32, ptr %global_offset.i, align 4
  %conv11.pn.i = zext i32 %conv11.pn.in.i to i64
  %add13.i = add nuw nsw i64 %conv11.pn.i, 281474439839744
  %19 = ptrtoint ptr %owner_generation to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %owner_generation, align 8
  %or10 = or i32 %20, 256
  %call11 = tail call i32 @snd_fw_transaction(ptr noundef %17, i32 noundef 18, i64 noundef %add13.i, ptr noundef nonnull %call7.i, i32 noundef 16, i32 noundef %or10) #5
  %21 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %call11, label %for.end [
    i32 0, label %if.then13
    i32 -11, label %lor.lhs.false
  ]

if.then13:                                        ; preds = %for.cond
  %22 = ptrtoint ptr %call7.i to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %call7.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 -281474976710656, i64 %23)
  %cmp15 = icmp eq i64 %23, -281474976710656
  br i1 %cmp15, label %if.then13.for.end.thread70_crit_edge, label %if.end18

if.then13.for.end.thread70_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread70

if.end18:                                         ; preds = %if.then13
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %arrayidx3, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %23, i64 %25)
  %cmp21 = icmp eq i64 %23, %25
  br i1 %cmp21, label %if.end18.for.end.thread70_crit_edge, label %if.end30.thread

if.end18.for.end.thread70_crit_edge:              ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread70

if.end30.thread:                                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %unit, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str) #9
  br label %for.end.thread

lor.lhs.false:                                    ; preds = %for.cond
  %cmp33.not = icmp eq i32 %retries.0, 0
  br i1 %cmp33.not, label %if.end36, label %lor.lhs.false.for.end.thread_crit_edge

lor.lhs.false.for.end.thread_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.thread

if.end36:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 20) #5
  br label %for.cond

for.end.thread:                                   ; preds = %lor.lhs.false.for.end.thread_crit_edge, %if.end30.thread
  %err.1.ph = phi i32 [ -16, %if.end30.thread ], [ -11, %lor.lhs.false.for.end.thread_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %if.then39

for.end.thread70:                                 ; preds = %if.end18.for.end.thread70_crit_edge, %if.then13.for.end.thread70_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  br label %cleanup

for.end:                                          ; preds = %for.cond
  tail call void @kfree(ptr noundef nonnull %call7.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp37 = icmp slt i32 %call11, 0
  br i1 %cmp37, label %for.end.if.then39_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.end.if.then39_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then39

if.then39:                                        ; preds = %for.end.if.then39_crit_edge, %for.end.thread
  %err.168 = phi i32 [ %err.1.ph, %for.end.thread ], [ %call11, %for.end.if.then39_crit_edge ]
  %28 = ptrtoint ptr %owner_generation to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -1, ptr %owner_generation, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %for.end.cleanup_crit_edge, %for.end.thread70, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %err.168, %if.then39 ], [ %call11, %for.end.cleanup_crit_edge ], [ 0, %for.end.thread70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_transaction_init(ptr noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %version.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %notification_handler = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %version.i) #5
  %0 = ptrtoint ptr %version.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %version.i, align 4, !annotation !24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 40) #8
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %get_subaddrs.exit.thread, label %if.end.i

get_subaddrs.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #5
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %unit.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call1.i = tail call i32 @snd_fw_transaction(ptr noundef %3, i32 noundef 5, i64 noundef 281474439839744, ptr noundef nonnull %call7.i.i.i, i32 noundef 40, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp slt i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.get_subaddrs.exit.thread28_crit_edge, label %for.body.preheader.i

if.end.i.get_subaddrs.exit.thread28_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.body.preheader.i:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call7.i.i.i, align 8
  %6 = add i32 %5, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262134, i32 %6)
  %7 = icmp ult i32 %6, -262134
  br i1 %7, label %for.body.preheader.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.i

for.body.preheader.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.i:                                       ; preds = %for.body.preheader.i
  %arrayidx.1.i = getelementptr i32, ptr %call7.i.i.i, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i, align 4
  %10 = add i32 %9, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262120, i32 %10)
  %11 = icmp ult i32 %10, -262120
  br i1 %11, label %for.cond.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.1.i

for.cond.i.get_subaddrs.exit.thread28_crit_edge:  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.1.i:                                     ; preds = %for.cond.i
  %arrayidx.2.i = getelementptr i32, ptr %call7.i.i.i, i32 2
  %12 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.2.i, align 8
  %14 = add i32 %13, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262134, i32 %14)
  %15 = icmp ult i32 %14, -262134
  br i1 %15, label %for.cond.1.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.2.i

for.cond.1.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.1.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.2.i:                                     ; preds = %for.cond.1.i
  %arrayidx.3.i = getelementptr i32, ptr %call7.i.i.i, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i, align 4
  %18 = add i32 %17, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262138, i32 %18)
  %19 = icmp ult i32 %18, -262138
  br i1 %19, label %for.cond.2.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.3.i

for.cond.2.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.3.i:                                     ; preds = %for.cond.2.i
  %arrayidx.4.i = getelementptr i32, ptr %call7.i.i.i, i32 4
  %20 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.4.i, align 8
  %22 = add i32 %21, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262134, i32 %22)
  %23 = icmp ult i32 %22, -262134
  br i1 %23, label %for.cond.3.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.4.i

for.cond.3.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.4.i:                                     ; preds = %for.cond.3.i
  %arrayidx.5.i = getelementptr i32, ptr %call7.i.i.i, i32 5
  %24 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.5.i, align 4
  %26 = add i32 %25, -262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 -262138, i32 %26)
  %27 = icmp ult i32 %26, -262138
  br i1 %27, label %for.cond.4.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.5.i

for.cond.4.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.5.i:                                     ; preds = %for.cond.4.i
  %arrayidx.6.i = getelementptr i32, ptr %call7.i.i.i, i32 6
  %28 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.6.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %29)
  %cmp8.6.i = icmp ugt i32 %29, 262143
  br i1 %cmp8.6.i, label %for.cond.5.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.6.i

for.cond.5.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.6.i:                                     ; preds = %for.cond.5.i
  %arrayidx.7.i = getelementptr i32, ptr %call7.i.i.i, i32 7
  %30 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %31)
  %cmp8.7.i = icmp ugt i32 %31, 262143
  br i1 %cmp8.7.i, label %for.cond.6.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.7.i

for.cond.6.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.7.i:                                     ; preds = %for.cond.6.i
  %arrayidx.8.i = getelementptr i32, ptr %call7.i.i.i, i32 8
  %32 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.8.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %33)
  %cmp8.8.i = icmp ugt i32 %33, 262143
  br i1 %cmp8.8.i, label %for.cond.7.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.8.i

for.cond.7.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.8.i:                                     ; preds = %for.cond.7.i
  %arrayidx.9.i = getelementptr i32, ptr %call7.i.i.i, i32 9
  %34 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 262143, i32 %35)
  %cmp8.9.i = icmp ugt i32 %35, 262143
  br i1 %cmp8.9.i, label %for.cond.8.i.get_subaddrs.exit.thread28_crit_edge, label %for.cond.9.i

for.cond.8.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

for.cond.9.i:                                     ; preds = %for.cond.8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %9)
  %cmp12.i = icmp ugt i32 %9, 24
  br i1 %cmp12.i, label %if.then13.i, label %for.cond.9.i.if.end27.i_crit_edge

for.cond.9.i.if.end27.i_crit_edge:                ; preds = %for.cond.9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then13.i:                                      ; preds = %for.cond.9.i
  %36 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %unit.i, align 4
  %mul.i = shl nuw nsw i32 %5, 2
  %conv.i = zext i32 %mul.i to i64
  %add16.i = add nuw nsw i64 %conv.i, 281474439839840
  %call17.i = call i32 @snd_fw_transaction(ptr noundef %37, i32 noundef 4, i64 noundef %add16.i, ptr noundef nonnull %version.i, i32 noundef 4, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %if.then13.i.get_subaddrs.exit.thread28_crit_edge, label %if.end21.i

if.then13.i.get_subaddrs.exit.thread28_crit_edge: ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_subaddrs.exit.thread28

if.end21.i:                                       ; preds = %if.then13.i
  %38 = ptrtoint ptr %version.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %version.i, align 4
  %and.i = and i32 %39, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %and.i)
  %cmp22.not.i = icmp eq i32 %and.i, 16777216
  br i1 %cmp22.not.i, label %if.end26.i, label %do.end.i

do.end.i:                                         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %unit.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %41, ptr noundef nonnull @.str.5, i32 noundef %39) #9
  br label %get_subaddrs.exit.thread28

if.end26.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  %clock_caps.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 9
  %42 = ptrtoint ptr %clock_caps.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %clock_caps.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.end26.i, %for.cond.9.i.if.end27.i_crit_edge
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i.i.i, align 8
  %mul29.i = shl i32 %44, 2
  %global_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 4
  %45 = ptrtoint ptr %global_offset.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul29.i, ptr %global_offset.i, align 8
  %46 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx.2.i, align 8
  %mul31.i = shl i32 %47, 2
  %tx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 6
  %48 = ptrtoint ptr %tx_offset.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %mul31.i, ptr %tx_offset.i, align 8
  %49 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.4.i, align 8
  %mul33.i = shl i32 %50, 2
  %rx_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 5
  %51 = ptrtoint ptr %rx_offset.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %mul33.i, ptr %rx_offset.i, align 4
  %52 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i, label %if.end27.i.if.end38.i_crit_edge, label %if.then35.i

if.end27.i.if.end38.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38.i

if.then35.i:                                      ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.6.i, align 8
  %mul37.i = shl i32 %55, 2
  %sync_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 7
  %56 = ptrtoint ptr %sync_offset.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %mul37.i, ptr %sync_offset.i, align 4
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then35.i, %if.end27.i.if.end38.i_crit_edge
  %57 = ptrtoint ptr %arrayidx.9.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool40.not.i = icmp eq i32 %58, 0
  br i1 %tobool40.not.i, label %if.end38.i.if.end_crit_edge, label %if.then41.i

if.end38.i.if.end_crit_edge:                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then41.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %arrayidx.8.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx.8.i, align 8
  %mul43.i = shl i32 %60, 2
  %rsrv_offset.i = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 8
  %61 = ptrtoint ptr %rsrv_offset.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %mul43.i, ptr %rsrv_offset.i, align 8
  br label %if.end

get_subaddrs.exit.thread28:                       ; preds = %do.end.i, %if.then13.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.8.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.7.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.6.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.5.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.4.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.3.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.2.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.1.i.get_subaddrs.exit.thread28_crit_edge, %for.cond.i.get_subaddrs.exit.thread28_crit_edge, %for.body.preheader.i.get_subaddrs.exit.thread28_crit_edge, %if.end.i.get_subaddrs.exit.thread28_crit_edge
  %err.1.i.ph = phi i32 [ -19, %for.body.preheader.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.1.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.2.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.3.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.4.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.5.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.6.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.7.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %for.cond.8.i.get_subaddrs.exit.thread28_crit_edge ], [ -19, %do.end.i ], [ %call17.i, %if.then13.i.get_subaddrs.exit.thread28_crit_edge ], [ %call1.i, %if.end.i.get_subaddrs.exit.thread28_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #5
  br label %cleanup

if.end:                                           ; preds = %if.then41.i, %if.end38.i.if.end_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %version.i) #5
  %length = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14, i32 1
  %62 = ptrtoint ptr %length to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 4, ptr %length, align 8
  %address_callback = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14, i32 2
  %63 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @dice_notification, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 14, i32 3
  %64 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %dice, ptr %callback_data, align 4
  %call1 = call i32 @fw_core_add_address_handler(ptr noundef %notification_handler, ptr noundef nonnull @fw_high_memory_region) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call fastcc i32 @register_notification_address(ptr noundef %dice, i1 noundef zeroext true)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  call void @fw_core_remove_address_handler(ptr noundef %notification_handler) #5
  %66 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %callback_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %get_subaddrs.exit.thread28, %get_subaddrs.exit.thread
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ], [ -12, %get_subaddrs.exit.thread ], [ %err.1.i.ph, %get_subaddrs.exit.thread28 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dice_notification(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr nocapture noundef readonly %data, i32 noundef %length, ptr noundef %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tcode)
  %cmp.not = icmp eq i32 %tcode, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 6) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i64 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %cmp1.not = icmp eq i64 %and, 0
  br i1 %cmp1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 7) #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %lock = getelementptr inbounds %struct.snd_dice, ptr %callback_data, i32 0, i32 2
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %notification_bits = getelementptr inbounds %struct.snd_dice, ptr %callback_data, i32 0, i32 16
  %2 = ptrtoint ptr %notification_bits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %notification_bits, align 4
  %or = or i32 %3, %1
  store i32 %or, ptr %notification_bits, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #5
  tail call void @fw_send_response(ptr noundef %card, ptr noundef %request, i32 noundef 0) #5
  %and11 = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool.not = icmp eq i32 %and11, 0
  br i1 %tobool.not, label %if.end3.if.end13_crit_edge, label %if.then12

if.end3.if.end13_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then12:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %clock_accepted = getelementptr inbounds %struct.snd_dice, ptr %callback_data, i32 0, i32 25
  tail call void @complete(ptr noundef %clock_accepted) #5
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end3.if.end13_crit_edge
  %hwdep_wait = getelementptr inbounds %struct.snd_dice, ptr %callback_data, i32 0, i32 19
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then2, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !13, !14}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-transaction.c", i32 199, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @register_notification_address._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @register_notification_address._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = distinct !{null, !9, !"min_values", i1 false, i1 false}
!9 = !{!"../sound/firewire/dice/dice-transaction.c", i32 266, i32 19}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/firewire/dice/dice-transaction.c", i32 317, i32 4}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @get_subaddrs._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @get_subaddrs._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!24 = !{!"auto-init"}
!25 = !{i64 2154568423}
