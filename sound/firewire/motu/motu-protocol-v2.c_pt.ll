; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-protocol-v2.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-protocol-v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
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

@snd_motu_clock_rates = external dso_local local_unnamed_addr constant [6 x i32], align 4
@snd_motu_spec_828mk2 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str, i32 1, i32 21, [3 x i8] c"\0E\0E\00", [3 x i8] c"\0E\0E\00" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_896hd = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.1, i32 1, i32 16, [3 x i8] c"\0E\0E\08", [3 x i8] c"\0E\0E\08" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_traveler = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.2, i32 1, i32 21, [3 x i8] c"\0E\0E\08", [3 x i8] c"\0E\0E\08" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_8pre = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.4, i32 1, i32 21, [3 x i8] c"\0A\0A\00", [3 x i8] c"\06\06\00" }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"828mk2\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"896HD\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Traveler\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"UltraLite\00", [22 x i8] zeroinitializer }, align 32
@snd_motu_spec_ultralite = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.3, i32 1, i32 21, [3 x i8] c"\0E\0E\00", [3 x i8] c"\0E\0E\00" }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"8pre\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 7]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.6 = private unnamed_addr constant [21 x i8] c"snd_motu_spec_828mk2\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 274, i32 28 }
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"snd_motu_spec_896hd\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 284, i32 28 }
@___asan_gen_.12 = private unnamed_addr constant [23 x i8] c"snd_motu_spec_traveler\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 292, i32 28 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"snd_motu_spec_8pre\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 312, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 275, i32 10 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 285, i32 10 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 293, i32 10 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 303, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"snd_motu_spec_ultralite\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 302, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [42 x i8] c"../sound/firewire/motu/motu-protocol-v2.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 313, i32 10 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @snd_motu_spec_828mk2, ptr @snd_motu_spec_896hd, ptr @snd_motu_spec_traveler, ptr @snd_motu_spec_8pre, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_motu_spec_ultralite, ptr @.str.4], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_828mk2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_896hd to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_traveler to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_8pre to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_ultralite to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v2_get_clock_rate(ptr noundef %motu, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and.i = lshr i32 %2, 3
  %shr.i = and i32 %and.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i)
  %cmp.i = icmp ugt i32 %shr.i, 5
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i = getelementptr [6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 %shr.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.i ], [ -5, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v2_set_clock_rate(ptr noundef %motu, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @snd_motu_clock_rates to i32))
  %1 = load i32, ptr @snd_motu_clock_rates, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp1 = icmp eq i32 %1, %rate
  br i1 %cmp1, label %entry.if.end4_crit_edge, label %for.inc

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

for.inc:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %rate)
  %cmp1.1 = icmp eq i32 %2, %rate
  br i1 %cmp1.1, label %for.inc.if.end4_crit_edge, label %for.inc.1

for.inc.if.end4_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

for.inc.1:                                        ; preds = %for.inc
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2) to i32))
  %3 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %rate)
  %cmp1.2 = icmp eq i32 %3, %rate
  br i1 %cmp1.2, label %for.inc.1.if.end4_crit_edge, label %for.inc.2

for.inc.1.if.end4_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

for.inc.2:                                        ; preds = %for.inc.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3) to i32))
  %4 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 3), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %rate)
  %cmp1.3 = icmp eq i32 %4, %rate
  br i1 %cmp1.3, label %for.inc.2.if.end4_crit_edge, label %for.inc.3

for.inc.2.if.end4_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

for.inc.3:                                        ; preds = %for.inc.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4) to i32))
  %5 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp1.4 = icmp eq i32 %5, %rate
  br i1 %cmp1.4, label %for.inc.3.if.end4_crit_edge, label %for.inc.4

for.inc.3.if.end4_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

