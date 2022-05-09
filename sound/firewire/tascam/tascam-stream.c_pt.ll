; ModuleID = '/llk/IR_all_yes/sound/firewire/tascam/tascam-stream.c_pt.bc'
source_filename = "../sound/firewire/tascam/tascam-stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_tscm = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.fw_iso_resources, %struct.fw_iso_resources, %struct.amdtp_stream, %struct.amdtp_stream, i32, i32, i8, %struct.wait_queue_head, %struct.fw_address_handler, [4 x ptr], [4 x %struct.snd_fw_async_midi_port], [64 x i32], ptr, [16 x %struct.snd_firewire_tascam_change], i32, i32, %struct.amdtp_domain, i8 }
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
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.snd_fw_async_midi_port = type { ptr, %struct.work_struct, i8, i64, i8, %struct.fw_transaction, [4 x i8], i8, i8, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.snd_firewire_tascam_change = type { i32, i32, i32 }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.snd_tscm_spec = type { ptr, i8, i8, i32, i32, i32, i32 }
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
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }

@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"sound/firewire/tascam/tascam-stream.c\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"sound/firewire/tascam/../amdtp-stream.h\00", [56 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 128]
@___asan_gen_.6 = private constant [41 x i8] c"../sound/firewire/tascam/tascam-stream.c\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.6, i32 553, i32 6 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [43 x i8] c"../sound/firewire/tascam/../amdtp-stream.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 348, i32 7 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_get_rate(ptr nocapture noundef readonly %tscm, ptr nocapture noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !13
  %call = call fastcc i32 @get_clock(ptr noundef %tscm, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %shr = lshr i32 %2, 24
  %and1 = and i32 %shr, 15
  %3 = zext i32 %and1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and1, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.if.end9_crit_edge
    i32 2, label %if.then6
  ]

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end.if.end9_crit_edge
  %storemerge = phi i32 [ 48000, %if.then6 ], [ 44100, %if.end.if.end9_crit_edge ]
  %4 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %rate, align 4
  %5 = trunc i32 %shr to i8
  %trunc = and i8 %5, -16
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %trunc, label %if.end9.cleanup_crit_edge [
    i8 -128, label %if.then12
    i8 0, label %if.end9.if.end18_crit_edge
  ]

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %mul = shl nuw nsw i32 %storemerge, 1
  %7 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %mul, ptr %rate, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end9.if.end18_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end18 ], [ %call, %entry.cleanup_crit_edge ], [ -11, %if.end.cleanup_crit_edge ], [ -11, %if.end9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_clock(ptr nocapture noundef readonly %tscm, ptr nocapture noundef writeonly %data) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !13
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %1 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %unit, align 4
  %call = call i32 @snd_fw_transaction(ptr noundef %2, i32 noundef 4, i64 noundef 281470681743912, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %tobool.not = icmp ult i32 %4, 65536
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @msleep(i32 noundef 50) #3
  %6 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit, align 4
  %call.1 = call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 4, i64 noundef 281470681743912, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.1)
  %cmp1.1 = icmp slt i32 %call.1, 0
  br i1 %cmp1.1, label %if.end3.cleanup_crit_edge, label %if.end.1

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.1:                                         ; preds = %if.end3
  %8 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg, align 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %9)
  %tobool.not.1 = icmp ult i32 %9, 65536
  br i1 %tobool.not.1, label %if.end3.1, label %if.end.1.cleanup_crit_edge

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.1:                                        ; preds = %if.end.1
  call void @msleep(i32 noundef 50) #3
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unit, align 4
  %call.2 = call i32 @snd_fw_transaction(ptr noundef %12, i32 noundef 4, i64 noundef 281470681743912, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.2)
  %cmp1.2 = icmp slt i32 %call.2, 0
  br i1 %cmp1.2, label %if.end3.1.cleanup_crit_edge, label %if.end.2

if.end3.1.cleanup_crit_edge:                      ; preds = %if.end3.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.2:                                         ; preds = %if.end3.1
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %14)
  %tobool.not.2 = icmp ult i32 %14, 65536
  br i1 %tobool.not.2, label %if.end3.2, label %if.end.2.cleanup_crit_edge

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.2:                                        ; preds = %if.end.2
  call void @msleep(i32 noundef 50) #3
  %16 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unit, align 4
  %call.3 = call i32 @snd_fw_transaction(ptr noundef %17, i32 noundef 4, i64 noundef 281470681743912, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.3)
  %cmp1.3 = icmp slt i32 %call.3, 0
  br i1 %cmp1.3, label %if.end3.2.cleanup_crit_edge, label %if.end.3

if.end3.2.cleanup_crit_edge:                      ; preds = %if.end3.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.3:                                         ; preds = %if.end3.2
  %18 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %19)
  %tobool.not.3 = icmp ult i32 %19, 65536
  br i1 %tobool.not.3, label %if.end3.3, label %if.end.3.cleanup_crit_edge

if.end.3.cleanup_crit_edge:                       ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.3:                                        ; preds = %if.end.3
  call void @msleep(i32 noundef 50) #3
  %21 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit, align 4
  %call.4 = call i32 @snd_fw_transaction(ptr noundef %22, i32 noundef 4, i64 noundef 281470681743912, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.4)
  %cmp1.4 = icmp slt i32 %call.4, 0
  br i1 %cmp1.4, label %if.end3.3.cleanup_crit_edge, label %if.end.4

if.end3.3.cleanup_crit_edge:                      ; preds = %if.end3.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.4:                                         ; preds = %if.end3.3
  %23 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg, align 4
  %25 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %24)
  %tobool.not.4 = icmp ult i32 %24, 65536
  br i1 %tobool.not.4, label %if.end3.4, label %if.end.4.cleanup_crit_edge

