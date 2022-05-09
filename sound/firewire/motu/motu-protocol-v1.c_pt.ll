; ModuleID = '/llk/IR_all_yes/sound/firewire/motu/motu-protocol-v1.c_pt.bc'
source_filename = "../sound/firewire/motu/motu-protocol-v1.c"
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

@snd_motu_spec_828 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str, i32 0, i32 0, [3 x i8] c"\0A\00\00", [3 x i8] c"\0A\00\00" }, [44 x i8] zeroinitializer }, align 32
@snd_motu_spec_896 = dso_local constant { %struct.snd_motu_spec, [44 x i8] } { %struct.snd_motu_spec { ptr @.str.1, i32 0, i32 0, [3 x i8] c"\0A\0A\00", [3 x i8] c"\0A\0A\00" }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"828\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"896\00", [28 x i8] zeroinitializer }, align 32
@switch.table.snd_motu_protocol_v1_get_clock_rate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 44100, i32 48000, i32 88200, i32 96000], [16 x i8] zeroinitializer }, align 32
@switch.table.snd_motu_protocol_v1_get_clock_source = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 2, i32 9, i32 11, i32 10, i32 1], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 44100, i64 48000, i64 88200, i64 96000]
@__sancov_gen_cov_switch_values.2 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 33]
@___asan_gen_.3 = private unnamed_addr constant [18 x i8] c"snd_motu_spec_828\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 459, i32 28 }
@___asan_gen_.6 = private unnamed_addr constant [18 x i8] c"snd_motu_spec_896\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 466, i32 28 }
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 460, i32 10 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private constant [42 x i8] c"../sound/firewire/motu/motu-protocol-v1.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 467, i32 10 }
@___asan_gen_.15 = private unnamed_addr constant [49 x i8] c"switch.table.snd_motu_protocol_v1_get_clock_rate\00", align 1
@___asan_gen_.16 = private unnamed_addr constant [51 x i8] c"switch.table.snd_motu_protocol_v1_get_clock_source\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @snd_motu_spec_828, ptr @snd_motu_spec_896, ptr @.str, ptr @.str.1, ptr @switch.table.snd_motu_protocol_v1_get_clock_rate, ptr @switch.table.snd_motu_protocol_v1_get_clock_source], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_828 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_motu_spec_896 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_motu_protocol_v1_get_clock_rate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_motu_protocol_v1_get_clock_source to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v1_get_clock_rate(ptr noundef %motu, ptr nocapture noundef writeonly %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg.i10 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_828
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_clock_rate_828.exit_crit_edge, label %if.end.i

if.then.get_clock_rate_828.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_rate_828.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and.i.i = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %..i.i = select i1 %tobool.not.i.i, i32 44100, i32 48000
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %..i.i, ptr %rate, align 4
  br label %get_clock_rate_828.exit

get_clock_rate_828.exit:                          ; preds = %if.end.i, %if.then.get_clock_rate_828.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end.i ], [ %call.i, %if.then.get_clock_rate_828.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %1, @snd_motu_spec_896
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i10) #3
  %6 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i10, align 4, !annotation !17
  %call.i11 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i10, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp.i12, label %if.then3.get_clock_rate_896.exit_crit_edge, label %if.end.i14

if.then3.get_clock_rate_896.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_rate_896.exit

if.end.i14:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i10, align 4
  %and.i.i13 = lshr i32 %8, 3
  %9 = and i32 %and.i.i13, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.snd_motu_protocol_v1_get_clock_rate, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  %11 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %switch.load, ptr %rate, align 4
  br label %get_clock_rate_896.exit

get_clock_rate_896.exit:                          ; preds = %if.end.i14, %if.then3.get_clock_rate_896.exit_crit_edge
  %retval.0.i15 = phi i32 [ 0, %if.end.i14 ], [ %call.i11, %if.then3.get_clock_rate_896.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i10) #3
  br label %return

