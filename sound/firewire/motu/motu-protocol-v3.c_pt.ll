; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-protocol-v3.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-protocol-v3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_motu_spec = type { ptr, i32, i32, [3 x i8], [3 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.snd_motu = type { ptr, ptr, %struct.mutex, %struct.spinlock, ptr, %struct.snd_motu_packet_format, %struct.snd_motu_packet_format, %struct.amdtp_stream, %struct.amdtp_stream, %struct.fw_iso_resources, %struct.fw_iso_resources, i32, %struct.fw_address_handler, i32, i32, i8, %struct.wait_queue_head, ptr, %struct.amdtp_domain, %struct.amdtp_motu_cache, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sound/firewire/motu/motu-protocol-v3.c\00", [57 x i8] zeroinitializer }, align 32
@snd_motu_spec_828mk3_fw = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.1, i32 2, i32 42, [3 x i8] c"\12\12\0E", [3 x i8] c"\0E\0E\0A" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_828mk3_hybrid = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.1, i32 2, i32 42, [3 x i8] c"\12\12\0E", [3 x i8] c"\0E\0E\0E" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_traveler_mk3 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.2, i32 2, i32 42, [3 x i8] c"\12\0E\0A", [3 x i8] c"\0E\0E\0A" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_track16 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.5, i32 2, i32 42, [3 x i8] c"\0E\0E\0E", [3 x i8] c"\06\06\06" }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"828mk3\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"TravelerMk3\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"UltraLiteMk3\00", [19 x i8] zeroinitializer }, align 32
@snd_motu_spec_ultralite_mk3 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.3, i32 2, i32 42, [3 x i8] c"\12\0E\0A", [3 x i8] c"\0E\0E\0E" }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"AudioExpress\00", [19 x i8] zeroinitializer }, align 32
@snd_motu_spec_audio_express = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.4, i32 2, i32 25, [3 x i8] c"\0A\0A\00", [3 x i8] c"\0A\0A\00" }, [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Track16\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"4pre\00", [27 x i8] zeroinitializer }, align 32
@snd_motu_spec_4pre = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.6, i32 2, i32 16, [3 x i8] c"\0A\0A\00", [3 x i8] c"\0A\0A\00" }, [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 1, i64 2, i64 8, i64 16, i64 24, i64 25]
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 95, i32 12 }
@___asan_gen_.10 = private unnamed_addr constant [24 x i8] c"snd_motu_spec_828mk3_fw\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 271, i32 28 }
@___asan_gen_.13 = private unnamed_addr constant [28 x i8] c"snd_motu_spec_828mk3_hybrid\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 281, i32 28 }
@___asan_gen_.16 = private unnamed_addr constant [27 x i8] c"snd_motu_spec_traveler_mk3\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 291, i32 28 }
@___asan_gen_.19 = private unnamed_addr constant [22 x i8] c"snd_motu_spec_track16\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 321, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 272, i32 10 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 292, i32 10 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 302, i32 10 }
@___asan_gen_.31 = private unnamed_addr constant [28 x i8] c"snd_motu_spec_ultralite_mk3\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 301, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 312, i32 10 }
@___asan_gen_.37 = private unnamed_addr constant [28 x i8] c"snd_motu_spec_audio_express\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 311, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 322, i32 10 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 332, i32 10 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"snd_motu_spec_4pre\00", align 1
@___asan_gen_.47 = private constant [42 x i8] c"../sound/firewire/motu/motu-protocol-v3.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 331, i32 28 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @.str, ptr @snd_motu_spec_828mk3_fw, ptr @snd_motu_spec_828mk3_hybrid, ptr @snd_motu_spec_traveler_mk3, ptr @snd_motu_spec_track16, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_motu_spec_ultralite_mk3, ptr @.str.4, ptr @snd_motu_spec_audio_express, ptr @.str.5, ptr @.str.6, ptr @snd_motu_spec_4pre], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_828mk3_fw to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_828mk3_hybrid to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_traveler_mk3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_track16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_ultralite_mk3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_audio_express to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_4pre to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v3_get_clock_rate(ptr noundef %motu, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !37
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
  %and = lshr i32 %2, 8
  %shr = and i32 %and, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %shr)
  %cmp1 = icmp ugt i32 %shr, 5
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx = getelementptr [6 x i32], ptr @snd_motu_clock_rates, i32 0, i32 %shr
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rate, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ %call, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
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
define dso_local i32 @snd_motu_protocol_v3_set_clock_rate(ptr noundef %motu, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !37
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
  br i1 %cmp1.5, label %for.inc.4.if.end4_crit_edge, label %for.inc.4.cleanup73_crit_edge

for.inc.4.cleanup73_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

for.inc.4.if.end4_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %for.inc.4.if.end4_crit_edge, %for.inc.3.if.end4_crit_edge, %for.inc.2.if.end4_crit_edge, %for.inc.1.if.end4_crit_edge, %for.inc.if.end4_crit_edge, %entry.if.end4_crit_edge
  %i.0127.lcssa = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 256, %for.inc.if.end4_crit_edge ], [ 512, %for.inc.1.if.end4_crit_edge ], [ 768, %for.inc.2.if.end4_crit_edge ], [ 1024, %for.inc.3.if.end4_crit_edge ], [ 1280, %for.inc.4.if.end4_crit_edge ]
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp5 = icmp slt i32 %call, 0
  br i1 %cmp5, label %if.end4.cleanup73_crit_edge, label %if.end7