if.end.4.cleanup_crit_edge:                       ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3.4:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #5
  call void @msleep(i32 noundef 50) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end3.4, %if.end.4.cleanup_crit_edge, %if.end3.3.cleanup_crit_edge, %if.end.3.cleanup_crit_edge, %if.end3.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %if.end3.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.end3.4 ], [ -11, %if.end.4.cleanup_crit_edge ], [ 0, %if.end.3.cleanup_crit_edge ], [ 0, %if.end.2.cleanup_crit_edge ], [ 0, %if.end.1.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ %call, %entry.cleanup_crit_edge ], [ %call.1, %if.end3.cleanup_crit_edge ], [ %call.2, %if.end3.1.cleanup_crit_edge ], [ %call.3, %if.end3.2.cleanup_crit_edge ], [ %call.4, %if.end3.3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_get_clock(ptr nocapture noundef readonly %tscm, ptr nocapture noundef writeonly %clock) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #3
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data, align 4, !annotation !13
  %call = call fastcc i32 @get_clock(ptr noundef %tscm, ptr noundef nonnull %data)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data, align 4
  %and = lshr i32 %2, 16
  %shr = and i32 %and, 255
  %sub = add nsw i32 %shr, -1
  %3 = ptrtoint ptr %clock to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub, ptr %clock, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub)
  %cmp2 = icmp ugt i32 %sub, 3
  %spec.select = select i1 %cmp2, i32 -5, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_init_duplex(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7
  %tx_resources.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5
  %spec.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 4
  %0 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec.i, align 8
  %pcm_capture_analog_channels.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pcm_capture_analog_channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %pcm_channels.0.i = load i32, ptr %pcm_capture_analog_channels.i, align 4
  %has_adat.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %has_adat.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %has_adat.i, align 4, !range !14
  %has_spdif.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %has_spdif.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %has_spdif.i, align 1, !range !14
  %unit.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %7 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @fw_iso_resources_init(ptr noundef %tx_resources.i, ptr noundef %8) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp10.i = icmp slt i32 %call.i, 0
  br i1 %cmp10.i, label %entry.cleanup_crit_edge, label %if.end12.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not.i = icmp eq i8 %6, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  %add.i = add i32 %pcm_channels.0.i, 8
  %spec.select.i = select i1 %tobool.not.i, i32 %pcm_channels.0.i, i32 %add.i
  %add8.i = add i32 %spec.select.i, 2
  %pcm_channels.2.i = select i1 %tobool6.not.i, i32 %spec.select.i, i32 %add8.i
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %call14.i = tail call i32 @amdtp_tscm_init(ptr noundef %tx_stream, ptr noundef %10, i32 noundef 1, i32 noundef %pcm_channels.2.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.then16.i, label %if.end

if.then16.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fw_iso_resources_free(ptr noundef %tx_resources.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.end12.i
  %rx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8
  %rx_resources.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6
  %11 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %spec.i, align 8
  %pcm_playback_analog_channels.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %pcm_playback_analog_channels.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %pcm_channels.0.i28 = load i32, ptr %pcm_playback_analog_channels.i, align 4
  %has_adat.i30 = getelementptr inbounds %struct.snd_tscm_spec, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %has_adat.i30 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_adat.i30, align 4, !range !14
  %has_spdif.i31 = getelementptr inbounds %struct.snd_tscm_spec, ptr %12, i32 0, i32 2
  %16 = ptrtoint ptr %has_spdif.i31 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %has_spdif.i31, align 1, !range !14
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit.i, align 4
  %call.i33 = tail call i32 @fw_iso_resources_init(ptr noundef %rx_resources.i, ptr noundef %19) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp10.i34 = icmp slt i32 %call.i33, 0
  br i1 %cmp10.i34, label %if.end.if.then3_crit_edge, label %if.end12.i43

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.end12.i43:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool6.not.i35 = icmp eq i8 %17, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i36 = icmp eq i8 %15, 0
  %add.i37 = add i32 %pcm_channels.0.i28, 8
  %spec.select.i38 = select i1 %tobool.not.i36, i32 %pcm_channels.0.i28, i32 %add.i37
  %add8.i39 = add i32 %spec.select.i38, 2
  %pcm_channels.2.i40 = select i1 %tobool6.not.i35, i32 %spec.select.i38, i32 %add8.i39
  %20 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %unit.i, align 4
  %call14.i41 = tail call i32 @amdtp_tscm_init(ptr noundef %rx_stream, ptr noundef %21, i32 noundef 0, i32 noundef %pcm_channels.2.i40) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i41)
  %cmp15.i42 = icmp slt i32 %call14.i41, 0
  br i1 %cmp15.i42, label %if.then16.i44, label %if.end5

if.then16.i44:                                    ; preds = %if.end12.i43
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @fw_iso_resources_free(ptr noundef %rx_resources.i) #3
  br label %if.then3

if.then3:                                         ; preds = %if.then16.i44, %if.end.if.then3_crit_edge
  %retval.0.i45.ph = phi i32 [ %call14.i41, %if.then16.i44 ], [ %call.i33, %if.end.if.then3_crit_edge ]
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #3
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i) #3
  br label %cleanup

if.end5:                                          ; preds = %if.end12.i43
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #3
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i) #3
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #3
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then3, %if.then16.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i45.ph, %if.then3 ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ], [ %call14.i, %if.then16.i ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_stream_update_duplex(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  %tx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7
  tail call void @amdtp_stream_pcm_abort(ptr noundef %tx_stream) #3
  %rx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8
  tail call void @amdtp_stream_pcm_abort(ptr noundef %rx_stream) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_stream_destroy_duplex(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #3
  %rx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #3
  %rx_resources.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6
  tail call void @fw_iso_resources_destroy(ptr noundef %rx_resources.i) #3
  %tx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #3
  %tx_resources.i7 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5
  tail call void @fw_iso_resources_destroy(ptr noundef %tx_resources.i7) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_reserve_duplex(ptr noundef %tscm, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %data.i56 = alloca i32, align 4
  %reg.i57 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #3
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %data.i, align 4, !annotation !13
  %call.i = call fastcc i32 @get_clock(ptr noundef %tscm, ptr noundef nonnull %data.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.snd_tscm_stream_get_rate.exit.thread_crit_edge, label %if.end.i

entry.snd_tscm_stream_get_rate.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_tscm_stream_get_rate.exit.thread

if.end.i:                                         ; preds = %entry
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %data.i, align 4
  %shr.i = lshr i32 %2, 24
  %and1.i = and i32 %shr.i, 15
  %3 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and1.i, label %if.end.i.snd_tscm_stream_get_rate.exit.thread_crit_edge [
    i32 1, label %if.end.i.if.end9.i_crit_edge
    i32 2, label %if.then6.i
  ]

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.end.i.snd_tscm_stream_get_rate.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_tscm_stream_get_rate.exit.thread

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %storemerge.i = phi i32 [ 48000, %if.then6.i ], [ 44100, %if.end.i.if.end9.i_crit_edge ]
  %4 = trunc i32 %shr.i to i8
  %trunc.i = and i8 %4, -16
  %5 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %trunc.i, label %if.end9.i.snd_tscm_stream_get_rate.exit.thread_crit_edge [
    i8 -128, label %if.then12.i
    i8 0, label %if.end9.i.if.end_crit_edge
  ]

if.end9.i.if.end_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.end9.i.snd_tscm_stream_get_rate.exit.thread_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %snd_tscm_stream_get_rate.exit.thread

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  %mul.i = shl nuw nsw i32 %storemerge.i, 1
  br label %if.end

snd_tscm_stream_get_rate.exit.thread:             ; preds = %if.end9.i.snd_tscm_stream_get_rate.exit.thread_crit_edge, %if.end.i.snd_tscm_stream_get_rate.exit.thread_crit_edge, %entry.snd_tscm_stream_get_rate.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -11, %if.end9.i.snd_tscm_stream_get_rate.exit.thread_crit_edge ], [ -11, %if.end.i.snd_tscm_stream_get_rate.exit.thread_crit_edge ], [ %call.i, %entry.snd_tscm_stream_get_rate.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  br label %cleanup

if.end:                                           ; preds = %if.then12.i, %if.end9.i.if.end_crit_edge
  %curr_rate.0 = phi i32 [ %storemerge.i, %if.end9.i.if.end_crit_edge ], [ %mul.i, %if.then12.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #3
  %substreams_counter = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 9
  %6 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp1 = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_rate.0, i32 %rate)
  %cmp2.not = icmp eq i32 %curr_rate.0, %rate
  %or.cond = select i1 %cmp1, i1 %cmp2.not, i1 false
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reg.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %call.i55 = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef 281470681743880, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg.i, align 4
  %12 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef 281470681743888, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %reg.i, align 4
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 0, i64 noundef 281470681743872, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.i, align 4
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit.i, align 4
  %call6.i = call i32 @snd_fw_transaction(ptr noundef %19, i32 noundef 0, i64 noundef 281470681743876, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reg.i, align 4
  %21 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit.i, align 4
  %call8.i = call i32 @snd_fw_transaction(ptr noundef %22, i32 noundef 0, i64 noundef 281470681743884, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  %tx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #3
  %rx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i56) #3
  %23 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %data.i56, align 4, !annotation !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i57) #3
  %call.i58 = call fastcc i32 @get_clock(ptr noundef %tscm, ptr noundef nonnull %data.i56) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp slt i32 %call.i58, 0
  br i1 %cmp.i59, label %if.then3.set_clock.exit.thread_crit_edge, label %if.end.i60

if.then3.set_clock.exit.thread_crit_edge:         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock.exit.thread

if.end.i60:                                       ; preds = %if.then3
  %24 = ptrtoint ptr %data.i56 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data.i56, align 4
  %and.i = and i32 %25, 65535
  store i32 %and.i, ptr %data.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp1.not.i = icmp eq i32 %rate, 0
  br i1 %cmp1.not.i, label %if.end.i60.if.end27.i_crit_edge, label %if.then2.i

if.end.i60.if.end27.i_crit_edge:                  ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i

if.then2.i:                                       ; preds = %if.end.i60
  %and3.i = and i32 %25, 255
  %rem.i = urem i32 %rate, 44100
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %cmp4.i = icmp eq i32 %rem.i, 0
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i

if.then5.i:                                       ; preds = %if.then2.i
  %or.i = or i32 %and3.i, 256
  %26 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %data.i56, align 4
  %rate.off1.i = add i32 %rate, -88200
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %rate.off1.i)
  %27 = icmp ult i32 %rate.off1.i, 44100
  br i1 %27, label %if.then7.i, label %if.then5.i.if.end27.i_crit_edge

if.then5.i.if.end27.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i

if.then7.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #5
  %or8.i = or i32 %and3.i, 33024
  %28 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %or8.i, ptr %data.i56, align 4
  br label %if.end27.i

if.else.i:                                        ; preds = %if.then2.i
  %rem10.i = urem i32 %rate, 48000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem10.i)
  %cmp11.i = icmp eq i32 %rem10.i, 0
  br i1 %cmp11.i, label %if.then12.i61, label %if.else.i.set_clock.exit.thread_crit_edge

if.else.i.set_clock.exit.thread_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock.exit.thread

if.then12.i61:                                    ; preds = %if.else.i
  %or13.i = or i32 %and3.i, 512
  %29 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or13.i, ptr %data.i56, align 4
  %rate.off.i = add i32 %rate, -96000
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate.off.i)
  %30 = icmp ult i32 %rate.off.i, 48000
  br i1 %30, label %if.then16.i, label %if.then12.i61.if.end27.i_crit_edge

if.then12.i61.if.end27.i_crit_edge:               ; preds = %if.then12.i61
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end27.i

if.then16.i:                                      ; preds = %if.then12.i61
  call void @__sanitizer_cov_trace_pc() #5
  %or17.i = or i32 %and3.i, 33280
  %31 = ptrtoint ptr %data.i56 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or17.i, ptr %data.i56, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then16.i, %if.then12.i61.if.end27.i_crit_edge, %if.then7.i, %if.then5.i.if.end27.i_crit_edge, %if.end.i60.if.end27.i_crit_edge
  %32 = ptrtoint ptr %data.i56 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data.i56, align 4
  %34 = ptrtoint ptr %reg.i57 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %reg.i57, align 4
  %35 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unit.i, align 4
  %call28.i = call i32 @snd_fw_transaction(ptr noundef %36, i32 noundef 0, i64 noundef 281470681743912, ptr noundef nonnull %reg.i57, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp slt i32 %call28.i, 0
  br i1 %cmp29.i, label %if.end27.i.set_clock.exit.thread_crit_edge, label %set_clock.exit

if.end27.i.set_clock.exit.thread_crit_edge:       ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock.exit.thread

set_clock.exit.thread:                            ; preds = %if.end27.i.set_clock.exit.thread_crit_edge, %if.else.i.set_clock.exit.thread_crit_edge, %if.then3.set_clock.exit.thread_crit_edge
  %retval.0.i63.ph = phi i32 [ %call28.i, %if.end27.i.set_clock.exit.thread_crit_edge ], [ -11, %if.else.i.set_clock.exit.thread_crit_edge ], [ %call.i58, %if.then3.set_clock.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i57) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i56) #3
  br label %cleanup

set_clock.exit:                                   ; preds = %if.end27.i
  %and32.i = and i32 %33, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool.not.i = icmp eq i32 %and32.i, 0
  %..i = select i1 %tobool.not.i, i32 13, i32 26
  %37 = ptrtoint ptr %reg.i57 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %..i, ptr %reg.i57, align 4
  %38 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %unit.i, align 4
  %call37.i = call i32 @snd_fw_transaction(ptr noundef %39, i32 noundef 0, i64 noundef 281470681743900, ptr noundef nonnull %reg.i57, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i57) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i56) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp5 = icmp slt i32 %call37.i, 0
  br i1 %cmp5, label %set_clock.exit.cleanup_crit_edge, label %if.end7

set_clock.exit.cleanup_crit_edge:                 ; preds = %set_clock.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %set_clock.exit
  %tx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7
  %call.i64 = call i32 @amdtp_tscm_set_parameters(ptr noundef %tx_stream, i32 noundef %rate) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %cmp1.i = icmp slt i32 %call.i64, 0
  br i1 %cmp1.i, label %if.end7.cleanup_crit_edge, label %keep_resources.exit

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

keep_resources.exit:                              ; preds = %if.end7
  %call4.i65 = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #3
  %40 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %unit.i, align 4
  %parent.i.i = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %parent.i.i, align 8
  %max_speed.i = getelementptr i8, ptr %43, i32 -8
  %44 = ptrtoint ptr %max_speed.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %max_speed.i, align 8
  %call6.i67 = call i32 @fw_iso_resources_allocate(ptr noundef %tx_resources, i32 noundef %call4.i65, i32 noundef %45) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i67)
  %cmp9 = icmp slt i32 %call6.i67, 0
  br i1 %cmp9, label %keep_resources.exit.cleanup_crit_edge, label %if.end11