return:                                           ; preds = %get_clock_rate_896.exit, %if.else.return_crit_edge, %get_clock_rate_828.exit
  %retval.0 = phi i32 [ %retval.0.i, %get_clock_rate_828.exit ], [ %retval.0.i15, %get_clock_rate_896.exit ], [ -6, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v1_set_clock_rate(ptr noundef %motu, i32 noundef %rate) local_unnamed_addr #0 align 64 {
entry:
  %reg.i10 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_828
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.set_clock_rate_828.exit_crit_edge, label %if.end.i

if.then.set_clock_rate_828.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock_rate_828.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and1.i = and i32 %4, 65531
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %cmp2.i = icmp eq i32 %rate, 48000
  %or.i = or i32 %and1.i, 4
  %spec.select.i = select i1 %cmp2.i, i32 %or.i, i32 %and1.i
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %spec.select.i, ptr %reg.i, align 4
  %call5.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  br label %set_clock_rate_828.exit

set_clock_rate_828.exit:                          ; preds = %if.end.i, %if.then.set_clock_rate_828.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end.i ], [ %call.i, %if.then.set_clock_rate_828.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %1, @snd_motu_spec_896
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i10) #3
  %6 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i10, align 4, !annotation !17
  %call.i11 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i10, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp.i12, label %if.then3.set_clock_rate_896.exit_crit_edge, label %if.end.i13

if.then3.set_clock_rate_896.exit_crit_edge:       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock_rate_896.exit

if.end.i13:                                       ; preds = %if.then3
  %7 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i10, align 4
  %9 = zext i32 %rate to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rate, label %if.end.i13.set_clock_rate_896.exit_crit_edge [
    i32 44100, label %if.end.i13.sw.epilog.i_crit_edge
    i32 48000, label %sw.bb1.i
    i32 88200, label %sw.bb2.i
    i32 96000, label %sw.bb3.i
  ]

if.end.i13.sw.epilog.i_crit_edge:                 ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

if.end.i13.set_clock_rate_896.exit_crit_edge:     ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %set_clock_rate_896.exit

sw.bb1.i:                                         ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %if.end.i13.sw.epilog.i_crit_edge
  %flag.0.i = phi i32 [ 24, %sw.bb3.i ], [ 16, %sw.bb2.i ], [ 8, %sw.bb1.i ], [ 0, %if.end.i13.sw.epilog.i_crit_edge ]
  %and.i = and i32 %8, -25
  %or.i14 = or i32 %flag.0.i, %and.i
  %10 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i14, ptr %reg.i10, align 4
  %call4.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i10, i32 noundef 4) #3
  br label %set_clock_rate_896.exit

set_clock_rate_896.exit:                          ; preds = %sw.epilog.i, %if.end.i13.set_clock_rate_896.exit_crit_edge, %if.then3.set_clock_rate_896.exit_crit_edge
  %retval.0.i15 = phi i32 [ %call4.i, %sw.epilog.i ], [ %call.i11, %if.then3.set_clock_rate_896.exit_crit_edge ], [ -22, %if.end.i13.set_clock_rate_896.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i10) #3
  br label %return