if.end4.cleanup73_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

if.end7:                                          ; preds = %if.end4
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %and = and i32 %8, -33619713
  %or = or i32 %and, %i.0127.lcssa
  store i32 %or, ptr %reg, align 4
  %call9 = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end7.cleanup73_crit_edge, label %if.end12

if.end7.cleanup73_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %8)
  %cmp8.not = icmp eq i32 %or, %8
  br i1 %cmp8.not, label %if.end12.cleanup73_crit_edge, label %if.then13

if.end12.cleanup73_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

if.then13:                                        ; preds = %if.end12
  %msg = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 13
  %9 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg, align 8
  call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 97) #3
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg, align 8
  %and19 = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.then29, label %if.then13.cleanup69.thread_crit_edge

if.then13.cleanup69.thread_crit_edge:             ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup69.thread

if.then29:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #3
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #3
  %hwdep_wait = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 16
  %call33128 = call i32 @prepare_to_wait_event(ptr noundef %hwdep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %msg, align 8
  %and36129 = and i32 %14, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36129)
  %tobool37.not130.not = icmp eq i32 %and36129, 0
  br i1 %tobool37.not130.not, label %if.then29.if.end53_crit_edge, label %if.then29.for.end58_crit_edge

if.then29.for.end58_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end58

if.then29.if.end53_crit_edge:                     ; preds = %if.then29
  br label %if.end53

if.end53:                                         ; preds = %cleanup.if.end53_crit_edge, %if.then29.if.end53_crit_edge
  %__ret30.1133 = phi i32 [ %__ret30.1, %cleanup.if.end53_crit_edge ], [ 400, %if.then29.if.end53_crit_edge ]
  %call33132 = phi i32 [ %call33, %cleanup.if.end53_crit_edge ], [ %call33128, %if.then29.if.end53_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33132)
  %tobool54.not = icmp eq i32 %call33132, 0
  br i1 %tobool54.not, label %cleanup, label %if.end53.if.end61_crit_edge

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end61

cleanup:                                          ; preds = %if.end53
  %call57 = call i32 @schedule_timeout(i32 noundef %__ret30.1133) #3
  %call33 = call i32 @prepare_to_wait_event(ptr noundef %hwdep_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #3
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %msg, align 8
  %and36 = and i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool41.not = icmp eq i32 %call57, 0
  %spec.store.select78 = select i1 %tobool41.not, i32 1, i32 %call57
  %__ret30.1 = select i1 %tobool37.not, i32 %call57, i32 %spec.store.select78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.1)
  %tobool47.not = icmp eq i32 %__ret30.1, 0
  %not.tobool37.not = xor i1 %tobool37.not, true
  %17 = select i1 %not.tobool37.not, i1 true, i1 %tobool47.not
  br i1 %17, label %cleanup.for.end58_crit_edge, label %cleanup.if.end53_crit_edge

