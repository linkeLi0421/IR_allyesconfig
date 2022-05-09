; ModuleID = '/llk/IR_all_yes/sound/firewire/fireworks/fireworks_stream.c_pt.bc'
source_filename = "../sound/firewire/fireworks/fireworks_stream.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_efw = type { ptr, ptr, i32, %struct.mutex, %struct.spinlock, i32, i8, i8, i8, i32, i32, i32, i32, [3 x i32], [3 x i32], %struct.amdtp_stream, %struct.amdtp_stream, %struct.cmp_connection, %struct.cmp_connection, i32, i32, i32, i32, i32, [8 x %struct.snd_efw_phys_grp], [8 x %struct.snd_efw_phys_grp], i32, i8, %struct.wait_queue_head, ptr, ptr, ptr, %struct.amdtp_domain }
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
%struct.amdtp_stream = type { ptr, i32, i32, %struct.mutex, ptr, %struct.iso_packets_buffer, i32, i32, ptr, i32, %union.anon.77, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i8, %struct.wait_queue_head, i32, ptr, ptr, i32, i32, %struct.list_head, ptr }
%struct.iso_packets_buffer = type { %struct.fw_iso_buffer, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.anon.77 = type { %struct.anon.80 }
%struct.anon.80 = type { i32, i32, %struct.anon.81, i32, i32, i32, ptr, i32 }
%struct.anon.81 = type { ptr, i32, i32, i32 }
%struct.cmp_connection = type { i32, i8, %struct.mutex, %struct.fw_iso_resources, i32, i32, i32, i32 }
%struct.fw_iso_resources = type { i64, ptr, %struct.mutex, i32, i32, i32, i32, i8 }
%struct.snd_efw_phys_grp = type { i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.amdtp_domain = type { %struct.list_head, i32, i32, ptr, %struct.anon.82, %struct.anon.83 }
%struct.anon.82 = type { i32, i32, i32 }
%struct.anon.83 = type { i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"sound/firewire/fireworks/fireworks_stream.c\00", [52 x i8] zeroinitializer }, align 32
@check_connection_used_by_others._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str, i32 121, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Connection established by others: %cPCR[%d]\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"check_connection_used_by_others\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@check_connection_used_by_others._entry_ptr = internal global ptr @check_connection_used_by_others._entry, section ".printk_index", align 4
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"sound/firewire/fireworks/../amdtp-stream.h\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 84344832, i64 84345600, i64 84410368]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 371, i32 6 }
@___asan_gen_.9 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [47 x i8] c"../sound/firewire/fireworks/fireworks_stream.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 118, i32 3 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [46 x i8] c"../sound/firewire/fireworks/../amdtp-stream.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 348, i32 7 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @check_connection_used_by_others._entry, ptr @check_connection_used_by_others._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_connection_used_by_others._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_stream_init_duplex(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  %call = tail call fastcc i32 @init_stream(ptr noundef %efw, ptr noundef %tx_stream)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16
  %in_conn.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  %unit.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 1
  %0 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit.i, align 4
  %call.i = tail call i32 @cmp_connection_init(ptr noundef %in_conn.i, ptr noundef %1, i32 noundef 0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end.if.then3_crit_edge, label %if.end3.i

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then3

if.end3.i:                                        ; preds = %if.end
  %2 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit.i, align 4
  %call5.i = tail call i32 @amdtp_am824_init(ptr noundef %rx_stream, ptr noundef %3, i32 noundef 0, i32 noundef 1025) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.then7.i, label %if.end5

if.then7.i:                                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i) #4
  br label %if.then3

if.then3:                                         ; preds = %if.then7.i, %if.end.if.then3_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i, %if.end.if.then3_crit_edge ], [ %call5.i, %if.then7.i ]
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #4
  %out_conn.i42 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  br label %cleanup.sink.split

if.end5:                                          ; preds = %if.end3.i
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  %call6 = tail call i32 @amdtp_domain_init(ptr noundef %domain) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end11

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #4
  %out_conn.i45 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i45) #4
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  br label %cleanup.sink.split

if.end11:                                         ; preds = %if.end5
  %call12 = tail call i32 @snd_efw_command_set_tx_mode(ptr noundef %efw, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.then14, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #4
  %out_conn.i51 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i51) #4
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then14, %if.then8, %if.then3
  %in_conn.i.sink = phi ptr [ %in_conn.i, %if.then14 ], [ %in_conn.i, %if.then8 ], [ %out_conn.i42, %if.then3 ]
  %retval.0.ph = phi i32 [ %call12, %if.then14 ], [ %call6, %if.then8 ], [ %retval.0.i.ph, %if.then3 ]
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end11.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_stream(ptr noundef %efw, ptr noundef %stream) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  %cmp = icmp eq ptr %tx_stream, %stream
  %out_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  %in_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  %conn.0 = select i1 %cmp, ptr %out_conn, ptr %in_conn
  %s_dir.0 = zext i1 %cmp to i32
  %unit = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 1
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %unit, align 4
  %call = tail call i32 @cmp_connection_init(ptr noundef %conn.0, ptr noundef %1, i32 noundef %s_dir.0, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp1 = icmp slt i32 %call, 0
  br i1 %cmp1, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %entry
  %2 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %unit, align 4
  %call5 = tail call i32 @amdtp_am824_init(ptr noundef %stream, ptr noundef %3, i32 noundef %s_dir.0, i32 noundef 1025) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @amdtp_stream_destroy(ptr noundef %stream) #4
  tail call void @cmp_connection_destroy(ptr noundef %conn.0) #4
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  br i1 %cmp, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  %flags = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or18 = or i32 %5, 22
  store i32 %or18, ptr %flags, align 4
  %is_fireworks3 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 8
  %6 = ptrtoint ptr %is_fireworks3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_fireworks3, align 2, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then11.if.end29_crit_edge, label %land.lhs.true

if.then11.if.end29_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

land.lhs.true:                                    ; preds = %if.then11
  %firmware_version = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 9
  %8 = ptrtoint ptr %firmware_version to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %firmware_version, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %land.lhs.true.if.end29_crit_edge [
    i32 84344832, label %land.lhs.true.if.then25_crit_edge
    i32 84345600, label %land.lhs.true.if.then25_crit_edge74
    i32 84410368, label %land.lhs.true.if.then25_crit_edge75
  ]

land.lhs.true.if.then25_crit_edge75:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge74:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.then25_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then25

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then25:                                        ; preds = %land.lhs.true.if.then25_crit_edge, %land.lhs.true.if.then25_crit_edge74, %land.lhs.true.if.then25_crit_edge75
  %or28 = or i32 %5, 534
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or28, ptr %flags, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then25, %land.lhs.true.if.end29_crit_edge, %if.then11.if.end29_crit_edge
  %is_af9 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 7
  %12 = ptrtoint ptr %is_af9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_af9, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool30.not = icmp eq i8 %13, 0
  br i1 %tobool30.not, label %lor.lhs.false31, label %if.end29.if.then34_crit_edge

if.end29.if.then34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

lor.lhs.false31:                                  ; preds = %if.end29
  %firmware_version32 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 9
  %14 = ptrtoint ptr %firmware_version32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %firmware_version32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 67502080, i32 %15)
  %cmp33 = icmp eq i32 %15, 67502080
  br i1 %cmp33, label %lor.lhs.false31.if.then34_crit_edge, label %lor.lhs.false31.if.end38_crit_edge

lor.lhs.false31.if.end38_crit_edge:               ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

lor.lhs.false31.if.then34_crit_edge:              ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then34

if.then34:                                        ; preds = %lor.lhs.false31.if.then34_crit_edge, %if.end29.if.then34_crit_edge
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %or37 = or i32 %17, 8
  store i32 %or37, ptr %flags, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then34, %lor.lhs.false31.if.end38_crit_edge
  %firmware_version39 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 9
  %18 = ptrtoint ptr %firmware_version39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %firmware_version39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 84213760, i32 %19)
  %cmp40 = icmp eq i32 %19, 84213760
  br i1 %cmp40, label %if.then41, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #6
  %dbc_interval = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15, i32 10, i32 0, i32 2
  %20 = ptrtoint ptr %dbc_interval to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 8, ptr %dbc_interval, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then41, %if.end38.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then7 ], [ %call, %entry.cleanup_crit_edge ], [ %call5, %if.end38.cleanup_crit_edge ], [ %call5, %if.then41 ], [ %call5, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_set_tx_mode(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_stream_reserve_duplex(ptr noundef %efw, i32 noundef %rate, i32 noundef %frames_per_period, i32 noundef %frames_per_buffer) local_unnamed_addr #0 align 64 {
entry:
  %used.i = alloca i8, align 1
  %curr_rate = alloca i32, align 4
  %mode = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %curr_rate) #4
  %0 = ptrtoint ptr %curr_rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %curr_rate, align 4, !annotation !21
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %used.i) #4
  %1 = ptrtoint ptr %used.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %used.i, align 1, !annotation !21
  %in_conn.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  %call.i = call i32 @cmp_connection_check_used(ptr noundef %in_conn.i, ptr noundef nonnull %used.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, -1
  br i1 %cmp1.i, label %land.lhs.true.i, label %entry.check_connection_used_by_others.exit.thread_crit_edge

entry.check_connection_used_by_others.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %check_connection_used_by_others.exit.thread

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %used.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %used.i, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %context.i.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16, i32 4
  %4 = ptrtoint ptr %context.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %context.i.i, align 4
  %cmp.i.i.not.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not.i, label %do.end.i, label %land.lhs.true2.i.if.end_crit_edge

land.lhs.true2.i.if.end_crit_edge:                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end.i:                                         ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #6
  %unit.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 1
  %6 = ptrtoint ptr %unit.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unit.i, align 4
  %direction.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18, i32 7
  %8 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5.i = icmp eq i32 %9, 1
  %cond.i = select i1 %cmp5.i, i32 111, i32 105
  %pcr_index.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18, i32 5
  %10 = ptrtoint ptr %pcr_index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pcr_index.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.1, i32 noundef %cond.i, i32 noundef %11) #7
  br label %check_connection_used_by_others.exit.thread