return:                                           ; preds = %set_clock_rate_896.exit, %if.else.return_crit_edge, %set_clock_rate_828.exit
  %retval.0 = phi i32 [ %retval.0.i, %set_clock_rate_828.exit ], [ %retval.0.i15, %set_clock_rate_896.exit ], [ -6, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v1_get_clock_source(ptr noundef %motu, ptr nocapture noundef writeonly %src) local_unnamed_addr #0 align 64 {
entry:
  %reg.i10 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_828
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.get_clock_source_828.exit_crit_edge, label %if.end.i

if.then.get_clock_source_828.exit_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_source_828.exit

if.end.i:                                         ; preds = %if.then
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and1.i = and i32 %4, 35
  %5 = zext i32 %and1.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and1.i, label %if.end.i.get_clock_source_828.exit_crit_edge [
    i32 33, label %if.end.i.cleanup.sink.split.i_crit_edge
    i32 3, label %sw.bb2.i
    i32 2, label %sw.bb3.i
    i32 1, label %sw.bb7.i
    i32 0, label %sw.bb8.i
  ]

if.end.i.cleanup.sink.split.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

if.end.i.get_clock_source_828.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_source_828.exit

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %and4.i = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool.not.i = icmp eq i32 %and4.i, 0
  %..i = select i1 %tobool.not.i, i32 5, i32 8
  br label %cleanup.sink.split.i

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sw.bb8.i, %sw.bb7.i, %sw.bb3.i, %sw.bb2.i, %if.end.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 11, %sw.bb2.i ], [ %and1.i, %sw.bb7.i ], [ %and1.i, %sw.bb8.i ], [ 2, %if.end.i.cleanup.sink.split.i_crit_edge ], [ %..i, %sw.bb3.i ]
  %6 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink.i, ptr %src, align 4
  br label %get_clock_source_828.exit

get_clock_source_828.exit:                        ; preds = %cleanup.sink.split.i, %if.end.i.get_clock_source_828.exit_crit_edge, %if.then.get_clock_source_828.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.get_clock_source_828.exit_crit_edge ], [ -6, %if.end.i.get_clock_source_828.exit_crit_edge ], [ 0, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %1, @snd_motu_spec_896
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i10) #3
  %7 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg.i10, align 4, !annotation !17
  %call.i11 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i10, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i11)
  %cmp.i12 = icmp slt i32 %call.i11, 0
  br i1 %cmp.i12, label %if.then3.get_clock_source_896.exit_crit_edge, label %if.end.i13

if.then3.get_clock_source_896.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_source_896.exit

if.end.i13:                                       ; preds = %if.then3
  %8 = ptrtoint ptr %reg.i10 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i10, align 4
  %and.i = and i32 %9, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %10 = icmp ult i32 %and.i, 6
  br i1 %10, label %switch.lookup, label %if.end.i13.get_clock_source_896.exit_crit_edge

if.end.i13.get_clock_source_896.exit_crit_edge:   ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  br label %get_clock_source_896.exit

switch.lookup:                                    ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #5
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.snd_motu_protocol_v1_get_clock_source, i32 0, i32 %and.i
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %switch.load, ptr %src, align 4
  br label %get_clock_source_896.exit

get_clock_source_896.exit:                        ; preds = %switch.lookup, %if.end.i13.get_clock_source_896.exit_crit_edge, %if.then3.get_clock_source_896.exit_crit_edge
  %retval.0.i18 = phi i32 [ %call.i11, %if.then3.get_clock_source_896.exit_crit_edge ], [ -6, %if.end.i13.get_clock_source_896.exit_crit_edge ], [ 0, %switch.lookup ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i10) #3
  br label %return