cleanup.if.end53_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end53

cleanup.for.end58_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.end58

for.end58:                                        ; preds = %cleanup.for.end58_crit_edge, %if.then29.for.end58_crit_edge
  %__ret30.1.lcssa = phi i32 [ 400, %if.then29.for.end58_crit_edge ], [ %__ret30.1, %cleanup.for.end58_crit_edge ]
  call void @finish_wait(ptr noundef %hwdep_wait, ptr noundef nonnull %__wq_entry) #3
  br label %if.end61

if.end61:                                         ; preds = %for.end58, %if.end53.if.end61_crit_edge
  %__ret30.2110 = phi i32 [ %__ret30.1.lcssa, %for.end58 ], [ %call33132, %if.end53.if.end61_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.2110)
  %cmp63 = icmp slt i32 %__ret30.2110, 0
  br i1 %cmp63, label %if.end61.cleanup73_crit_edge, label %if.end65

if.end61.cleanup73_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

if.end65:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret30.2110)
  %cmp66 = icmp eq i32 %__ret30.2110, 0
  br i1 %cmp66, label %if.end65.cleanup73_crit_edge, label %if.end65.cleanup69.thread_crit_edge

if.end65.cleanup69.thread_crit_edge:              ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup69.thread

if.end65.cleanup73_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup73

cleanup69.thread:                                 ; preds = %if.end65.cleanup69.thread_crit_edge, %if.then13.cleanup69.thread_crit_edge
  br label %cleanup73

cleanup73:                                        ; preds = %cleanup69.thread, %if.end65.cleanup73_crit_edge, %if.end61.cleanup73_crit_edge, %if.end12.cleanup73_crit_edge, %if.end7.cleanup73_crit_edge, %if.end4.cleanup73_crit_edge, %for.inc.4.cleanup73_crit_edge
  %retval.1 = phi i32 [ %call, %if.end4.cleanup73_crit_edge ], [ %call9, %if.end7.cleanup73_crit_edge ], [ %__ret30.2110, %if.end61.cleanup73_crit_edge ], [ 0, %cleanup69.thread ], [ 0, %if.end12.cleanup73_crit_edge ], [ -110, %if.end65.cleanup73_crit_edge ], [ -22, %for.inc.4.cleanup73_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v3_get_clock_source(ptr noundef %motu, ptr nocapture noundef writeonly %src) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  %reg6 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !37
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup24_crit_edge, label %if.end

entry.cleanup24_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup24

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, 255
  %trunc = trunc i32 %2 to i8
  %3 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb1
    i8 2, label %sw.bb2
    i8 8, label %sw.bb3
    i8 16, label %sw.bb4
    i8 24, label %if.end.sw.bb5_crit_edge
    i8 25, label %if.end.sw.bb5_crit_edge45
  ]

if.end.sw.bb5_crit_edge45:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

if.end.sw.bb5_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.bb5

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %4 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %src, align 4
  br label %cleanup24

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 10, ptr %src, align 4
  br label %cleanup24

sw.bb2:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %6 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 11, ptr %src, align 4
  br label %cleanup24

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 9, ptr %src, align 4
  br label %cleanup24

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %8 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %src, align 4
  br label %cleanup24

sw.bb5:                                           ; preds = %if.end.sw.bb5_crit_edge, %if.end.sw.bb5_crit_edge45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg6) #3
  %9 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %reg6, align 4, !annotation !37
  %call7 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 3220, ptr noundef nonnull %reg6, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %cleanup24.critedge, label %if.end10

if.end10:                                         ; preds = %sw.bb5
  %10 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and)
  %cmp11 = icmp eq i32 %and, 24
  br i1 %cmp11, label %if.then12, label %if.else16

if.then12:                                        ; preds = %if.end10
  %and13 = and i32 %11, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %if.else, label %if.then14

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %src, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg6) #3
  br label %cleanup24

if.else:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 3, ptr %src, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg6) #3
  br label %cleanup24