keep_resources.exit.cleanup_crit_edge:            ; preds = %keep_resources.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end11:                                         ; preds = %keep_resources.exit
  %rx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8
  %call.i69 = call i32 @amdtp_tscm_set_parameters(ptr noundef %rx_stream, i32 noundef %rate) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp1.i70 = icmp slt i32 %call.i69, 0
  br i1 %cmp1.i70, label %if.end11.if.then14_crit_edge, label %keep_resources.exit81

if.end11.if.then14_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

keep_resources.exit81:                            ; preds = %if.end11
  %call4.i74 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #3
  %46 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %unit.i, align 4
  %parent.i.i76 = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %parent.i.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %parent.i.i76, align 8
  %max_speed.i77 = getelementptr i8, ptr %49, i32 -8
  %50 = ptrtoint ptr %max_speed.i77 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %max_speed.i77, align 8
  %call6.i78 = call i32 @fw_iso_resources_allocate(ptr noundef %rx_resources, i32 noundef %call4.i74, i32 noundef %51) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i78)
  %cmp13 = icmp slt i32 %call6.i78, 0
  br i1 %cmp13, label %keep_resources.exit81.if.then14_crit_edge, label %if.end16

keep_resources.exit81.if.then14_crit_edge:        ; preds = %keep_resources.exit81
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14