return:                                           ; preds = %get_clock_source_896.exit, %if.else.return_crit_edge, %get_clock_source_828.exit
  %retval.0 = phi i32 [ %retval.0.i, %get_clock_source_828.exit ], [ %retval.0.i18, %get_clock_source_896.exit ], [ -6, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v1_switch_fetching_mode(ptr noundef %motu, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %reg.i11 = alloca i32, align 4
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %cmp = icmp eq ptr %1, @snd_motu_spec_828
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.switch_fetching_mode_828.exit_crit_edge, label %if.end.i

if.then.switch_fetching_mode_828.exit_crit_edge:  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_fetching_mode_828.exit

if.end.i:                                         ; preds = %if.then
  %3 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg.i, align 4
  %and1.i = and i32 %4, 65399
  br i1 %enable, label %if.then2.i, label %if.end.i.if.end3.i_crit_edge

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end3.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @msleep(i32 noundef 100) #3
  %or.i = or i32 %and1.i, 136
  br label %if.end3.i

if.end3.i:                                        ; preds = %if.then2.i, %if.end.i.if.end3.i_crit_edge
  %data.0.i = phi i32 [ %or.i, %if.then2.i ], [ %and1.i, %if.end.i.if.end3.i_crit_edge ]
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %data.0.i, ptr %reg.i, align 4
  %call4.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  br label %switch_fetching_mode_828.exit

switch_fetching_mode_828.exit:                    ; preds = %if.end3.i, %if.then.switch_fetching_mode_828.exit_crit_edge
  %retval.0.i = phi i32 [ %call4.i, %if.end3.i ], [ %call.i, %if.then.switch_fetching_mode_828.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %return

if.else:                                          ; preds = %entry
  %cmp2 = icmp eq ptr %1, @snd_motu_spec_896
  br i1 %cmp2, label %if.then3, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i11) #3
  %6 = ptrtoint ptr %reg.i11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %reg.i11, align 4, !annotation !17
  %call.i12 = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i11, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12)
  %cmp.i13 = icmp slt i32 %call.i12, 0
  br i1 %cmp.i13, label %if.then3.switch_fetching_mode_896.exit_crit_edge, label %if.end.i15

if.then3.switch_fetching_mode_896.exit_crit_edge: ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  br label %switch_fetching_mode_896.exit

if.end.i15:                                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #5
  %7 = ptrtoint ptr %reg.i11 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i11, align 4
  %and.i = and i32 %8, -536870913
  %or.i14 = or i32 %8, 587202560
  %spec.select.i = select i1 %enable, i32 %or.i14, i32 %and.i
  store i32 %spec.select.i, ptr %reg.i11, align 4
  %call3.i = call i32 @snd_motu_transaction_write(ptr noundef %motu, i32 noundef 2836, ptr noundef nonnull %reg.i11, i32 noundef 4) #3
  br label %switch_fetching_mode_896.exit

switch_fetching_mode_896.exit:                    ; preds = %if.end.i15, %if.then3.switch_fetching_mode_896.exit_crit_edge
  %retval.0.i16 = phi i32 [ %call3.i, %if.end.i15 ], [ %call.i12, %if.then3.switch_fetching_mode_896.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i11) #3
  br label %return

return:                                           ; preds = %switch_fetching_mode_896.exit, %if.else.return_crit_edge, %switch_fetching_mode_828.exit
  %retval.0 = phi i32 [ %retval.0.i, %switch_fetching_mode_828.exit ], [ %retval.0.i16, %switch_fetching_mode_896.exit ], [ -6, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_motu_protocol_v1_cache_packet_formats(ptr noundef %motu) local_unnamed_addr #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %pcm_chunks = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4
  %spec = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 4
  %0 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %spec, align 8
  %tx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %1, i32 0, i32 3
  %2 = call ptr @memcpy(ptr %pcm_chunks, ptr %tx_fixed_pcm_chunks, i32 3)
  %pcm_chunks2 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4
  %rx_fixed_pcm_chunks = getelementptr inbounds %struct.snd_motu_spec, ptr %1, i32 0, i32 4
  %3 = call ptr @memcpy(ptr %pcm_chunks2, ptr %rx_fixed_pcm_chunks, i32 3)
  %cmp = icmp eq ptr %1, @snd_motu_spec_828
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !17
  %pcm_byte_offset.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 2
  %5 = ptrtoint ptr %pcm_byte_offset.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 4, ptr %pcm_byte_offset.i, align 2
  %msg_chunks.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 3
  %6 = ptrtoint ptr %msg_chunks.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %msg_chunks.i, align 1
  %pcm_byte_offset2.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %pcm_byte_offset2.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 4, ptr %pcm_byte_offset2.i, align 1
  %msg_chunks4.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 3
  %8 = ptrtoint ptr %msg_chunks4.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %msg_chunks4.i, align 1
  %call.i = call i32 @snd_motu_transaction_read(ptr noundef %motu, i32 noundef 2816, ptr noundef nonnull %reg.i, i32 noundef 4) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.detect_packet_formats_828.exit_crit_edge, label %if.end.i

if.then.detect_packet_formats_828.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %detect_packet_formats_828.exit

if.end.i:                                         ; preds = %if.then
  %9 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg.i, align 4
  %and5.i = and i32 %10, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool.not.i, label %if.then6.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9.i

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %pcm_chunks to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %pcm_chunks, align 4
  %add.i = add i8 %12, 8
  store i8 %add.i, ptr %pcm_chunks, align 4
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then6.i, %if.end.i.if.end9.i_crit_edge
  %and10.i = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i)
  %tobool11.not.i = icmp eq i32 %and10.i, 0
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end9.i.detect_packet_formats_828.exit_crit_edge

if.end9.i.detect_packet_formats_828.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %detect_packet_formats_828.exit

if.then12.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %pcm_chunks2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %pcm_chunks2, align 1
  %add17.i = add i8 %14, 8
  store i8 %add17.i, ptr %pcm_chunks2, align 1
  br label %detect_packet_formats_828.exit

detect_packet_formats_828.exit:                   ; preds = %if.then12.i, %if.end9.i.detect_packet_formats_828.exit_crit_edge, %if.then.detect_packet_formats_828.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %if.then.detect_packet_formats_828.exit_crit_edge ], [ 0, %if.then12.i ], [ 0, %if.end9.i.detect_packet_formats_828.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  br label %return

if.else:                                          ; preds = %entry
  %cmp8 = icmp eq ptr %1, @snd_motu_spec_896
  br i1 %cmp8, label %if.then9, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %pcm_byte_offset.i19 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 2
  %15 = ptrtoint ptr %pcm_byte_offset.i19 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %pcm_byte_offset.i19, align 2
  %pcm_byte_offset1.i = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %pcm_byte_offset1.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 4, ptr %pcm_byte_offset1.i, align 1
  %msg_chunks.i20 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 3
  %17 = ptrtoint ptr %msg_chunks.i20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %msg_chunks.i20, align 1
  %msg_chunks4.i21 = getelementptr inbounds %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 3
  %18 = ptrtoint ptr %msg_chunks4.i21 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %msg_chunks4.i21, align 1
  %19 = ptrtoint ptr %pcm_chunks to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %pcm_chunks, align 4
  %add.i23 = add i8 %20, 8
  store i8 %add.i23, ptr %pcm_chunks, align 4
  %arrayidx9.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 5, i32 4, i32 1
  %21 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx9.i, align 1
  %add11.i = add i8 %22, 8
  store i8 %add11.i, ptr %arrayidx9.i, align 1
  %23 = ptrtoint ptr %pcm_chunks2 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %pcm_chunks2, align 1
  %add17.i25 = add i8 %24, 8
  store i8 %add17.i25, ptr %pcm_chunks2, align 1
  %arrayidx21.i = getelementptr %struct.snd_motu, ptr %motu, i32 0, i32 6, i32 4, i32 1
  %25 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx21.i, align 1
  %add23.i = add i8 %26, 8
  store i8 %add23.i, ptr %arrayidx21.i, align 1
  br label %return

return:                                           ; preds = %if.then9, %if.else.return_crit_edge, %detect_packet_formats_828.exit
  %retval.0 = phi i32 [ %retval.0.i, %detect_packet_formats_828.exit ], [ 0, %if.then9 ], [ 0, %if.else.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_motu_transaction_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/motu/motu-protocol-v1.c", i32 460, i32 10}
!2 = !{ptr @snd_motu_spec_828, !3, !"snd_motu_spec_828", i1 false, i1 false}
!3 = !{!"../sound/firewire/motu/motu-protocol-v1.c", i32 459, i32 28}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/firewire/motu/motu-protocol-v1.c", i32 467, i32 10}
!6 = !{ptr @snd_motu_spec_896, !7, !"snd_motu_spec_896", i1 false, i1 false}
!7 = !{!"../sound/firewire/motu/motu-protocol-v1.c", i32 466, i32 28}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