if.else16:                                        ; preds = %if.end10
  %and17 = and i32 %11, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else20, label %if.then19

if.then19:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #5
  %14 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 7, ptr %src, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg6) #3
  br label %cleanup24

if.else20:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4, ptr %src, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg6) #3
  br label %cleanup24

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %16 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 12, ptr %src, align 4
  br label %cleanup24

cleanup24.critedge:                               ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg6) #3
  br label %cleanup24

cleanup24:                                        ; preds = %cleanup24.critedge, %sw.default, %if.else20, %if.then19, %if.else, %if.then14, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.cleanup24_crit_edge
  %retval.1 = phi i32 [ %call, %entry.cleanup24_crit_edge ], [ %call7, %cleanup24.critedge ], [ 0, %if.then19 ], [ 0, %if.else20 ], [ 0, %if.then14 ], [ 0, %if.else ], [ 0, %sw.default ], [ 0, %sw.bb4 ], [ 0, %sw.bb3 ], [ 0, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v3_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !37
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %reg, align 4
  %and = and i32 %2, -33554433
  %masksel = select i1 %enable, i32 33554432, i32 0
  %data.0 = or i32 %and, %masksel
  store i32 %data.0, ptr %reg, align 4
  %call3 = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg, i32 noundef 4) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v3_cache_packet_formats(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !37
  %pcm_byte_offset = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 2
  %1 = ptrtoint ptr %pcm_byte_offset to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 10, ptr %pcm_byte_offset, align 2
  %pcm_byte_offset1 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 2
  %2 = ptrtoint ptr %pcm_byte_offset1 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 10, ptr %pcm_byte_offset1, align 1
  %msg_chunks = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 3
  %3 = ptrtoint ptr %msg_chunks to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 2, ptr %msg_chunks, align 1
  %msg_chunks4 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 3
  %4 = ptrtoint ptr %msg_chunks4 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %msg_chunks4, align 1
  %call = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 3220, ptr noundef nonnull %reg, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %pcm_chunks = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec, align 8
  %tx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %8, i32 0, i32 3
  %9 = call ptr @memcpy(ptr %pcm_chunks, ptr %tx_fixed_pcm_chunks, i32 3)
  %pcm_chunks8 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4
  %rx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %8, i32 0, i32 4
  %10 = call ptr @memcpy(ptr %pcm_chunks8, ptr %rx_fixed_pcm_chunks, i32 3)
  %cmp13 = icmp eq ptr %8, @snd_motu_spec_828mk3_fw
  %cmp15 = icmp eq ptr %8, @snd_motu_spec_828mk3_hybrid
  %or.cond = or i1 %cmp13, %cmp15
  %cmp18 = icmp eq ptr %8, @snd_motu_spec_traveler_mk3
  %or.cond40 = or i1 %cmp18, %or.cond
  %cmp21 = icmp eq ptr %8, @snd_motu_spec_track16
  %or.cond41 = or i1 %cmp21, %or.cond40
  br i1 %or.cond41, label %if.then22, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then22:                                        ; preds = %if.end
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then22.if.end23.i_crit_edge, label %if.then.i

if.then22.if.end23.i_crit_edge:                   ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end23.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #5
  %and1.i = and i32 %6, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %11 = ptrtoint ptr %pcm_chunks to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pcm_chunks, align 4
  %..i = select i1 %tobool2.not.i, i8 8, i8 4
  %add15.i = add i8 %12, %..i
  store i8 %add15.i, ptr %pcm_chunks, align 4
  %arrayidx19.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4, i32 1
  %13 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx19.i, align 1
  %add9.i = add i8 %14, 4
  store i8 %add9.i, ptr %arrayidx19.i, align 1
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then.i, %if.then22.if.end23.i_crit_edge
  %and24.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end23.i.if.end56.i_crit_edge, label %if.then26.i

if.end23.i.if.end56.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end56.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #5
  %and27.i = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %tobool28.not.i = icmp eq i32 %and27.i, 0
  %15 = ptrtoint ptr %pcm_chunks to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %pcm_chunks, align 4
  %.8.i = select i1 %tobool28.not.i, i8 8, i8 4
  %add47.i = add i8 %16, %.8.i
  store i8 %add47.i, ptr %pcm_chunks, align 4
  %arrayidx51.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4, i32 1
  %17 = ptrtoint ptr %arrayidx51.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx51.i, align 1
  %add40.i = add i8 %18, 4
  store i8 %add40.i, ptr %arrayidx51.i, align 1
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end56.i_crit_edge
  %and57.i = and i32 %6, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end88.i_crit_edge, label %if.then59.i

if.end56.i.if.end88.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end88.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #5
  %and60.i = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  %19 = ptrtoint ptr %pcm_chunks8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pcm_chunks8, align 1
  %.9.i = select i1 %tobool61.not.i, i8 8, i8 4
  %add79.i = add i8 %20, %.9.i
  store i8 %add79.i, ptr %pcm_chunks8, align 1
  %arrayidx83.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx83.i, align 1
  %add72.i = add i8 %22, 4
  store i8 %add72.i, ptr %arrayidx83.i, align 1
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end88.i_crit_edge
  %and89.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89.i)
  %tobool90.not.i = icmp eq i32 %and89.i, 0
  br i1 %tobool90.not.i, label %if.end88.i.cleanup_crit_edge, label %if.then91.i