if.then14:                                        ; preds = %keep_resources.exit81.if.then14_crit_edge, %if.end11.if.then14_crit_edge
  %retval.0.i8092 = phi i32 [ %call6.i78, %keep_resources.exit81.if.then14_crit_edge ], [ %call.i69, %if.end11.if.then14_crit_edge ]
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #3
  br label %cleanup

if.end16:                                         ; preds = %keep_resources.exit81
  call void @__sanitizer_cov_trace_pc() #5
  %events_per_period1.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21, i32 1
  %52 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21, i32 2
  %53 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %curr_rate.0, i32 %rate)
  %cmp24 = icmp ne i32 %curr_rate.0, %rate
  %need_long_tx_init_skip = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 22
  %frombool = zext i1 %cmp24 to i8
  %54 = ptrtoint ptr %need_long_tx_init_skip to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %frombool, ptr %need_long_tx_init_skip, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then14, %keep_resources.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %set_clock.exit.cleanup_crit_edge, %set_clock.exit.thread, %if.end.cleanup_crit_edge, %snd_tscm_stream_get_rate.exit.thread
  %retval.0 = phi i32 [ %retval.0.i8092, %if.then14 ], [ %call37.i, %set_clock.exit.cleanup_crit_edge ], [ %call6.i67, %keep_resources.exit.cleanup_crit_edge ], [ 0, %if.end16 ], [ %retval.0.i.ph, %snd_tscm_stream_get_rate.exit.thread ], [ %retval.0.i63.ph, %set_clock.exit.thread ], [ %call.i64, %if.end7.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_start_duplex(ptr noundef %tscm, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg.i112 = alloca i32, align 4
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %reg.i104 = alloca i32, align 4
  %reg.i.i = alloca i32, align 4
  %reg.i100 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6
  %generation1 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6, i32 6
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 4
  %substreams_counter = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 9
  %2 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %entry.cleanup61_crit_edge, label %if.end

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8
  %packet_index.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8, i32 7
  %4 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp slt i32 %5, 0
  br i1 %cmp.i, label %if.end.if.then3_crit_edge, label %lor.lhs.false

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i96 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7, i32 7
  %6 = ptrtoint ptr %packet_index.i96 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %packet_index.i96, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i97 = icmp slt i32 %7, 0
  br i1 %cmp.i97, label %lor.lhs.false.if.then3_crit_edge, label %lor.lhs.false.if.end4_crit_edge

lor.lhs.false.if.end4_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.end.if.then3_crit_edge
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reg.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef 281470681743880, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg.i, align 4
  %12 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef 281470681743888, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %reg.i, align 4
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 0, i64 noundef 281470681743872, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %17 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %reg.i, align 4
  %18 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unit.i, align 4
  %call6.i = call i32 @snd_fw_transaction(ptr noundef %19, i32 noundef 0, i64 noundef 281470681743876, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %20 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %reg.i, align 4
  %21 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unit.i, align 4
  %call8.i = call i32 @snd_fw_transaction(ptr noundef %22, i32 noundef 0, i64 noundef 281470681743884, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %lor.lhs.false.if.end4_crit_edge
  %unit = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %23 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %unit, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 8
  %card = getelementptr i8, ptr %26, i32 -4
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %generation6 = getelementptr inbounds %struct.fw_card, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %generation6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %generation6, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %30)
  %cmp7.not = icmp eq i32 %1, %30
  br i1 %cmp7.not, label %if.end4.if.end18_crit_edge, label %if.then8

if.end4.if.end18_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.then8:                                         ; preds = %if.end4
  %tx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5
  %call9 = call i32 @fw_iso_resources_update(ptr noundef %tx_resources) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then8.error_crit_edge, label %if.end12

if.then8.error_crit_edge:                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end12:                                         ; preds = %if.then8
  %call14 = call i32 @fw_iso_resources_update(ptr noundef %rx_resources) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.error_crit_edge, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end18

if.end12.error_crit_edge:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end18:                                         ; preds = %if.end12.if.end18_crit_edge, %if.end4.if.end18_crit_edge
  %context.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then21, label %if.end18.cleanup61_crit_edge

if.end18.cleanup61_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

if.then21:                                        ; preds = %if.end18
  %33 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %unit, align 4
  %parent.i98 = getelementptr inbounds %struct.device, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %parent.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent.i98, align 8
  %max_speed = getelementptr i8, ptr %36, i32 -8
  %37 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %max_speed, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i100) #3
  %39 = ptrtoint ptr %reg.i100 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 2097152, ptr %reg.i100, align 4
  %call.i102 = call i32 @snd_fw_transaction(ptr noundef %34, i32 noundef 0, i64 noundef 281470681743916, ptr noundef nonnull %reg.i100, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %cmp.i103 = icmp slt i32 %call.i102, 0
  br i1 %cmp.i103, label %set_stream_formats.exit.thread, label %if.end.i

set_stream_formats.exit.thread:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i100) #3
  br label %error

if.end.i:                                         ; preds = %if.then21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #3
  %spec.i.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 4
  %40 = ptrtoint ptr %spec.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %spec.i.i, align 8
  %pcm_capture_analog_channels.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %pcm_capture_analog_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pcm_capture_analog_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %cmp59.not.i.i = icmp eq i32 %43, 0
  br i1 %cmp59.not.i.i, label %if.end.i.for.end.i.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.for.end.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %i.061.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %data.060.i.i = phi i32 [ %or.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %shl.i.i = shl nuw i32 1, %i.061.i.i
  %or.i.i = or i32 %shl.i.i, %data.060.i.i
  %inc.i.i = add nuw i32 %i.061.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %43
  br i1 %exitcond.not.i.i, label %for.body.i.i.for.end.i.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i.i

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.i.i.for.end.i.i_crit_edge, %if.end.i.for.end.i.i_crit_edge
  %data.0.lcssa.i.i = phi i32 [ 0, %if.end.i.for.end.i.i_crit_edge ], [ %or.i.i, %for.body.i.i.for.end.i.i_crit_edge ]
  %has_adat.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %41, i32 0, i32 1
  %44 = ptrtoint ptr %has_adat.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %has_adat.i.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  %or2.i.i = or i32 %data.0.lcssa.i.i, 65280
  %spec.select.i.i = select i1 %tobool.not.i.i, i32 %data.0.lcssa.i.i, i32 %or2.i.i
  %has_spdif.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %41, i32 0, i32 2
  %46 = ptrtoint ptr %has_spdif.i.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %has_spdif.i.i, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool4.not.i.i = icmp eq i8 %47, 0
  %or6.i.i = or i32 %spec.select.i.i, 196608
  %data.2.i.i = select i1 %tobool4.not.i.i, i32 %spec.select.i.i, i32 %or6.i.i
  %48 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %data.2.i.i, ptr %reg.i.i, align 4
  %49 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %unit, align 4
  %call.i.i = call i32 @snd_fw_transaction(ptr noundef %50, i32 noundef 0, i64 noundef 281470681743892, ptr noundef nonnull %reg.i.i, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp8.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp8.i.i, label %set_stream_formats.exit.thread121, label %for.cond11.preheader.i.i

set_stream_formats.exit.thread121:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i100) #3
  br label %error

for.cond11.preheader.i.i:                         ; preds = %for.end.i.i
  %51 = ptrtoint ptr %spec.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %spec.i.i, align 8
  %pcm_playback_analog_channels.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %52, i32 0, i32 4
  %53 = ptrtoint ptr %pcm_playback_analog_channels.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pcm_playback_analog_channels.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %cmp1363.not.i.i = icmp eq i32 %54, 0
  br i1 %cmp1363.not.i.i, label %for.cond11.preheader.i.i.set_stream_formats.exit_crit_edge, label %for.cond11.preheader.i.i.for.body14.i.i_crit_edge

for.cond11.preheader.i.i.for.body14.i.i_crit_edge: ; preds = %for.cond11.preheader.i.i
  br label %for.body14.i.i

for.cond11.preheader.i.i.set_stream_formats.exit_crit_edge: ; preds = %for.cond11.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_stream_formats.exit

for.body14.i.i:                                   ; preds = %for.body14.i.i.for.body14.i.i_crit_edge, %for.cond11.preheader.i.i.for.body14.i.i_crit_edge
  %i.165.i.i = phi i32 [ %inc18.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ 0, %for.cond11.preheader.i.i.for.body14.i.i_crit_edge ]
  %data.364.i.i = phi i32 [ %or16.i.i, %for.body14.i.i.for.body14.i.i_crit_edge ], [ 0, %for.cond11.preheader.i.i.for.body14.i.i_crit_edge ]
  %shl15.i.i = shl nuw i32 1, %i.165.i.i
  %or16.i.i = or i32 %shl15.i.i, %data.364.i.i
  %inc18.i.i = add nuw i32 %i.165.i.i, 1
  %exitcond68.not.i.i = icmp eq i32 %inc18.i.i, %54
  br i1 %exitcond68.not.i.i, label %for.body14.i.i.set_stream_formats.exit_crit_edge, label %for.body14.i.i.for.body14.i.i_crit_edge

for.body14.i.i.for.body14.i.i_crit_edge:          ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body14.i.i

for.body14.i.i.set_stream_formats.exit_crit_edge: ; preds = %for.body14.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_stream_formats.exit

set_stream_formats.exit:                          ; preds = %for.body14.i.i.set_stream_formats.exit_crit_edge, %for.cond11.preheader.i.i.set_stream_formats.exit_crit_edge
  %data.3.lcssa.i.i = phi i32 [ 0, %for.cond11.preheader.i.i.set_stream_formats.exit_crit_edge ], [ %or16.i.i, %for.body14.i.i.set_stream_formats.exit_crit_edge ]
  %has_adat21.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %52, i32 0, i32 1
  %55 = ptrtoint ptr %has_adat21.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %has_adat21.i.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool22.not.i.i = icmp eq i8 %56, 0
  %or24.i.i = or i32 %data.3.lcssa.i.i, 65280
  %spec.select57.i.i = select i1 %tobool22.not.i.i, i32 %data.3.lcssa.i.i, i32 %or24.i.i
  %has_spdif27.i.i = getelementptr inbounds %struct.snd_tscm_spec, ptr %52, i32 0, i32 2
  %57 = ptrtoint ptr %has_spdif27.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %has_spdif27.i.i, align 1, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool28.not.i.i = icmp eq i8 %58, 0
  %or30.i.i = or i32 %spec.select57.i.i, 196608
  %data.5.i.i = select i1 %tobool28.not.i.i, i32 %spec.select57.i.i, i32 %or30.i.i
  %59 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %data.5.i.i, ptr %reg.i.i, align 4
  %60 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %unit, align 4
  %call33.i.i = call i32 @snd_fw_transaction(ptr noundef %61, i32 noundef 0, i64 noundef 281470681743896, ptr noundef nonnull %reg.i.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i100) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i.i)
  %cmp25 = icmp slt i32 %call33.i.i, 0
  br i1 %cmp25, label %set_stream_formats.exit.error_crit_edge, label %if.end27

set_stream_formats.exit.error_crit_edge:          ; preds = %set_stream_formats.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end27:                                         ; preds = %set_stream_formats.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i104) #3
  %channel.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5, i32 3
  %62 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %channel.i, align 8
  %64 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %reg.i104, align 4
  %65 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %unit, align 4
  %call.i106 = call i32 @snd_fw_transaction(ptr noundef %66, i32 noundef 0, i64 noundef 281470681743872, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i106)
  %cmp.i107 = icmp slt i32 %call.i106, 0
  br i1 %cmp.i107, label %if.end27.begin_session.exit.thread_crit_edge, label %if.end.i109

if.end27.begin_session.exit.thread_crit_edge:     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end.i109:                                      ; preds = %if.end27
  %67 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %reg.i104, align 4
  %68 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %unit, align 4
  %call2.i108 = call i32 @snd_fw_transaction(ptr noundef %69, i32 noundef 0, i64 noundef 281470681743876, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i108)
  %cmp3.i = icmp slt i32 %call2.i108, 0
  br i1 %cmp3.i, label %if.end.i109.begin_session.exit.thread_crit_edge, label %if.end5.i

if.end.i109.begin_session.exit.thread_crit_edge:  ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end5.i:                                        ; preds = %if.end.i109
  %channel6.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6, i32 3
  %70 = ptrtoint ptr %channel6.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channel6.i, align 8
  %72 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %reg.i104, align 4
  %73 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %unit, align 4
  %call8.i110 = call i32 @snd_fw_transaction(ptr noundef %74, i32 noundef 0, i64 noundef 281470681743884, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i110)
  %cmp9.i = icmp slt i32 %call8.i110, 0
  br i1 %cmp9.i, label %if.end5.i.begin_session.exit.thread_crit_edge, label %if.end11.i

if.end5.i.begin_session.exit.thread_crit_edge:    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end11.i:                                       ; preds = %if.end5.i
  %75 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 1, ptr %reg.i104, align 4
  %76 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %unit, align 4
  %call13.i = call i32 @snd_fw_transaction(ptr noundef %77, i32 noundef 0, i64 noundef 281470681743880, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end11.i.begin_session.exit.thread_crit_edge, label %if.end16.i

if.end11.i.begin_session.exit.thread_crit_edge:   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end16.i:                                       ; preds = %if.end11.i
  %78 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %reg.i104, align 4
  %79 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %unit, align 4
  %call18.i = call i32 @snd_fw_transaction(ptr noundef %80, i32 noundef 0, i64 noundef 281470681743888, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18.i)
  %cmp19.i = icmp slt i32 %call18.i, 0
  br i1 %cmp19.i, label %if.end16.i.begin_session.exit.thread_crit_edge, label %if.end21.i

if.end16.i.begin_session.exit.thread_crit_edge:   ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

if.end21.i:                                       ; preds = %if.end16.i
  %81 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 8192, ptr %reg.i104, align 4
  %82 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %unit, align 4
  %call23.i = call i32 @snd_fw_transaction(ptr noundef %83, i32 noundef 0, i64 noundef 281470681743916, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %if.end21.i.begin_session.exit.thread_crit_edge, label %begin_session.exit

if.end21.i.begin_session.exit.thread_crit_edge:   ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %begin_session.exit.thread

begin_session.exit.thread:                        ; preds = %if.end21.i.begin_session.exit.thread_crit_edge, %if.end16.i.begin_session.exit.thread_crit_edge, %if.end11.i.begin_session.exit.thread_crit_edge, %if.end5.i.begin_session.exit.thread_crit_edge, %if.end.i109.begin_session.exit.thread_crit_edge, %if.end27.begin_session.exit.thread_crit_edge
  %retval.0.i111.ph = phi i32 [ %call23.i, %if.end21.i.begin_session.exit.thread_crit_edge ], [ %call18.i, %if.end16.i.begin_session.exit.thread_crit_edge ], [ %call13.i, %if.end11.i.begin_session.exit.thread_crit_edge ], [ %call8.i110, %if.end5.i.begin_session.exit.thread_crit_edge ], [ %call2.i108, %if.end.i109.begin_session.exit.thread_crit_edge ], [ %call.i106, %if.end27.begin_session.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i104) #3
  br label %error

begin_session.exit:                               ; preds = %if.end21.i
  %84 = ptrtoint ptr %reg.i104 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 1, ptr %reg.i104, align 4
  %85 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %unit, align 4
  %call28.i = call i32 @snd_fw_transaction(ptr noundef %86, i32 noundef 0, i64 noundef 281470681743904, ptr noundef nonnull %reg.i104, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i104) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29 = icmp slt i32 %call28.i, 0
  br i1 %cmp29, label %begin_session.exit.error_crit_edge, label %if.end31

begin_session.exit.error_crit_edge:               ; preds = %begin_session.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end31:                                         ; preds = %begin_session.exit
  %domain32 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  %87 = ptrtoint ptr %channel6.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %channel6.i, align 8
  %call35 = call i32 @amdtp_domain_add_stream(ptr noundef %domain32, ptr noundef %rx_stream, i32 noundef %88, i32 noundef %38) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end31.error_crit_edge, label %if.end38

if.end31.error_crit_edge:                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end38:                                         ; preds = %if.end31
  %tx_stream40 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 7
  %89 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %channel.i, align 8
  %call43 = call i32 @amdtp_domain_add_stream(ptr noundef %domain32, ptr noundef %tx_stream40, i32 noundef %90, i32 noundef %38) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %if.end38.error_crit_edge, label %if.end46

if.end38.error_crit_edge:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

if.end46:                                         ; preds = %if.end38
  %need_long_tx_init_skip = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 22
  %91 = ptrtoint ptr %need_long_tx_init_skip to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %need_long_tx_init_skip, align 8, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not = icmp eq i8 %92, 0
  %. = select i1 %tobool.not, i32 0, i32 16000
  %call50 = call i32 @amdtp_domain_start(ptr noundef %domain32, i32 noundef %., i1 noundef zeroext true, i1 noundef zeroext true) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %cmp51 = icmp slt i32 %call50, 0
  br i1 %cmp51, label %if.end46.cleanup61_crit_edge, label %for.cond.i.preheader

if.end46.cleanup61_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

for.cond.i.preheader:                             ; preds = %if.end46
  %93 = ptrtoint ptr %domain32 to i32
  call void @__asan_load4_noabort(i32 %93)
  %.pn.i140 = load ptr, ptr %domain32, align 4
  %cmp.not.i141 = icmp eq ptr %.pn.i140, %domain32
  br i1 %cmp.not.i141, label %for.cond.i.preheader.cleanup61_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.cleanup61_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i142 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i140, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 348) #3
  %ready_processing.i = getelementptr i8, ptr %.pn.i142, i32 -76
  %94 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %ready_processing.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool.not.i = icmp eq i8 %95, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #3
  %96 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #3
  %ready_wait.i = getelementptr i8, ptr %.pn.i142, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #3
  %97 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %ready_processing.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool18.not12.not.i = icmp eq i8 %98, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

if.then12.i.if.end34.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then12.i.if.end34.i_crit_edge
  %__ret13.115.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 400, %if.then12.i.if.end34.i_crit_edge ]
  %call1514.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1511.i, %if.then12.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514.i)
  %tobool35.not.i = icmp eq i32 %call1514.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #3
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #3
  %99 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %ready_processing.i, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool18.not.i = icmp eq i8 %100, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %101 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %101, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 400, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #3
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %102 = ptrtoint ptr %.pn.i142 to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn.i = load ptr, ptr %.pn.i142, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain32
  br i1 %cmp.not.i, label %for.cond.i.backedge.cleanup61_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body.i