check_connection_used_by_others.exit.thread:      ; preds = %do.end.i, %entry.check_connection_used_by_others.exit.thread_crit_edge
  %err.0.i.ph = phi i32 [ %call.i, %entry.check_connection_used_by_others.exit.thread_crit_edge ], [ -16, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #4
  br label %cleanup42

if.end:                                           ; preds = %land.lhs.true2.i.if.end_crit_edge, %land.lhs.true.i.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %used.i) #4
  %call1 = call i32 @snd_efw_command_get_sampling_rate(ptr noundef %efw, ptr noundef nonnull %curr_rate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup42_crit_edge, label %if.end4

if.end.cleanup42_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %cmp5 = icmp eq i32 %rate, 0
  br i1 %cmp5, label %if.then6, label %if.end4.if.end7_crit_edge

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %curr_rate, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %rate.addr.0 = phi i32 [ %13, %if.then6 ], [ %rate, %if.end4.if.end7_crit_edge ]
  %14 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %15)
  %cmp8.not = icmp eq i32 %rate.addr.0, %15
  br i1 %cmp8.not, label %if.end7.if.end12_crit_edge, label %if.then9

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end12

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  call void @amdtp_domain_stop(ptr noundef %domain) #4
  %out_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  call void @cmp_connection_break(ptr noundef %out_conn) #4
  call void @cmp_connection_break(ptr noundef %in_conn.i) #4
  call void @cmp_connection_release(ptr noundef %out_conn) #4
  call void @cmp_connection_release(ptr noundef %in_conn.i) #4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7.if.end12_crit_edge
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 19
  %16 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp13 = icmp eq i32 %17, 0
  br i1 %cmp13, label %if.end12.if.then15_crit_edge, label %lor.lhs.false