for.inc.4:                                        ; preds = %for.inc.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5) to i32))
  %6 = load i32, ptr getelementptr inbounds ([6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %rate)
  %cmp1.5 = icmp eq i32 %6, %rate
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.4.cleanup_crit_edge

for.inc.4.cleanup_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.023.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 8, %for.inc.if.end4_crit_edge ], [ 16, %for.inc.1.if.end4_crit_edge ], [ 24, %for.inc.2.if.end4_crit_edge ], [ 32, %for.inc.3.if.end4_crit_edge ], [ 40, %for.inc.4.if.end4_crit_edge ]
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, -57
  %or = or i32 %and, %i.023.lcssa
  store i32 %or, ptr %reg, align 4
  %call8 = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %for.inc.4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end7 ], [ %call, %if.end4.cleanup_crit_edge ], [ -22, %for.inc.4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v2_get_clock_source(ptr noundef %motu, ptr nocapture noundef writeonly %src) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and.i = and i32 %2, 7
  %3 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %sw.default.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb2.i
    i32 3, label %sw.bb21.i
    i32 4, label %sw.bb22.i
    i32 5, label %sw.bb23.i
    i32 7, label %sw.bb24.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src, align 4
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %src, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %if.end
  %spec.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %6 = ptrtoint ptr %spec.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %spec.i, align 8
  %cmp6.i = icmp eq ptr %7, @snd_motu_spec_896hd
  br i1 %cmp6.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 9, ptr %src, align 4
  br label %cleanup

if.else.i:                                        ; preds = %sw.bb2.i
  %cmp.i = icmp eq ptr %7, @snd_motu_spec_828mk2
  %cmp4.i = icmp eq ptr %7, @snd_motu_spec_traveler
  %spec.select.i = or i1 %cmp.i, %cmp4.i
  br i1 %spec.select.i, label %if.else8.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #5
  %9 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 8, ptr %src, align 4
  br label %cleanup

if.else8.i:                                       ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %reg.i, align 4, !annotation !29
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 3076, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp9.i = icmp slt i32 %call.i, 0
  br i1 %cmp9.i, label %cleanup19.i, label %if.end.i

if.end.i:                                         ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = and i32 %2, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %11)
  %cmp12.i = icmp eq i32 %11, 512
  %..i = select i1 %cmp12.i, i32 5, i32 8
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %..i, ptr %src, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %cleanup

cleanup19.i:                                      ; preds = %if.else8.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %cleanup

sw.bb21.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 11, ptr %src, align 4
  br label %cleanup

sw.bb22.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 10, ptr %src, align 4
  br label %cleanup

sw.bb23.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %src, align 4
  br label %cleanup

sw.bb24.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 9, ptr %src, align 4
  br label %cleanup

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %17 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 12, ptr %src, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.default.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %cleanup19.i, %if.end.i, %if.then7.i, %if.then.i, %sw.bb1.i, %sw.bb.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %cleanup19.i ], [ 0, %sw.default.i ], [ 0, %sw.bb24.i ], [ 0, %sw.bb23.i ], [ 0, %sw.bb22.i ], [ 0, %sw.bb21.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i ], [ 0, %if.end.i ], [ 0, %if.then7.i ], [ 0, %if.then.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v2_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_828mk2
  %cmp2 = icmp eq ptr %1, @snd_motu_spec_896hd
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.return_crit_edge, label %if.else4

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.else4:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.else4.cleanup_crit_edge, label %if.end

if.else4.cleanup_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.else4
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %and = and i32 %4, -100663297
  %or = or i32 %and, 33554432
  %spec.select = select i1 %enable, i32 %or, i32 %and
  %5 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %spec, align 8
  %cmp10 = icmp eq ptr %6, @snd_motu_spec_traveler
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %or.i = or i32 %spec.select, 67108864
  br label %if.end20

if.else14:                                        ; preds = %if.end
  %and.i.i = and i32 %spec.select, 7
  %7 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %and.i.i, label %if.else14.if.end.i_crit_edge [
    i32 3, label %if.end.thread.i
    i32 2, label %sw.bb2.i.i
  ]

if.else14.if.end.i_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

sw.bb2.i.i:                                       ; preds = %if.else14
  %cmp.i.i = icmp eq ptr %6, @snd_motu_spec_828mk2
  br i1 %cmp.i.i, label %if.else8.i.i, label %sw.bb2.i.i.if.end.i_crit_edge

sw.bb2.i.i.if.end.i_crit_edge:                    ; preds = %sw.bb2.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else8.i.i:                                     ; preds = %sw.bb2.i.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #3
  %8 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !29
  %call.i.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 3076, ptr noundef nonnull %reg.i.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp9.i.i = icmp slt i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #3
  br i1 %cmp9.i.i, label %if.else8.i.i.cleanup_crit_edge, label %if.else8.i.i.if.end.i_crit_edge

if.else8.i.i.if.end.i_crit_edge:                  ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.i

if.else8.i.i.cleanup_crit_edge:                   ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.i:                                         ; preds = %if.else8.i.i.if.end.i_crit_edge, %sw.bb2.i.i.if.end.i_crit_edge, %if.else14.if.end.i_crit_edge
  %9 = and i32 %spec.select, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %9)
  %cmp.i2.i = icmp eq i32 %9, 48
  br i1 %cmp.i2.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.if.end20_crit_edge