for.cond.i.backedge.cleanup61_crit_edge:          ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup61

error:                                            ; preds = %if.end41.i.error_crit_edge, %if.end38.error_crit_edge, %if.end31.error_crit_edge, %begin_session.exit.error_crit_edge, %begin_session.exit.thread, %set_stream_formats.exit.error_crit_edge, %set_stream_formats.exit.thread121, %set_stream_formats.exit.thread, %if.end12.error_crit_edge, %if.then8.error_crit_edge
  %err.1 = phi i32 [ %call9, %if.then8.error_crit_edge ], [ %call14, %if.end12.error_crit_edge ], [ %retval.0.i111.ph, %begin_session.exit.thread ], [ %call.i.i, %set_stream_formats.exit.thread121 ], [ %call.i102, %set_stream_formats.exit.thread ], [ %call43, %if.end38.error_crit_edge ], [ %call35, %if.end31.error_crit_edge ], [ %call28.i, %begin_session.exit.error_crit_edge ], [ %call33.i.i, %set_stream_formats.exit.error_crit_edge ], [ -110, %if.end41.i.error_crit_edge ]
  %domain60 = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  call void @amdtp_domain_stop(ptr noundef %domain60) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i112) #3
  %103 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %reg.i112, align 4
  %104 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %unit, align 4
  %call.i114 = call i32 @snd_fw_transaction(ptr noundef %105, i32 noundef 0, i64 noundef 281470681743880, ptr noundef nonnull %reg.i112, i32 noundef 4, i32 noundef 0) #3
  %106 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 0, ptr %reg.i112, align 4
  %107 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %unit, align 4
  %call2.i115 = call i32 @snd_fw_transaction(ptr noundef %108, i32 noundef 0, i64 noundef 281470681743888, ptr noundef nonnull %reg.i112, i32 noundef 4, i32 noundef 0) #3
  %109 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %reg.i112, align 4
  %110 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %unit, align 4
  %call4.i116 = call i32 @snd_fw_transaction(ptr noundef %111, i32 noundef 0, i64 noundef 281470681743872, ptr noundef nonnull %reg.i112, i32 noundef 4, i32 noundef 0) #3
  %112 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %reg.i112, align 4
  %113 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %unit, align 4
  %call6.i117 = call i32 @snd_fw_transaction(ptr noundef %114, i32 noundef 0, i64 noundef 281470681743876, ptr noundef nonnull %reg.i112, i32 noundef 4, i32 noundef 0) #3
  %115 = ptrtoint ptr %reg.i112 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 0, ptr %reg.i112, align 4
  %116 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %unit, align 4
  %call8.i118 = call i32 @snd_fw_transaction(ptr noundef %117, i32 noundef 0, i64 noundef 281470681743884, ptr noundef nonnull %reg.i112, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i112) #3
  br label %cleanup61