if.end12.if.then15_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false:                                    ; preds = %if.end12
  %18 = ptrtoint ptr %curr_rate to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %curr_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rate.addr.0, i32 %19)
  %cmp14.not = icmp eq i32 %rate.addr.0, %19
  br i1 %cmp14.not, label %lor.lhs.false.cleanup42_crit_edge, label %lor.lhs.false.if.then15_crit_edge

lor.lhs.false.if.then15_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then15

lor.lhs.false.cleanup42_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup42

if.then15:                                        ; preds = %lor.lhs.false.if.then15_crit_edge, %if.end12.if.then15_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode) #4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %mode, align 4, !annotation !21
  %call16 = call i32 @snd_efw_command_set_sampling_rate(ptr noundef %efw, i32 noundef %rate.addr.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.then15.cleanup.thread_crit_edge, label %if.end19

if.then15.cleanup.thread_crit_edge:               ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end19:                                         ; preds = %if.then15
  %call20 = call i32 @snd_efw_get_multiplier_mode(i32 noundef %rate.addr.0, ptr noundef nonnull %mode) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %if.end19.cleanup.thread_crit_edge, label %if.end23

if.end19.cleanup.thread_crit_edge:                ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end23:                                         ; preds = %if.end19
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  %21 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mode, align 4
  %arrayidx.i = getelementptr %struct.snd_efw, ptr %efw, i32 0, i32 13, i32 %22
  %midi_out_ports.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 11
  %23 = ptrtoint ptr %midi_out_ports.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %midi_ports.0.i = load i32, ptr %midi_out_ports.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %pcm_channels.0.i = load i32, ptr %arrayidx.i, align 4
  %call.i81 = call i32 @amdtp_am824_set_parameters(ptr noundef %tx_stream, i32 noundef %rate.addr.0, i32 noundef %pcm_channels.0.i, i32 noundef %midi_ports.0.i, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %cmp2.i = icmp slt i32 %call.i81, 0
  br i1 %cmp2.i, label %if.end23.cleanup.thread_crit_edge, label %keep_resources.exit

if.end23.cleanup.thread_crit_edge:                ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

keep_resources.exit:                              ; preds = %if.end23
  %out_conn.i82 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  %call5.i = call i32 @amdtp_stream_get_max_payload(ptr noundef %tx_stream) #4
  %call6.i = call i32 @cmp_connection_reserve(ptr noundef %out_conn.i82, i32 noundef %call5.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp25 = icmp slt i32 %call6.i, 0
  br i1 %cmp25, label %keep_resources.exit.cleanup.thread_crit_edge, label %if.end27

keep_resources.exit.cleanup.thread_crit_edge:     ; preds = %keep_resources.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.thread

if.end27:                                         ; preds = %keep_resources.exit
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %mode, align 4
  %arrayidx1.i87 = getelementptr %struct.snd_efw, ptr %efw, i32 0, i32 14, i32 %26
  %midi_in_ports.i88 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 10
  %27 = ptrtoint ptr %midi_in_ports.i88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %midi_ports.0.i89 = load i32, ptr %midi_in_ports.i88, align 4
  %28 = ptrtoint ptr %arrayidx1.i87 to i32
  call void @__asan_load4_noabort(i32 %28)
  %pcm_channels.0.i90 = load i32, ptr %arrayidx1.i87, align 4
  %call.i91 = call i32 @amdtp_am824_set_parameters(ptr noundef %rx_stream, i32 noundef %rate.addr.0, i32 noundef %pcm_channels.0.i90, i32 noundef %midi_ports.0.i89, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp2.i92 = icmp slt i32 %call.i91, 0
  br i1 %cmp2.i92, label %if.end27.if.then31_crit_edge, label %keep_resources.exit99

if.end27.if.then31_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

keep_resources.exit99:                            ; preds = %if.end27
  %call5.i95 = call i32 @amdtp_stream_get_max_payload(ptr noundef %rx_stream) #4
  %call6.i96 = call i32 @cmp_connection_reserve(ptr noundef %in_conn.i, i32 noundef %call5.i95) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i96)
  %cmp30 = icmp slt i32 %call6.i96, 0
  br i1 %cmp30, label %keep_resources.exit99.if.then31_crit_edge, label %cleanup

keep_resources.exit99.if.then31_crit_edge:        ; preds = %keep_resources.exit99
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then31

if.then31:                                        ; preds = %keep_resources.exit99.if.then31_crit_edge, %if.end27.if.then31_crit_edge
  %retval.0.i98106 = phi i32 [ %call6.i96, %keep_resources.exit99.if.then31_crit_edge ], [ %call.i91, %if.end27.if.then31_crit_edge ]
  call void @cmp_connection_release(ptr noundef %in_conn.i) #4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then31, %keep_resources.exit.cleanup.thread_crit_edge, %if.end23.cleanup.thread_crit_edge, %if.end19.cleanup.thread_crit_edge, %if.then15.cleanup.thread_crit_edge
  %retval.0.ph = phi i32 [ %call6.i, %keep_resources.exit.cleanup.thread_crit_edge ], [ %call20, %if.end19.cleanup.thread_crit_edge ], [ %call16, %if.then15.cleanup.thread_crit_edge ], [ %retval.0.i98106, %if.then31 ], [ %call.i81, %if.end23.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #4
  br label %cleanup42

cleanup:                                          ; preds = %keep_resources.exit99
  call void @__sanitizer_cov_trace_pc() #6
  %events_per_period1.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32, i32 1
  %29 = ptrtoint ptr %events_per_period1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %frames_per_period, ptr %events_per_period1.i, align 4
  %events_per_buffer2.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32, i32 2
  %30 = ptrtoint ptr %events_per_buffer2.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %frames_per_buffer, ptr %events_per_buffer2.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode) #4
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup, %cleanup.thread, %lor.lhs.false.cleanup42_crit_edge, %if.end.cleanup42_crit_edge, %check_connection_used_by_others.exit.thread
  %retval.1 = phi i32 [ %call1, %if.end.cleanup42_crit_edge ], [ %err.0.i.ph, %check_connection_used_by_others.exit.thread ], [ %retval.0.ph, %cleanup.thread ], [ 0, %cleanup ], [ 0, %lor.lhs.false.cleanup42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %curr_rate) #4
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_get_sampling_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_break(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_command_set_sampling_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_efw_get_multiplier_mode(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_stream_start_duplex(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  %rate = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate) #4
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %rate, align 4, !annotation !21
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 19
  %1 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup37_crit_edge, label %if.end

entry.cleanup37_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.end:                                           ; preds = %entry
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16
  %packet_index.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16, i32 7
  %3 = ptrtoint ptr %packet_index.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %packet_index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i = icmp slt i32 %4, 0
  br i1 %cmp.i, label %if.end.if.then2_crit_edge, label %lor.lhs.false

if.end.if.then2_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

lor.lhs.false:                                    ; preds = %if.end
  %packet_index.i63 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15, i32 7
  %5 = ptrtoint ptr %packet_index.i63 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %packet_index.i63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i64 = icmp slt i32 %6, 0
  br i1 %cmp.i64, label %lor.lhs.false.if.then2_crit_edge, label %lor.lhs.false.if.end3_crit_edge

lor.lhs.false.if.end3_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

lor.lhs.false.if.then2_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then2

if.then2:                                         ; preds = %lor.lhs.false.if.then2_crit_edge, %if.end.if.then2_crit_edge
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %out_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_break(ptr noundef %out_conn) #4
  %in_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  tail call void @cmp_connection_break(ptr noundef %in_conn) #4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %lor.lhs.false.if.end3_crit_edge
  %call4 = call i32 @snd_efw_command_get_sampling_rate(ptr noundef %efw, ptr noundef nonnull %rate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.cleanup37_crit_edge, label %if.end7

if.end3.cleanup37_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.end7:                                          ; preds = %if.end3
  %context.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16, i32 4
  %7 = ptrtoint ptr %context.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %context.i, align 4
  %cmp.i.i.not = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then10, label %if.end7.cleanup37_crit_edge

if.end7.cleanup37_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

if.then10:                                        ; preds = %if.end7
  %is_fireworks3 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 8
  %9 = ptrtoint ptr %is_fireworks3 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_fireworks3, align 2, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then10.if.else_crit_edge, label %land.lhs.true

if.then10.if.else_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true:                                    ; preds = %if.then10
  %is_af9 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 7
  %11 = ptrtoint ptr %is_af9 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %is_af9, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool11.not = icmp eq i8 %12, 0
  br i1 %tobool11.not, label %land.lhs.true.if.end13_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.else

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then10.if.else_crit_edge
  br label %if.end13

if.end13:                                         ; preds = %if.else, %land.lhs.true.if.end13_crit_edge
  %tx_init_skip_cycles.0 = phi i32 [ 0, %if.else ], [ 6000, %land.lhs.true.if.end13_crit_edge ]
  %in_conn.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  %call.i = call i32 @cmp_connection_establish(ptr noundef %in_conn.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp1.i = icmp slt i32 %call.i, 0
  br i1 %cmp1.i, label %if.end13.error_crit_edge, label %if.end3.i

if.end13.error_crit_edge:                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end3.i:                                        ; preds = %if.end13
  %domain.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  %channel.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18, i32 3, i32 3
  %13 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %channel.i, align 8
  %15 = ptrtoint ptr %in_conn.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %in_conn.i, align 8
  %call4.i = call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %rx_stream, i32 noundef %14, i32 noundef %16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.i = icmp slt i32 %call4.i, 0
  br i1 %cmp5.i, label %if.end3.i.error.sink.split_crit_edge, label %if.end18

if.end3.i.error.sink.split_crit_edge:             ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.sink.split

if.end18:                                         ; preds = %if.end3.i
  %out_conn.i66 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  %call.i68 = call i32 @cmp_connection_establish(ptr noundef %out_conn.i66) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp1.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp1.i69, label %if.end18.error_crit_edge, label %if.end3.i74

if.end18.error_crit_edge:                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

if.end3.i74:                                      ; preds = %if.end18
  %tx_stream19 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  %channel.i71 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17, i32 3, i32 3
  %17 = ptrtoint ptr %channel.i71 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channel.i71, align 8
  %19 = ptrtoint ptr %out_conn.i66 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %out_conn.i66, align 8
  %call4.i72 = call i32 @amdtp_domain_add_stream(ptr noundef %domain.i, ptr noundef %tx_stream19, i32 noundef %18, i32 noundef %20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i72)
  %cmp5.i73 = icmp slt i32 %call4.i72, 0
  br i1 %cmp5.i73, label %if.end3.i74.error.sink.split_crit_edge, label %if.end23

if.end3.i74.error.sink.split_crit_edge:           ; preds = %if.end3.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %error.sink.split

if.end23:                                         ; preds = %if.end3.i74
  %call25 = call i32 @amdtp_domain_start(ptr noundef %domain.i, i32 noundef %tx_init_skip_cycles.0, i1 noundef zeroext true, i1 noundef zeroext false) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.error_crit_edge, label %for.cond.i.preheader

if.end23.error_crit_edge:                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.i.preheader:                             ; preds = %if.end23
  %21 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pn.i93 = load ptr, ptr %domain.i, align 4
  %cmp.not.i94 = icmp eq ptr %.pn.i93, %domain.i
  br i1 %cmp.not.i94, label %for.cond.i.preheader.cleanup37_crit_edge, label %for.cond.i.preheader.for.body.i_crit_edge

for.cond.i.preheader.for.body.i_crit_edge:        ; preds = %for.cond.i.preheader
  br label %for.body.i

for.cond.i.preheader.cleanup37_crit_edge:         ; preds = %for.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

for.body.i:                                       ; preds = %for.cond.i.backedge.for.body.i_crit_edge, %for.cond.i.preheader.for.body.i_crit_edge
  %.pn.i95 = phi ptr [ %.pn.i, %for.cond.i.backedge.for.body.i_crit_edge ], [ %.pn.i93, %for.cond.i.preheader.for.body.i_crit_edge ]
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 348) #4
  %ready_processing.i = getelementptr i8, ptr %.pn.i95, i32 -76
  %22 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ready_processing.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i, label %if.then12.i, label %for.body.i.for.cond.i.backedge_crit_edge

for.body.i.for.cond.i.backedge_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.then12.i:                                      ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  %24 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #4
  %ready_wait.i = getelementptr i8, ptr %.pn.i95, i32 -72
  %call1511.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #4
  %25 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ready_processing.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool18.not12.not.i = icmp eq i8 %26, 0
  br i1 %tobool18.not12.not.i, label %if.then12.i.if.end34.i_crit_edge, label %if.then12.i.for.end.i_crit_edge

if.then12.i.for.end.i_crit_edge:                  ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

if.then12.i.if.end34.i_crit_edge:                 ; preds = %if.then12.i
  br label %if.end34.i

if.end34.i:                                       ; preds = %cleanup.i.if.end34.i_crit_edge, %if.then12.i.if.end34.i_crit_edge
  %__ret13.115.i = phi i32 [ %__ret13.1.i, %cleanup.i.if.end34.i_crit_edge ], [ 100, %if.then12.i.if.end34.i_crit_edge ]
  %call1514.i = phi i32 [ %call15.i, %cleanup.i.if.end34.i_crit_edge ], [ %call1511.i, %if.then12.i.if.end34.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1514.i)
  %tobool35.not.i = icmp eq i32 %call1514.i, 0
  br i1 %tobool35.not.i, label %cleanup.i, label %if.end34.i.if.end41.i_crit_edge

if.end34.i.if.end41.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end41.i

cleanup.i:                                        ; preds = %if.end34.i
  %call38.i = call i32 @schedule_timeout(i32 noundef %__ret13.115.i) #4
  %call15.i = call i32 @prepare_to_wait_event(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #4
  %27 = ptrtoint ptr %ready_processing.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ready_processing.i, align 4, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool18.not.i = icmp eq i8 %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38.i)
  %tobool22.not.i = icmp eq i32 %call38.i, 0
  %spec.store.select56.i = select i1 %tobool22.not.i, i32 1, i32 %call38.i
  %__ret13.1.i = select i1 %tobool18.not.i, i32 %call38.i, i32 %spec.store.select56.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret13.1.i)
  %tobool28.not.i = icmp eq i32 %__ret13.1.i, 0
  %not.tobool18.not.i = xor i1 %tobool18.not.i, true
  %29 = select i1 %not.tobool18.not.i, i1 true, i1 %tobool28.not.i
  br i1 %29, label %cleanup.i.for.end.i_crit_edge, label %cleanup.i.if.end34.i_crit_edge

cleanup.i.if.end34.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end34.i

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %if.then12.i.for.end.i_crit_edge
  %__ret13.1.lcssa.i = phi i32 [ 100, %if.then12.i.for.end.i_crit_edge ], [ %__ret13.1.i, %cleanup.i.for.end.i_crit_edge ]
  call void @finish_wait(ptr noundef %ready_wait.i, ptr noundef nonnull %__wq_entry.i) #4
  br label %if.end41.i

if.end41.i:                                       ; preds = %for.end.i, %if.end34.i.if.end41.i_crit_edge
  %__ret13.23.i = phi i32 [ %__ret13.1.lcssa.i, %for.end.i ], [ %call1514.i, %if.end34.i.if.end41.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret13.23.i)
  %cmp43.i = icmp slt i32 %__ret13.23.i, 1
  br i1 %cmp43.i, label %if.end41.i.error_crit_edge, label %if.end41.i.for.cond.i.backedge_crit_edge

if.end41.i.for.cond.i.backedge_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.cond.i.backedge

if.end41.i.error_crit_edge:                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %error

for.cond.i.backedge:                              ; preds = %if.end41.i.for.cond.i.backedge_crit_edge, %for.body.i.for.cond.i.backedge_crit_edge
  %30 = ptrtoint ptr %.pn.i95 to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn.i95, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %domain.i
  br i1 %cmp.not.i, label %for.cond.i.backedge.cleanup37_crit_edge, label %for.cond.i.backedge.for.body.i_crit_edge

for.cond.i.backedge.for.body.i_crit_edge:         ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.cond.i.backedge.cleanup37_crit_edge:          ; preds = %for.cond.i.backedge
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup37

error.sink.split:                                 ; preds = %if.end3.i74.error.sink.split_crit_edge, %if.end3.i.error.sink.split_crit_edge
  %out_conn.i66.sink = phi ptr [ %in_conn.i, %if.end3.i.error.sink.split_crit_edge ], [ %out_conn.i66, %if.end3.i74.error.sink.split_crit_edge ]
  %err.0.ph.ph = phi i32 [ %call4.i, %if.end3.i.error.sink.split_crit_edge ], [ %call4.i72, %if.end3.i74.error.sink.split_crit_edge ]
  call void @cmp_connection_break(ptr noundef %out_conn.i66.sink) #4
  br label %error

error:                                            ; preds = %error.sink.split, %if.end41.i.error_crit_edge, %if.end23.error_crit_edge, %if.end18.error_crit_edge, %if.end13.error_crit_edge
  %err.0.ph = phi i32 [ %call25, %if.end23.error_crit_edge ], [ %call.i, %if.end13.error_crit_edge ], [ %call.i68, %if.end18.error_crit_edge ], [ %err.0.ph.ph, %error.sink.split ], [ -110, %if.end41.i.error_crit_edge ]
  %domain34 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  call void @amdtp_domain_stop(ptr noundef %domain34) #4
  %out_conn35 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  call void @cmp_connection_break(ptr noundef %out_conn35) #4
  call void @cmp_connection_break(ptr noundef %in_conn.i) #4
  br label %cleanup37

cleanup37:                                        ; preds = %error, %for.cond.i.backedge.cleanup37_crit_edge, %for.cond.i.preheader.cleanup37_crit_edge, %if.end7.cleanup37_crit_edge, %if.end3.cleanup37_crit_edge, %entry.cleanup37_crit_edge
  %retval.0 = phi i32 [ %err.0.ph, %error ], [ -5, %entry.cleanup37_crit_edge ], [ %call4, %if.end3.cleanup37_crit_edge ], [ 0, %if.end7.cleanup37_crit_edge ], [ 0, %for.cond.i.preheader.cleanup37_crit_edge ], [ 0, %for.cond.i.backedge.cleanup37_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_start(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_stream_stop_duplex(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %substreams_counter = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 19
  %0 = ptrtoint ptr %substreams_counter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %substreams_counter, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %out_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_break(ptr noundef %out_conn) #4
  %in_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  tail call void @cmp_connection_break(ptr noundef %in_conn) #4
  tail call void @cmp_connection_release(ptr noundef %out_conn) #4
  tail call void @cmp_connection_release(ptr noundef %in_conn) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_stream_update_duplex(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  tail call void @amdtp_domain_stop(ptr noundef %domain) #4
  %out_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_break(ptr noundef %out_conn) #4
  %in_conn = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  tail call void @cmp_connection_break(ptr noundef %in_conn) #4
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16
  tail call void @amdtp_stream_pcm_abort(ptr noundef %rx_stream) #4
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  tail call void @amdtp_stream_pcm_abort(ptr noundef %tx_stream) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_pcm_abort(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_stream_destroy_duplex(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %domain = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 32
  tail call void @amdtp_domain_destroy(ptr noundef %domain) #4
  %rx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 16
  tail call void @amdtp_stream_destroy(ptr noundef %rx_stream) #4
  %in_conn.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 18
  tail call void @cmp_connection_destroy(ptr noundef %in_conn.i) #4
  %tx_stream = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 15
  tail call void @amdtp_stream_destroy(ptr noundef %tx_stream) #4
  %out_conn.i7 = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 17
  tail call void @cmp_connection_destroy(ptr noundef %out_conn.i7) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_domain_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_stream_lock_changed(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_lock_changed = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 27
  %0 = ptrtoint ptr %dev_lock_changed to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %dev_lock_changed, align 8
  %hwdep_wait = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %hwdep_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_efw_stream_lock_try(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %dev_lock_count = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 26
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 27
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %end

end:                                              ; preds = %if.then3, %if.end.end_crit_edge, %entry.end_crit_edge
  %err.0 = phi i32 [ -16, %entry.end_crit_edge ], [ 0, %if.then3 ], [ 0, %if.end.end_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_efw_stream_lock_release(ptr noundef %efw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 4
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #4
  %dev_lock_count = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 26
  %0 = ptrtoint ptr %dev_lock_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dev_lock_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp slt i32 %1, 1
  br i1 %cmp, label %do.end, label %if.end21.critedge, !prof !22

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #4
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %end

if.then24:                                        ; preds = %if.end21.critedge
  call void @__sanitizer_cov_trace_pc() #6
  %dev_lock_changed.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 27
  %3 = ptrtoint ptr %dev_lock_changed.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %dev_lock_changed.i, align 8
  %hwdep_wait.i = getelementptr inbounds %struct.snd_efw, ptr %efw, i32 0, i32 28
  tail call void @__wake_up(ptr noundef %hwdep_wait.i, i32 noundef 3, i32 noundef 1, ptr noundef null) #4
  br label %end

end:                                              ; preds = %if.then24, %if.end21.critedge.end_crit_edge, %do.end
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @amdtp_stream_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cmp_connection_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_check_used(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_am824_set_parameters(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_reserve(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_stream_get_max_payload(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cmp_connection_establish(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amdtp_domain_add_stream(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
declare void @llvm.arm.gnu.eabi.mcount() #4

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
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/fireworks/fireworks_stream.c", i32 371, i32 6}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/firewire/fireworks/fireworks_stream.c", i32 118, i32 3}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @check_connection_used_by_others._entry, !3, !"_entry", i1 false, i1 false}
!8 = !{ptr @check_connection_used_by_others._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/firewire/fireworks/../amdtp-stream.h", i32 348, i32 7}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!20 = !{i8 0, i8 2}
!21 = !{!"auto-init"}
!22 = !{!"branch_weights", i32 1, i32 2000}