if.end.i.if.end20_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end20

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.thread.i:                                  ; preds = %if.else14
  %and.i113.i = lshr i32 %spec.select, 3
  %shr.i14.i = and i32 %and.i113.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr.i14.i)
  %cmp.i215.i = icmp ugt i32 %shr.i14.i, 5
  br i1 %cmp.i215.i, label %if.end.thread.i.cleanup_crit_edge, label %land.lhs.true.i

if.end.thread.i.cleanup_crit_edge:                ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx.i20.i = getelementptr [6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 %shr.i14.i
  %10 = ptrtoint ptr %arrayidx.i20.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i20.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %11)
  %cmp6.i = icmp ugt i32 %11, 48000
  %or.i35 = or i32 %spec.select, 67108864
  %spec.select45 = select i1 %cmp6.i, i32 %or.i35, i32 %spec.select
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.i, %if.end.i.if.end20_crit_edge, %if.then11
  %data.1.ph = phi i32 [ %spec.select, %if.end.i.if.end20_crit_edge ], [ %or.i, %if.then11 ], [ %spec.select45, %land.lhs.true.i ]
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %data.1.ph, ptr %reg, align 4
  %call21 = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.thread.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.else8.i.i.cleanup_crit_edge, %if.else4.cleanup_crit_edge
  %retval.0 = phi i32 [ %call21, %if.end20 ], [ %call, %if.else4.cleanup_crit_edge ], [ -5, %if.end.thread.i.cleanup_crit_edge ], [ %call.i.i, %if.else8.i.i.cleanup_crit_edge ], [ -5, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  br label %return

return:                                           ; preds = %cleanup, %entry.return_crit_edge
  %retval.1 = phi i32 [ %retval.0, %cleanup ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v2_cache_packet_formats(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_8pre
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !29
  %pcm_byte_offset = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 2
  %3 = ptrtoint ptr %pcm_byte_offset to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 10, ptr %pcm_byte_offset, align 2
  %pcm_byte_offset1 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 2
  %4 = ptrtoint ptr %pcm_byte_offset1 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %pcm_byte_offset1, align 1
  %msg_chunks = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 3
  %5 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 2, ptr %msg_chunks, align 1
  %msg_chunks4 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 3
  %6 = ptrtoint ptr %msg_chunks4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %msg_chunks4, align 1
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 3076, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %pcm_chunks = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4
  %9 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %spec, align 8
  %tx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %10, i32 0, i32 3
  %11 = call ptr @memcpy(ptr %pcm_chunks, ptr %tx_fixed_pcm_chunks, i32 3)
  %pcm_chunks10 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4
  %rx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %10, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %pcm_chunks10, ptr %rx_fixed_pcm_chunks, i32 3)
  %13 = and i32 %8, 768
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %13)
  %cmp14 = icmp eq i32 %13, 256
  br i1 %cmp14, label %if.then15, label %if.end33

if.then15:                                        ; preds = %if.end
  %14 = ptrtoint ptr %pcm_chunks to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %pcm_chunks, align 4
  %add = add i8 %15, 8
  store i8 %add, ptr %pcm_chunks, align 4
  %arrayidx28 = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4, i32 1
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx28, align 1
  br i1 %cmp, label %if.end33.thread85, label %if.end33.thread

if.end33:                                         ; preds = %if.end
  %18 = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %18)
  %cmp36 = icmp eq i32 %18, 1024
  br i1 %cmp36, label %if.then38, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end33.thread85:                                ; preds = %if.then15
  %add30 = add i8 %17, 8
  %19 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %add30, ptr %arrayidx28, align 1
  %20 = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %20)
  %cmp3686 = icmp eq i32 %20, 1024
  br i1 %cmp3686, label %if.then38.thread87, label %if.end33.thread85.cleanup_crit_edge