cleanup61:                                        ; preds = %error, %for.cond.i.backedge.cleanup61_crit_edge, %for.cond.i.preheader.cleanup61_crit_edge, %if.end46.cleanup61_crit_edge, %if.end18.cleanup61_crit_edge, %entry.cleanup61_crit_edge
  %retval.1 = phi i32 [ %err.1, %error ], [ 0, %entry.cleanup61_crit_edge ], [ 0, %if.end18.cleanup61_crit_edge ], [ %call50, %if.end46.cleanup61_crit_edge ], [ 0, %for.cond.i.preheader.cleanup61_crit_edge ], [ 0, %for.cond.i.backedge.cleanup61_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_update(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_stream_stop_duplex(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 9
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %domain = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 21
  tail call void @amdtp_domain_stop(ptr noundef %domain) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %reg.i, align 4
  %unit.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 1
  %3 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %unit.i, align 4
  %call.i = call i32 @snd_fw_transaction(ptr noundef %4, i32 noundef 0, i64 noundef 281470681743880, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %reg.i, align 4
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %call2.i = call i32 @snd_fw_transaction(ptr noundef %7, i32 noundef 0, i64 noundef 281470681743888, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %reg.i, align 4
  %9 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %unit.i, align 4
  %call4.i = call i32 @snd_fw_transaction(ptr noundef %10, i32 noundef 0, i64 noundef 281470681743872, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %reg.i, align 4
  %12 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %unit.i, align 4
  %call6.i = call i32 @snd_fw_transaction(ptr noundef %13, i32 noundef 0, i64 noundef 281470681743876, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %reg.i, align 4
  %15 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %unit.i, align 4
  %call8.i = call i32 @snd_fw_transaction(ptr noundef %16, i32 noundef 0, i64 noundef 281470681743884, ptr noundef nonnull %reg.i, i32 noundef 4, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  %tx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 5
  call void @fw_iso_resources_free(ptr noundef %tx_resources) #3
  %rx_resources = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 6
  call void @fw_iso_resources_free(ptr noundef %rx_resources) #3
  %need_long_tx_init_skip = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 22
  %17 = ptrtoint ptr %need_long_tx_init_skip to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %need_long_tx_init_skip, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_stream_lock_changed(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 11
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 8
  %hwdep_wait = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_tscm_stream_lock_try(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %dev_lock_count = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 10
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.end:                                           ; preds = %entry
  %inc = add nuw i32 %1, 1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %inc, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp2 = icmp eq i32 %1, 0
  br i1 %cmp2, label %if.then3, label %if.end.end_crit_edge

if.end.end_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 11
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_tscm_stream_lock_release(ptr noundef %tscm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #3
  %dev_lock_count = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 10
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !15

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 553, i32 noundef 9, ptr noundef null) #3
  br label %end

if.end21.critedge:                                ; preds = %entry
  %dec = add nsw i32 %1, -1
  %2 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %dec, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23 = icmp eq i32 %dec, 0
  br i1 %cmp23, label %if.then24, label %if.end21.critedge.end_crit_edge

if.end21.critedge.end_crit_edge:                  ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #5
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #5
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 11
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_tscm, ptr %tscm, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #3
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_fw_transaction(ptr noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_tscm_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resources_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_tscm_set_parameters(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_resources_allocate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/tascam/tascam-stream.c", i32 553, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/tascam/../amdtp-stream.h", i32 348, i32 7}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
!14 = !{i8 0, i8 2}
!15 = !{!"branch_weights", i32 1, i32 2000}