if.end88.i.cleanup_crit_edge:                     ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then91.i:                                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #5
  %and92.i = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92.i)
  %tobool93.not.i = icmp eq i32 %and92.i, 0
  %23 = ptrtoint ptr %pcm_chunks8 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcm_chunks8, align 1
  %.10.i = select i1 %tobool93.not.i, i8 8, i8 4
  %add112.i = add i8 %24, %.10.i
  store i8 %add112.i, ptr %pcm_chunks8, align 1
  %arrayidx116.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx116.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx116.i, align 1
  %add105.i = add i8 %26, 4
  store i8 %add105.i, ptr %arrayidx116.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then91.i, %if.end88.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end88.i.cleanup_crit_edge ], [ 0, %if.then91.i ]
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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26}
!llvm.module.flags = !{!28, !29, !30, !31, !32, !33, !34, !35}
!llvm.ident = !{!36}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 95, i32 12}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 272, i32 10}
!4 = !{ptr @snd_motu_spec_828mk3_fw, !5, !"snd_motu_spec_828mk3_fw", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 271, i32 28}
!6 = !{ptr @snd_motu_spec_828mk3_hybrid, !7, !"snd_motu_spec_828mk3_hybrid", i1 false, i1 false}
!7 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 281, i32 28}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 292, i32 10}
!10 = !{ptr @snd_motu_spec_traveler_mk3, !11, !"snd_motu_spec_traveler_mk3", i1 false, i1 false}
!11 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 291, i32 28}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 302, i32 10}
!14 = !{ptr @snd_motu_spec_ultralite_mk3, !15, !"snd_motu_spec_ultralite_mk3", i1 false, i1 false}
!15 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 301, i32 28}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 312, i32 10}
!18 = !{ptr @snd_motu_spec_audio_express, !19, !"snd_motu_spec_audio_express", i1 false, i1 false}
!19 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 311, i32 28}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 322, i32 10}
!22 = !{ptr @snd_motu_spec_track16, !23, !"snd_motu_spec_track16", i1 false, i1 false}
!23 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 321, i32 28}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 332, i32 10}
!26 = !{ptr @snd_motu_spec_4pre, !27, !"snd_motu_spec_4pre", i1 false, i1 false}
!27 = !{!"../sound/firewire/motu/motu-protocol-v3.c", i32 331, i32 28}
!28 = !{i32 1, !"wchar_size", i32 2}
!29 = !{i32 1, !"min_enum_size", i32 4}
!30 = !{i32 8, !"branch-target-enforcement", i32 0}
!31 = !{i32 8, !"sign-return-address", i32 0}
!32 = !{i32 8, !"sign-return-address-all", i32 0}
!33 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!34 = !{i32 7, !"uwtable", i32 1}
!35 = !{i32 7, !"frame-pointer", i32 2}
!36 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!37 = !{!"auto-init"}