if.end33.thread85.cleanup_crit_edge:              ; preds = %if.end33.thread85
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38.thread87:                               ; preds = %if.end33.thread85
  call void @__sanitizer_cov_trace_pc() #5
  %21 = ptrtoint ptr %pcm_chunks10 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %pcm_chunks10, align 1
  %add4388 = add i8 %22, 8
  store i8 %add4388, ptr %pcm_chunks10, align 1
  br label %if.else53

if.end33.thread:                                  ; preds = %if.then15
  %add24 = add i8 %17, 4
  %23 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %add24, ptr %arrayidx28, align 1
  %24 = and i32 %8, 3072
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %24)
  %cmp3683 = icmp eq i32 %24, 1024
  br i1 %cmp3683, label %if.then38.thread, label %if.end33.thread.cleanup_crit_edge

if.end33.thread.cleanup_crit_edge:                ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then38.thread:                                 ; preds = %if.end33.thread
  call void @__sanitizer_cov_trace_pc() #5
  %25 = ptrtoint ptr %pcm_chunks10 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %pcm_chunks10, align 1
  %add4384 = add i8 %26, 8
  store i8 %add4384, ptr %pcm_chunks10, align 1
  br label %cleanup.sink.split

if.then38:                                        ; preds = %if.end33
  %27 = ptrtoint ptr %pcm_chunks10 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %pcm_chunks10, align 1
  %add43 = add i8 %28, 8
  store i8 %add43, ptr %pcm_chunks10, align 1
  br i1 %cmp, label %if.then38.if.else53_crit_edge, label %if.then38.cleanup.sink.split_crit_edge

if.then38.cleanup.sink.split_crit_edge:           ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split

if.then38.if.else53_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.else53

if.else53:                                        ; preds = %if.then38.if.else53_crit_edge, %if.then38.thread87
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.else53, %if.then38.cleanup.sink.split_crit_edge, %if.then38.thread
  %.sink89 = phi i8 [ 8, %if.else53 ], [ 4, %if.then38.thread ], [ 4, %if.then38.cleanup.sink.split_crit_edge ]
  %arrayidx49 = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4, i32 1
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx49, align 1
  %add58 = add i8 %30, %.sink89
  store i8 %add58, ptr %arrayidx49, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end33.thread.cleanup_crit_edge, %if.end33.thread85.cleanup_crit_edge, %if.end33.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end33.cleanup_crit_edge ], [ 0, %if.end33.thread.cleanup_crit_edge ], [ 0, %if.end33.thread85.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 275, i32 10}
!2 = !{ptr @snd_motu_spec_828mk2, !3, !"snd_motu_spec_828mk2", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 274, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 285, i32 10}
!6 = !{ptr @snd_motu_spec_896hd, !7, !"snd_motu_spec_896hd", i1 false, i1 false}
!7 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 284, i32 28}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 293, i32 10}
!10 = !{ptr @snd_motu_spec_traveler, !11, !"snd_motu_spec_traveler", i1 false, i1 false}
!11 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 292, i32 28}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 303, i32 10}
!14 = !{ptr @snd_motu_spec_ultralite, !15, !"snd_motu_spec_ultralite", i1 false, i1 false}
!15 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 302, i32 28}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 313, i32 10}
!18 = !{ptr @snd_motu_spec_8pre, !19, !"snd_motu_spec_8pre", i1 false, i1 false}
!19 = !{!"../sound/firewire/motu/motu-protocol-v2.c", i32 312, i32 28}
!20 = !{i32 1, !"wchar_size", i32 2}
!21 = !{i32 1, !"min_enum_size", i32 4}
!22 = !{i32 8, !"branch-target-enforcement", i32 0}
!23 = !{i32 8, !"sign-return-address", i32 0}
!24 = !{i32 8, !"sign-return-address-all", i32 0}
!25 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!29 = !{!"auto-init"}
