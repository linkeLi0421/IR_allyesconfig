; ModuleID = '/llk/IR_all_yes/drivers/firewire/core-topology.c_pt.bc'
source_filename = "../drivers/firewire/core-topology.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fw_core_handle_bus_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_fw_core_handle_bus_reset\09\09\09\09"
module asm "\09.long\09__crc_fw_core_handle_bus_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fw_core_handle_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22fw_core_handle_bus_reset\22\09\09\09\09\09"
module asm "__kstrtabns_fw_core_handle_bus_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_node = type { i16, i8, i8, i8, i8, %struct.refcount_struct, %struct.list_head, ptr, [0 x ptr] }

@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"topology build failed\0A\00", [41 x i8] zeroinitializer }, align 32
@__kstrtab_fw_core_handle_bus_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_fw_core_handle_bus_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_fw_core_handle_bus_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fw_core_handle_bus_reset to i32), ptr @__kstrtab_fw_core_handle_bus_reset, ptr @__kstrtabns_fw_core_handle_bus_reset }, section "___ksymtab+fw_core_handle_bus_reset", align 4
@.str.1 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"inconsistent extended self IDs\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"PHY ID mismatch in self ID: %d != %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"topology stack underflow\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"out of memory while building topology\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"parent port inconsistency for node %d: parent_count=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/firewire/core-topology.c\00", [63 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 546, i32 16 }
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 195, i32 17 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 201, i32 17 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 207, i32 17 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 225, i32 17 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 274, i32 17 }
@___asan_gen_.26 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.27 = private constant [36 x i8] c"../drivers/firewire/core-topology.c\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 425, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_fw_core_handle_bus_reset, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_destroy_nodes(ptr noundef %card) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %color = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 22
  %0 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %color, align 4
  %inc = add i8 %1, 1
  store i8 %inc, ptr %color, align 4
  %local_node = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 19
  %2 = ptrtoint ptr %local_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %local_node, align 8
  %cmp5.not = icmp eq ptr %3, null
  br i1 %cmp5.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef nonnull %3, ptr noundef nonnull @report_lost_node)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %local_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %local_node, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef %root, ptr nocapture noundef readonly %callback) unnamed_addr #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %ref_count.i = getelementptr inbounds %struct.fw_node, ptr %root, i32 0, i32 5
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %3 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !25
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !26

entry.if.end15.sink.split.i.i.i.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %entry
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.fw_node_get.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !27

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.fw_node_get.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_node_get.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef %.sink.i.i.i.i) #6
  br label %fw_node_get.exit

fw_node_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.fw_node_get.exit_crit_edge
  %link = getelementptr inbounds %struct.fw_node, ptr %root, i32 0, i32 6
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %6, ptr noundef nonnull %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %fw_node_get.exit.list_add_tail.exit_crit_edge

fw_node_get.exit.list_add_tail.exit_crit_edge:    ; preds = %fw_node_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %fw_node_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %link, ptr %0, align 4
  %8 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.fw_node, ptr %root, i32 0, i32 6, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %link, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %fw_node_get.exit.list_add_tail.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn90 = load ptr, ptr %list, align 4
  %cmp.not92 = icmp eq ptr %.pn90, %list
  br i1 %cmp.not92, label %list_add_tail.exit.for.end24_crit_edge, label %for.body.lr.ph

list_add_tail.exit.for.end24_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.body.lr.ph:                                   ; preds = %list_add_tail.exit
  %color = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 22
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn94 = phi ptr [ %.pn90, %for.body.lr.ph ], [ %.pn, %for.end.for.body_crit_edge ]
  %parent.093 = phi ptr [ null, %for.body.lr.ph ], [ %parent.1.lcssa, %for.end.for.body_crit_edge ]
  %node.095 = getelementptr i8, ptr %.pn94, i32 -12
  %12 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %color, align 4
  %color3 = getelementptr i8, ptr %.pn94, i32 -10
  %14 = ptrtoint ptr %color3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %color3, align 2
  %port_count = getelementptr i8, ptr %.pn94, i32 -9
  %15 = ptrtoint ptr %port_count to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port_count, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp587.not = icmp eq i8 %16, 0
  br i1 %cmp587.not, label %for.body.for.end_crit_edge, label %for.body7.lr.ph

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body7.lr.ph:                                  ; preds = %for.body
  %ports = getelementptr i8, ptr %.pn94, i32 12
  br label %for.body7

for.body7:                                        ; preds = %for.inc.for.body7_crit_edge, %for.body7.lr.ph
  %parent.189 = phi ptr [ %parent.093, %for.body7.lr.ph ], [ %parent.2, %for.inc.for.body7_crit_edge ]
  %i.088 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc, %for.inc.for.body7_crit_edge ]
  %arrayidx = getelementptr [0 x ptr], ptr %ports, i32 0, i32 %i.088
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.body7.for.inc_crit_edge, label %if.end

for.body7.for.inc_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body7
  %color8 = getelementptr inbounds %struct.fw_node, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %color8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %color8, align 2
  %21 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %color, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %20, i8 %22)
  %cmp12 = icmp eq i8 %20, %22
  br i1 %cmp12, label %if.end.for.inc_crit_edge, label %if.else

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.else:                                          ; preds = %if.end
  %ref_count.i68 = getelementptr inbounds %struct.fw_node, ptr %18, i32 0, i32 5
  %call.i.i.i.i.i.i69 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i68, i32 noundef 4) #6
  call void @llvm.prefetch.p0(ptr %ref_count.i68, i32 1, i32 3, i32 1) #6
  %23 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i68, ptr %ref_count.i68, i32 1, ptr elementtype(i32) %ref_count.i68) #6, !srcloc !25
  %asmresult.i.i.i.i.i.i70 = extractvalue { i32, i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i70)
  %tobool1.not.i.i.i.i71 = icmp eq i32 %asmresult.i.i.i.i.i.i70, 0
  br i1 %tobool1.not.i.i.i.i71, label %if.else.if.end15.sink.split.i.i.i.i76_crit_edge, label %if.else.i.i.i.i74, !prof !26

if.else.if.end15.sink.split.i.i.i.i76_crit_edge:  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i76

if.else.i.i.i.i74:                                ; preds = %if.else
  %add.i.i.i.i72 = add i32 %asmresult.i.i.i.i.i.i70, 1
  %24 = or i32 %add.i.i.i.i72, %asmresult.i.i.i.i.i.i70
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %24)
  %.not.i.i.i.i73 = icmp sgt i32 %24, -1
  br i1 %.not.i.i.i.i73, label %if.else.i.i.i.i74.fw_node_get.exit77_crit_edge, label %if.else.i.i.i.i74.if.end15.sink.split.i.i.i.i76_crit_edge, !prof !27

if.else.i.i.i.i74.if.end15.sink.split.i.i.i.i76_crit_edge: ; preds = %if.else.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15.sink.split.i.i.i.i76

if.else.i.i.i.i74.fw_node_get.exit77_crit_edge:   ; preds = %if.else.i.i.i.i74
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_node_get.exit77

if.end15.sink.split.i.i.i.i76:                    ; preds = %if.else.i.i.i.i74.if.end15.sink.split.i.i.i.i76_crit_edge, %if.else.if.end15.sink.split.i.i.i.i76_crit_edge
  %.sink.i.i.i.i75 = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i.i76_crit_edge ], [ 1, %if.else.i.i.i.i74.if.end15.sink.split.i.i.i.i76_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %ref_count.i68, i32 noundef %.sink.i.i.i.i75) #6
  br label %fw_node_get.exit77

fw_node_get.exit77:                               ; preds = %if.end15.sink.split.i.i.i.i76, %if.else.i.i.i.i74.fw_node_get.exit77_crit_edge
  %link16 = getelementptr inbounds %struct.fw_node, ptr %18, i32 0, i32 6
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %call.i.i79 = call zeroext i1 @__list_add_valid(ptr noundef %link16, ptr noundef %26, ptr noundef nonnull %list) #6
  br i1 %call.i.i79, label %if.end.i.i81, label %fw_node_get.exit77.for.inc_crit_edge

fw_node_get.exit77.for.inc_crit_edge:             ; preds = %fw_node_get.exit77
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i.i81:                                     ; preds = %fw_node_get.exit77
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %link16, ptr %0, align 4
  %28 = ptrtoint ptr %link16 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %link16, align 4
  %prev3.i.i80 = getelementptr inbounds %struct.fw_node, ptr %18, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %prev3.i.i80 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i80, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %link16, ptr %26, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i81, %fw_node_get.exit77.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body7.for.inc_crit_edge
  %parent.2 = phi ptr [ %parent.189, %for.body7.for.inc_crit_edge ], [ %18, %if.end.for.inc_crit_edge ], [ %parent.189, %fw_node_get.exit77.for.inc_crit_edge ], [ %parent.189, %if.end.i.i81 ]
  %inc = add nuw nsw i32 %i.088, 1
  %31 = ptrtoint ptr %port_count to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port_count, align 1
  %conv = zext i8 %32 to i32
  %cmp5 = icmp ult i32 %inc, %conv
  br i1 %cmp5, label %for.inc.for.body7_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body7_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge
  %parent.1.lcssa = phi ptr [ %parent.093, %for.body.for.end_crit_edge ], [ %parent.2, %for.inc.for.end_crit_edge ]
  call void %callback(ptr noundef %card, ptr noundef %node.095, ptr noundef %parent.1.lcssa) #6, !callees !28
  %33 = ptrtoint ptr %.pn94 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn94, align 4
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %for.end.for.end24_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end.for.end24_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end24

for.end24:                                        ; preds = %for.end.for.end24_crit_edge, %list_add_tail.exit.for.end24_crit_edge
  %34 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %list, align 4
  %cmp36.not96 = icmp eq ptr %35, %list
  br i1 %cmp36.not96, label %for.end24.for.end46_crit_edge, label %for.end24.for.body39_crit_edge

for.end24.for.body39_crit_edge:                   ; preds = %for.end24
  br label %for.body39

for.end24.for.end46_crit_edge:                    ; preds = %for.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.body39:                                       ; preds = %fw_node_put.exit.for.body39_crit_edge, %for.end24.for.body39_crit_edge
  %.pn65.in97 = phi ptr [ %.pn65, %fw_node_put.exit.for.body39_crit_edge ], [ %35, %for.end24.for.body39_crit_edge ]
  %36 = ptrtoint ptr %.pn65.in97 to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn65 = load ptr, ptr %.pn65.in97, align 4
  %ref_count.i83 = getelementptr i8, ptr %.pn65.in97, i32 -4
  %call.i.i.i.i.i.i84 = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i83, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  call void @llvm.prefetch.p0(ptr %ref_count.i83, i32 1, i32 3, i32 1) #6
  %37 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i83, ptr %ref_count.i83, i32 1, ptr elementtype(i32) %ref_count.i83) #6, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i85 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i85, label %if.end5.i.i.i.i.fw_node_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !27

if.end5.i.i.i.i.fw_node_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_node_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %ref_count.i83, i32 noundef 3) #6
  br label %fw_node_put.exit

if.then.i:                                        ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #8
  %node.1 = getelementptr i8, ptr %.pn65.in97, i32 -12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @kfree(ptr noundef %node.1) #6
  br label %fw_node_put.exit

fw_node_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fw_node_put.exit_crit_edge
  %cmp36.not = icmp eq ptr %.pn65, %list
  br i1 %cmp36.not, label %fw_node_put.exit.for.end46_crit_edge, label %fw_node_put.exit.for.body39_crit_edge

fw_node_put.exit.for.body39_crit_edge:            ; preds = %fw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body39

fw_node_put.exit.for.end46_crit_edge:             ; preds = %fw_node_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end46

for.end46:                                        ; preds = %fw_node_put.exit.for.end46_crit_edge, %for.end24.for.end46_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @report_lost_node(ptr noundef %card, ptr noundef %node, ptr nocapture noundef readnone %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @fw_node_event(ptr noundef %card, ptr noundef %node, i32 noundef 2) #6
  %ref_count.i = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  tail call void @llvm.prefetch.p0(ptr %ref_count.i, i32 1, i32 3, i32 1) #6
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i, ptr %ref_count.i, i32 1, ptr elementtype(i32) %ref_count.i) #6, !srcloc !30
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.fw_node_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !27

if.end5.i.i.i.i.fw_node_put.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_node_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @refcount_warn_saturate(ptr noundef %ref_count.i, i32 noundef 3) #6
  br label %fw_node_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  tail call void @kfree(ptr noundef %node) #6
  br label %fw_node_put.exit

fw_node_put.exit:                                 ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.fw_node_put.exit_crit_edge
  %bm_retries = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 31
  %1 = ptrtoint ptr %bm_retries to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %bm_retries, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_core_handle_bus_reset(ptr noundef %card, i32 noundef %node_id, i32 noundef %generation, i32 noundef %self_id_count, ptr noundef readonly %self_ids, i1 noundef zeroext %bm_abdicate) #0 align 64 {
entry:
  %list0.i = alloca %struct.list_head, align 4
  %list1.i = alloca %struct.list_head, align 4
  %stack.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %frombool = zext i1 %bm_abdicate to i8
  %generation1 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 5
  %0 = ptrtoint ptr %generation1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %generation1, align 8
  %add.i = add i32 %1, 1
  %2 = xor i32 %add.i, %generation
  %3 = and i32 %2, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %entry.do.body3_crit_edge, label %land.lhs.true

entry.do.body3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

land.lhs.true:                                    ; preds = %entry
  %local_node2 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 19
  %4 = ptrtoint ptr %local_node2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %local_node2, align 8
  %cmp.not = icmp eq ptr %5, null
  br i1 %cmp.not, label %land.lhs.true.do.body3_crit_edge, label %if.then

land.lhs.true.do.body3_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body3

if.then:                                          ; preds = %land.lhs.true
  %lock.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %color.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 22
  %6 = ptrtoint ptr %color.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %color.i, align 4
  %inc.i = add i8 %7, 1
  store i8 %inc.i, ptr %color.i, align 4
  %8 = ptrtoint ptr %local_node2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %local_node2, align 8
  %cmp5.not.i = icmp eq ptr %9, null
  br i1 %cmp5.not.i, label %if.then.fw_destroy_nodes.exit_crit_edge, label %if.then.i

if.then.fw_destroy_nodes.exit_crit_edge:          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_destroy_nodes.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef nonnull %9, ptr noundef nonnull @report_lost_node) #6
  br label %fw_destroy_nodes.exit

fw_destroy_nodes.exit:                            ; preds = %if.then.i, %if.then.fw_destroy_nodes.exit_crit_edge
  %10 = ptrtoint ptr %local_node2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %local_node2, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  %bm_retries = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 31
  %11 = ptrtoint ptr %bm_retries to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bm_retries, align 8
  br label %do.body3

do.body3:                                         ; preds = %fw_destroy_nodes.exit, %land.lhs.true.do.body3_crit_edge, %entry.do.body3_crit_edge
  %lock = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 18
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %broadcast_channel_auto_allocated = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 36
  %12 = ptrtoint ptr %broadcast_channel_auto_allocated to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %broadcast_channel_auto_allocated, align 2, !range !32
  %broadcast_channel_allocated = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 37
  %14 = ptrtoint ptr %broadcast_channel_allocated to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %broadcast_channel_allocated, align 1
  %node_id10 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 4
  %15 = ptrtoint ptr %node_id10 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %node_id, ptr %node_id10, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !33
  %16 = ptrtoint ptr %generation1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %generation, ptr %generation1, align 8
  %call18 = tail call i64 @get_jiffies_64() #6
  %reset_jiffies = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 9
  %17 = ptrtoint ptr %reset_jiffies to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %call18, ptr %reset_jiffies, align 8
  %bm_node_id = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 33
  %18 = ptrtoint ptr %bm_node_id to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 65535, ptr %bm_node_id, align 8
  %bm_abdicate20 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 34
  %19 = ptrtoint ptr %bm_abdicate20 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %frombool, ptr %bm_abdicate20, align 4
  tail call void @fw_schedule_bm_work(ptr noundef %card, i32 noundef 0) #6
  %stack.sroa.gep.i = getelementptr inbounds %struct.list_head, ptr %stack.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stack.i) #6
  %20 = ptrtoint ptr %stack.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %stack.i, ptr %stack.i, align 4
  %21 = ptrtoint ptr %stack.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %stack.i, ptr %stack.sroa.gep.i, align 4
  %add.ptr.i = getelementptr i32, ptr %self_ids, i32 %self_id_count
  %22 = ptrtoint ptr %self_ids to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %self_ids, align 4
  %shr.i = lshr i32 %23, 16
  %and.i = and i32 %shr.i, 63
  %cmp230.i = icmp ugt ptr %add.ptr.i, %self_ids
  br i1 %cmp230.i, label %while.body.lr.ph.i, label %do.body3.while.end.i_crit_edge

do.body3.while.end.i_crit_edge:                   ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %do.body3
  %color.i62 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 22
  br label %while.body.i

while.body.i:                                     ; preds = %update_hop_count.exit.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %beta_repeaters_present.0.off0237.i = phi i1 [ false, %while.body.lr.ph.i ], [ %spec.select155.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %gap_count.0236.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %spec.store.select.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %stack_depth.0235.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %add.i65, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %phy_id.0234.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %inc74.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %irm_node.0233.i = phi ptr [ null, %while.body.lr.ph.i ], [ %irm_node.1.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %local_node.0232.i = phi ptr [ null, %while.body.lr.ph.i ], [ %spec.select.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %sid.addr.0231.i = phi ptr [ %self_ids, %while.body.lr.ph.i ], [ %add.ptr.i.i, %update_hop_count.exit.i.while.body.i_crit_edge ]
  %24 = ptrtoint ptr %sid.addr.0231.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sid.addr.0231.i, align 4
  br label %while.cond.i.i.outer

while.cond.i.i.outer:                             ; preds = %if.end13.i.i, %while.body.i
  %port_count.0.i.ph = phi i32 [ %port_count.1.i, %if.end13.i.i ], [ 0, %while.body.i ]
  %child_port_count.0.i.ph = phi i32 [ %child_port_count.2.i, %if.end13.i.i ], [ 0, %while.body.i ]
  %sid.addr.0.i.i.ph = phi ptr [ %add.ptr.i.i, %if.end13.i.i ], [ %sid.addr.0231.i, %while.body.i ]
  %q.0.i.i.ph = phi i32 [ %28, %if.end13.i.i ], [ %25, %while.body.i ]
  %shift.0.i.i.ph = phi i32 [ 16, %if.end13.i.i ], [ 6, %while.body.i ]
  %seq.0.i.i.ph = phi i32 [ %inc14.i.i, %if.end13.i.i ], [ 0, %while.body.i ]
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %sw.epilog.i.i.while.cond.i.i_crit_edge, %while.cond.i.i.outer
  %port_count.0.i = phi i32 [ %port_count.1.i, %sw.epilog.i.i.while.cond.i.i_crit_edge ], [ %port_count.0.i.ph, %while.cond.i.i.outer ]
  %child_port_count.0.i = phi i32 [ %child_port_count.2.i, %sw.epilog.i.i.while.cond.i.i_crit_edge ], [ %child_port_count.0.i.ph, %while.cond.i.i.outer ]
  %shift.0.i.i = phi i32 [ %sub.i.i, %sw.epilog.i.i.while.cond.i.i_crit_edge ], [ %shift.0.i.i.ph, %while.cond.i.i.outer ]
  %shr.i.i = lshr i32 %q.0.i.i.ph, %shift.0.i.i
  %and.i.i = and i32 %shr.i.i, 3
  %26 = zext i32 %and.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i.i, label %while.cond.i.i.sw.epilog.i.i_crit_edge [
    i32 3, label %sw.bb.i.i
    i32 2, label %while.cond.i.i.sw.bb1.i.i_crit_edge
    i32 1, label %while.cond.i.i.sw.bb1.i.i_crit_edge209
  ]

while.cond.i.i.sw.bb1.i.i_crit_edge209:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

while.cond.i.i.sw.bb1.i.i_crit_edge:              ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb1.i.i

while.cond.i.i.sw.epilog.i.i_crit_edge:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i.i

sw.bb.i.i:                                        ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i.i = add i32 %child_port_count.0.i, 1
  br label %sw.bb1.i.i

sw.bb1.i.i:                                       ; preds = %sw.bb.i.i, %while.cond.i.i.sw.bb1.i.i_crit_edge, %while.cond.i.i.sw.bb1.i.i_crit_edge209
  %child_port_count.1.i = phi i32 [ %child_port_count.0.i, %while.cond.i.i.sw.bb1.i.i_crit_edge ], [ %child_port_count.0.i, %while.cond.i.i.sw.bb1.i.i_crit_edge209 ], [ %inc.i.i, %sw.bb.i.i ]
  %inc2.i.i = add i32 %port_count.0.i, 1
  br label %sw.epilog.i.i

sw.epilog.i.i:                                    ; preds = %sw.bb1.i.i, %while.cond.i.i.sw.epilog.i.i_crit_edge
  %port_count.1.i = phi i32 [ %port_count.0.i, %while.cond.i.i.sw.epilog.i.i_crit_edge ], [ %inc2.i.i, %sw.bb1.i.i ]
  %child_port_count.2.i = phi i32 [ %child_port_count.0.i, %while.cond.i.i.sw.epilog.i.i_crit_edge ], [ %child_port_count.1.i, %sw.bb1.i.i ]
  %sub.i.i = add i32 %shift.0.i.i, -2
  %cmp.i.i = icmp eq i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %sw.epilog.i.i.while.cond.i.i_crit_edge

sw.epilog.i.i.while.cond.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.then.i.i:                                      ; preds = %sw.epilog.i.i
  %and4.i.i = and i32 %q.0.i.i.ph, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool.not.i.i = icmp eq i32 %and4.i.i, 0
  %add.ptr.i.i = getelementptr i32, ptr %sid.addr.0.i.i.ph, i32 1
  br i1 %tobool.not.i.i, label %count_ports.exit.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i.i, align 4
  %29 = and i32 %28, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool8.not.i.i = icmp ne i32 %29, 0
  %shr9.i.i = lshr i32 %28, 20
  %and10.i.i = and i32 %shr9.i.i, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %seq.0.i.i.ph, i32 %and10.i.i)
  %cmp11.not.i.i = icmp eq i32 %seq.0.i.i.ph, %and10.i.i
  %or.cond.i.i = select i1 %tobool8.not.i.i, i1 %cmp11.not.i.i, i1 false
  br i1 %or.cond.i.i, label %if.end13.i.i, label %if.end.i.i.if.then.i63_crit_edge

if.end.i.i.if.then.i63_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i63

if.end13.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc14.i.i = add i32 %seq.0.i.i.ph, 1
  br label %while.cond.i.i.outer

count_ports.exit.i:                               ; preds = %if.then.i.i
  %cmp1.i = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp1.i, label %count_ports.exit.i.if.then.i63_crit_edge, label %if.end.i

count_ports.exit.i.if.then.i63_crit_edge:         ; preds = %count_ports.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i63

if.then.i63:                                      ; preds = %count_ports.exit.i.if.then.i63_crit_edge, %if.end.i.i.if.then.i63_crit_edge
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str.1) #6
  br label %build_tree.exit

if.end.i:                                         ; preds = %count_ports.exit.i
  %shr2.i = lshr i32 %25, 24
  %and3.i = and i32 %shr2.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %phy_id.0234.i, i32 %and3.i)
  %cmp4.not.i = icmp eq i32 %phy_id.0234.i, %and3.i
  br i1 %cmp4.not.i, label %if.end8.i, label %if.then5.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str.2, i32 noundef %phy_id.0234.i, i32 noundef %and3.i) #6
  br label %build_tree.exit

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %child_port_count.2.i, i32 %stack_depth.0235.i)
  %cmp9.i = icmp sgt i32 %child_port_count.2.i, %stack_depth.0235.i
  br i1 %cmp9.i, label %if.then10.i, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %child_port_count.2.i)
  %cmp12221.i = icmp sgt i32 %child_port_count.2.i, 0
  br i1 %cmp12221.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str.3) #6
  br label %build_tree.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0223.i = phi i32 [ %inc.i64, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %h.0222.sroa.phi.i = phi ptr [ %.sroa.gep.i, %for.body.i.for.body.i_crit_edge ], [ %stack.sroa.gep.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %30 = ptrtoint ptr %h.0222.sroa.phi.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %h.0222.sroa.phi.i, align 4
  %.sroa.gep.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %inc.i64 = add nuw nsw i32 %i.0223.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i64, %child_port_count.2.i
  br i1 %exitcond.not.i, label %for.body.i.for.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %h.0.lcssa.i = phi ptr [ %stack.i, %for.cond.preheader.i.for.end.i_crit_edge ], [ %31, %for.body.i.for.end.i_crit_edge ]
  %32 = ptrtoint ptr %color.i62 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %color.i62, align 4
  %34 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %port_count.1.i, i32 4) #6
  %35 = extractvalue { i32, i1 } %34, 1
  %36 = extractvalue { i32, i1 } %34, 0
  %spec.select.i.i.i = call i32 @llvm.uadd.sat.i32(i32 %36, i32 24) #6
  %retval.0.i.i.i = select i1 %35, i32 -1, i32 %spec.select.i.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i.i.i, i32 noundef 2848) #9
  %cmp.i157.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp.i157.i, label %if.then17.i, label %if.end18.i

if.then17.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str.4) #6
  br label %build_tree.exit

if.end18.i:                                       ; preds = %for.end.i
  %color2.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %color2.i.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %33, ptr %color2.i.i, align 2
  %38 = trunc i32 %shr2.i to i16
  %conv3.i.i = or i16 %38, -64
  %39 = ptrtoint ptr %call9.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv3.i.i, ptr %call9.i.i.i.i, align 128
  %link_on.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 3
  %40 = ptrtoint ptr %link_on.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i.i = load i8, ptr %link_on.i.i, align 4
  %sh.diff.i.i = lshr i32 %25, 15
  %tr.sh.diff.i.i = trunc i32 %sh.diff.i.i to i8
  %bf.shl.i.i = and i8 %tr.sh.diff.i.i, -128
  %bf.clear.i.i = and i8 %bf.load.i.i, 39
  %sh.diff38.i.i = lshr i32 %25, 11
  %tr.sh.diff39.i.i = trunc i32 %sh.diff38.i.i to i8
  %bf.shl12.i.i = and i8 %tr.sh.diff39.i.i, 24
  %41 = trunc i32 %25 to i8
  %42 = shl i8 %41, 5
  %bf.shl20.i.i = and i8 %42, 64
  %bf.set.i.i = or i8 %bf.shl12.i.i, %bf.shl.i.i
  %bf.set14.i.i = or i8 %bf.set.i.i, %bf.shl20.i.i
  %bf.set22.i.i = or i8 %bf.set14.i.i, %bf.clear.i.i
  store i8 %bf.set22.i.i, ptr %link_on.i.i, align 4
  %conv23.i.i = trunc i32 %port_count.1.i to i8
  %port_count24.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %port_count24.i.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv23.i.i, ptr %port_count24.i.i, align 1
  %ref_count.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 5
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i, i32 noundef 4) #6
  %44 = ptrtoint ptr %ref_count.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile i32 1, ptr %ref_count.i.i, align 8
  %link.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 6
  %45 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %link.i.i, ptr %link.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %link.i.i, ptr %prev.i.i.i, align 16
  %47 = ptrtoint ptr %node_id10 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %node_id10, align 4
  %and19.i = and i32 %48, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %phy_id.0234.i, i32 %and19.i)
  %cmp20.i = icmp eq i32 %phy_id.0234.i, %and19.i
  %spec.select.i = select i1 %cmp20.i, ptr %call9.i.i.i.i, ptr %local_node.0232.i
  %49 = and i32 %25, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool.not.i = icmp eq i32 %49, 0
  %irm_node.1.i = select i1 %tobool.not.i, ptr %irm_node.0233.i, ptr %call9.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_count.1.i)
  %cmp29224.i = icmp sgt i32 %port_count.1.i, 0
  br i1 %cmp29224.i, label %for.body31.i.preheader, label %if.end18.i.lor.lhs.false.i_crit_edge

if.end18.i.lor.lhs.false.i_crit_edge:             ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

for.body31.i.preheader:                           ; preds = %if.end18.i
  %h.0.lcssa.i.sroa.phi = getelementptr i8, ptr %h.0.lcssa.i, i32 -12
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc43.i.for.body31.i_crit_edge, %for.body31.i.preheader
  %parent_count.0228.i = phi i32 [ %parent_count.1.i, %for.inc43.i.for.body31.i_crit_edge ], [ 0, %for.body31.i.preheader ]
  %i.1226.i = phi i32 [ %inc44.i, %for.inc43.i.for.body31.i_crit_edge ], [ 0, %for.body31.i.preheader ]
  %child.0225.i = phi ptr [ %child.1.i, %for.inc43.i.for.body31.i_crit_edge ], [ %h.0.lcssa.i.sroa.phi, %for.body31.i.preheader ]
  %add.i.i = add nuw i32 %i.1226.i, 5
  %div.i.i = sdiv i32 %add.i.i, 8
  %and.i160.i = shl i32 %add.i.i, 1
  %mul.i.i = and i32 %and.i160.i, 14
  %sub.i161.i = sub nuw nsw i32 16, %mul.i.i
  %arrayidx.i.i = getelementptr i32, ptr %sid.addr.0231.i, i32 %div.i.i
  %50 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i, align 4
  %shr.i162.i = lshr i32 %51, %sub.i161.i
  %and2.i.i = and i32 %shr.i162.i, 3
  %52 = zext i32 %and2.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %and2.i.i, label %for.body31.i.for.inc43.i_crit_edge [
    i32 2, label %sw.bb.i
    i32 3, label %sw.bb36.i
  ]

for.body31.i.for.inc43.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc43.i

sw.bb.i:                                          ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc33.i = add i32 %parent_count.0228.i, 1
  %conv34.i = trunc i32 %i.1226.i to i8
  %53 = ptrtoint ptr %color2.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %conv34.i, ptr %color2.i.i, align 2
  br label %for.inc43.i

sw.bb36.i:                                        ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.i = getelementptr %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 8, i32 %i.1226.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %child.0225.i, ptr %arrayidx.i, align 4
  %color38.i = getelementptr inbounds %struct.fw_node, ptr %child.0225.i, i32 0, i32 1
  %55 = ptrtoint ptr %color38.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %color38.i, align 2
  %idxprom.i = zext i8 %56 to i32
  %arrayidx39.i = getelementptr %struct.fw_node, ptr %child.0225.i, i32 0, i32 8, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx39.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i.i.i, ptr %arrayidx39.i, align 4
  %58 = ptrtoint ptr %color.i62 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %color.i62, align 4
  store i8 %59, ptr %color38.i, align 2
  %link.i = getelementptr inbounds %struct.fw_node, ptr %child.0225.i, i32 0, i32 6
  %60 = ptrtoint ptr %link.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %link.i, align 4
  %add.ptr.i163.i = getelementptr i8, ptr %61, i32 -12
  br label %for.inc43.i

for.inc43.i:                                      ; preds = %sw.bb36.i, %sw.bb.i, %for.body31.i.for.inc43.i_crit_edge
  %child.1.i = phi ptr [ %child.0225.i, %for.body31.i.for.inc43.i_crit_edge ], [ %add.ptr.i163.i, %sw.bb36.i ], [ %child.0225.i, %sw.bb.i ]
  %parent_count.1.i = phi i32 [ %parent_count.0228.i, %for.body31.i.for.inc43.i_crit_edge ], [ %parent_count.0228.i, %sw.bb36.i ], [ %inc33.i, %sw.bb.i ]
  %inc44.i = add nuw nsw i32 %i.1226.i, 1
  %exitcond262.not.i = icmp eq i32 %inc44.i, %port_count.1.i
  br i1 %exitcond262.not.i, label %for.end45.i, label %for.inc43.i.for.body31.i_crit_edge

for.inc43.i.for.body31.i_crit_edge:               ; preds = %for.inc43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body31.i

for.end45.i:                                      ; preds = %for.inc43.i
  %cmp46.i = icmp ne ptr %add.ptr.i.i, %add.ptr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_count.1.i)
  %cmp48.not.i = icmp eq i32 %parent_count.1.i, 0
  %or.cond.i = select i1 %cmp46.i, i1 true, i1 %cmp48.not.i
  br i1 %or.cond.i, label %for.end45.i.lor.lhs.false.i_crit_edge, label %for.end45.i.if.then55.i_crit_edge

for.end45.i.if.then55.i_crit_edge:                ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

for.end45.i.lor.lhs.false.i_crit_edge:            ; preds = %for.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %for.end45.i.lor.lhs.false.i_crit_edge, %if.end18.i.lor.lhs.false.i_crit_edge
  %parent_count.0.lcssa267.i = phi i32 [ %parent_count.1.i, %for.end45.i.lor.lhs.false.i_crit_edge ], [ 0, %if.end18.i.lor.lhs.false.i_crit_edge ]
  %cmp50.i = icmp uge ptr %add.ptr.i.i, %add.ptr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %parent_count.0.lcssa267.i)
  %cmp53.not.i = icmp eq i32 %parent_count.0.lcssa267.i, 1
  %or.cond153.i = select i1 %cmp50.i, i1 true, i1 %cmp53.not.i
  br i1 %or.cond153.i, label %if.end56.i, label %lor.lhs.false.i.if.then55.i_crit_edge

lor.lhs.false.i.if.then55.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then55.i

if.then55.i:                                      ; preds = %lor.lhs.false.i.if.then55.i_crit_edge, %for.end45.i.if.then55.i_crit_edge
  %parent_count.0.lcssa268.i = phi i32 [ %parent_count.0.lcssa267.i, %lor.lhs.false.i.if.then55.i_crit_edge ], [ %parent_count.1.i, %for.end45.i.if.then55.i_crit_edge ]
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str.5, i32 noundef %phy_id.0234.i, i32 noundef %parent_count.0.lcssa268.i) #6
  br label %build_tree.exit

if.end56.i:                                       ; preds = %lor.lhs.false.i
  %prev57.i = getelementptr inbounds %struct.list_head, ptr %h.0.lcssa.i, i32 0, i32 1
  %62 = ptrtoint ptr %prev57.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev57.i, align 4
  %64 = ptrtoint ptr %stack.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %stack.sroa.gep.i, align 4
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %stack.i, ptr %63, align 4
  %66 = load ptr, ptr %stack.sroa.gep.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %66, ptr noundef nonnull %stack.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end56.i.list_add_tail.exit.i_crit_edge

if.end56.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %stack.sroa.gep.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %link.i.i, ptr %stack.sroa.gep.i, align 4
  %68 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %stack.i, ptr %link.i.i, align 4
  %69 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev.i.i.i, align 16
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %link.i.i, ptr %66, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end56.i.list_add_tail.exit.i_crit_edge
  %sub.i = add i32 %stack_depth.0235.i, 1
  %add.i65 = sub i32 %sub.i, %child_port_count.2.i
  %71 = ptrtoint ptr %link_on.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %bf.load.i = load i8, ptr %link_on.i.i, align 4
  %72 = and i8 %bf.load.i, 24
  call void @__sanitizer_cov_trace_const_cmp1(i8 24, i8 %72)
  %cmp60.i = icmp eq i8 %72, 24
  %add63.i = add i32 %parent_count.0.lcssa267.i, %child_port_count.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %add63.i)
  %cmp64.i = icmp sgt i32 %add63.i, 1
  %or.cond154.i = select i1 %cmp60.i, i1 %cmp64.i, i1 false
  %spec.select155.i = select i1 %or.cond154.i, i1 true, i1 %beta_repeaters_present.0.off0237.i
  %shr68.i = lshr i32 %25, 16
  %and69.i = and i32 %shr68.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and69.i, i32 %gap_count.0236.i)
  %cmp70.not.i = icmp eq i32 %and69.i, %gap_count.0236.i
  %spec.store.select.i = select i1 %cmp70.not.i, i32 %gap_count.0236.i, i32 0
  %73 = ptrtoint ptr %port_count24.i.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port_count24.i.i, align 1
  %conv.i.i = zext i8 %74 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %cmp96.not.i.i = icmp eq i8 %74, 0
  br i1 %cmp96.not.i.i, label %list_add_tail.exit.i.update_hop_count.exit.i_crit_edge, label %list_add_tail.exit.i.for.body.i.i_crit_edge

list_add_tail.exit.i.for.body.i.i_crit_edge:      ; preds = %list_add_tail.exit.i
  br label %for.body.i.i

list_add_tail.exit.i.update_hop_count.exit.i_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_hop_count.exit.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %list_add_tail.exit.i.for.body.i.i_crit_edge
  %depths.sroa.8.0100.i.i = phi i32 [ %depths.sroa.8.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %i.099.i.i = phi i32 [ %inc.i169.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %max_child_hops.098.i.i = phi i32 [ %max_child_hops.2.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %depths.sroa.0.097.i.i = phi i32 [ %depths.sroa.0.1.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ -1, %list_add_tail.exit.i.for.body.i.i_crit_edge ]
  %arrayidx.i165.i = getelementptr %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 8, i32 %i.099.i.i
  %75 = ptrtoint ptr %arrayidx.i165.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i165.i, align 4
  %cmp2.i.i = icmp eq ptr %76, null
  br i1 %cmp2.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %if.end.i168.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i168.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %max_hops.i.i = getelementptr inbounds %struct.fw_node, ptr %76, i32 0, i32 4
  %77 = ptrtoint ptr %max_hops.i.i to i32
  call void @__asan_load1_noabort(i32 %77)
  %bf.load.i166.i = load i8, ptr %max_hops.i.i, align 1
  %bf.clear.i167.i = and i8 %bf.load.i166.i, 15
  %conv6.i.i = zext i8 %bf.clear.i167.i to i32
  %78 = call i32 @llvm.smax.i32(i32 %max_child_hops.098.i.i, i32 %conv6.i.i) #6
  %bf.lshr.i.i = lshr i8 %bf.load.i166.i, 4
  %conv20.i.i = zext i8 %bf.lshr.i.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %depths.sroa.0.097.i.i, i32 %conv20.i.i)
  %cmp22.i.i = icmp slt i32 %depths.sroa.0.097.i.i, %conv20.i.i
  %79 = call i32 @llvm.smax.i32(i32 %depths.sroa.8.0100.i.i, i32 %conv20.i.i) #6
  %80 = call i32 @llvm.smax.i32(i32 %depths.sroa.0.097.i.i, i32 %conv20.i.i) #6
  %spec.select95.i.i = select i1 %cmp22.i.i, i32 %depths.sroa.0.097.i.i, i32 %79
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end.i168.i, %for.body.i.i.for.inc.i.i_crit_edge
  %depths.sroa.0.1.i.i = phi i32 [ %depths.sroa.0.097.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %80, %if.end.i168.i ]
  %max_child_hops.2.i.i = phi i32 [ %max_child_hops.098.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %78, %if.end.i168.i ]
  %depths.sroa.8.1.i.i = phi i32 [ %depths.sroa.8.0100.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ %spec.select95.i.i, %if.end.i168.i ]
  %inc.i169.i = add nuw nsw i32 %i.099.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i169.i, %conv.i.i
  br i1 %exitcond.not.i.i, label %for.inc.i.i.update_hop_count.exit.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.update_hop_count.exit.i_crit_edge:    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_hop_count.exit.i

update_hop_count.exit.i:                          ; preds = %for.inc.i.i.update_hop_count.exit.i_crit_edge, %list_add_tail.exit.i.update_hop_count.exit.i_crit_edge
  %depths.sroa.0.0.lcssa.i.i = phi i32 [ -1, %list_add_tail.exit.i.update_hop_count.exit.i_crit_edge ], [ %depths.sroa.0.1.i.i, %for.inc.i.i.update_hop_count.exit.i_crit_edge ]
  %max_child_hops.0.lcssa.i.i = phi i32 [ 0, %list_add_tail.exit.i.update_hop_count.exit.i_crit_edge ], [ %max_child_hops.2.i.i, %for.inc.i.i.update_hop_count.exit.i_crit_edge ]
  %depths.sroa.8.0.lcssa.i.i = phi i32 [ -1, %list_add_tail.exit.i.update_hop_count.exit.i_crit_edge ], [ %depths.sroa.8.1.i.i, %for.inc.i.i.update_hop_count.exit.i_crit_edge ]
  %81 = trunc i32 %depths.sroa.0.0.lcssa.i.i to i8
  %max_depth55.i.i = getelementptr inbounds %struct.fw_node, ptr %call9.i.i.i.i, i32 0, i32 4
  %conv54.i.i = shl i8 %81, 4
  %bf.shl.i170.i = add i8 %conv54.i.i, 16
  %add60.i.i = add i32 %depths.sroa.0.0.lcssa.i.i, 2
  %add61.i.i = add i32 %add60.i.i, %depths.sroa.8.0.lcssa.i.i
  %82 = call i32 @llvm.smax.i32(i32 %max_child_hops.0.lcssa.i.i, i32 %add61.i.i) #6
  %conv64.i.i = trunc i32 %82 to i8
  %bf.value67.i.i = and i8 %conv64.i.i, 15
  %bf.set69.i.i = or i8 %bf.value67.i.i, %bf.shl.i170.i
  %83 = ptrtoint ptr %max_depth55.i.i to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %bf.set69.i.i, ptr %max_depth55.i.i, align 1
  %inc74.i = add i32 %phy_id.0234.i, 1
  %cmp.i66 = icmp ult ptr %add.ptr.i.i, %add.ptr.i
  br i1 %cmp.i66, label %update_hop_count.exit.i.while.body.i_crit_edge, label %update_hop_count.exit.i.while.end.i_crit_edge

update_hop_count.exit.i.while.end.i_crit_edge:    ; preds = %update_hop_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i

update_hop_count.exit.i.while.body.i_crit_edge:   ; preds = %update_hop_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.end.i:                                      ; preds = %update_hop_count.exit.i.while.end.i_crit_edge, %do.body3.while.end.i_crit_edge
  %node.0.lcssa.i = phi ptr [ null, %do.body3.while.end.i_crit_edge ], [ %call9.i.i.i.i, %update_hop_count.exit.i.while.end.i_crit_edge ]
  %local_node.0.lcssa.i = phi ptr [ null, %do.body3.while.end.i_crit_edge ], [ %spec.select.i, %update_hop_count.exit.i.while.end.i_crit_edge ]
  %irm_node.0.lcssa.i = phi ptr [ null, %do.body3.while.end.i_crit_edge ], [ %irm_node.1.i, %update_hop_count.exit.i.while.end.i_crit_edge ]
  %gap_count.0.lcssa.i = phi i32 [ %and.i, %do.body3.while.end.i_crit_edge ], [ %spec.store.select.i, %update_hop_count.exit.i.while.end.i_crit_edge ]
  %beta_repeaters_present.0.off0.lcssa.i = phi i1 [ false, %do.body3.while.end.i_crit_edge ], [ %spec.select155.i, %update_hop_count.exit.i.while.end.i_crit_edge ]
  %root_node.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 20
  %84 = ptrtoint ptr %root_node.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %node.0.lcssa.i, ptr %root_node.i, align 4
  %irm_node75.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 21
  %85 = ptrtoint ptr %irm_node75.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %irm_node.0.lcssa.i, ptr %irm_node75.i, align 8
  %gap_count76.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 23
  %86 = ptrtoint ptr %gap_count76.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %gap_count.0.lcssa.i, ptr %gap_count76.i, align 8
  %beta_repeaters_present78.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 24
  %frombool.i = zext i1 %beta_repeaters_present.0.off0.lcssa.i to i8
  %87 = ptrtoint ptr %beta_repeaters_present78.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool.i, ptr %beta_repeaters_present78.i, align 4
  br label %build_tree.exit

build_tree.exit:                                  ; preds = %while.end.i, %if.then55.i, %if.then17.i, %if.then10.i, %if.then5.i, %if.then.i63
  %retval.0.i = phi ptr [ null, %if.then.i63 ], [ null, %if.then5.i ], [ null, %if.then10.i ], [ null, %if.then17.i ], [ null, %if.then55.i ], [ %local_node.0.lcssa.i, %while.end.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stack.i) #6
  %root_node.i67 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 20
  %88 = ptrtoint ptr %root_node.i67 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %root_node.i67, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %89, align 4
  %92 = and i16 %91, 63
  %narrow.i = add nuw nsw i16 %92, 1
  %add.i68 = zext i16 %narrow.i to i32
  %topology_map.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 39
  %add1.i = shl i32 %self_id_count, 16
  %shl.i = add i32 %add1.i, 131072
  %incdec.ptr.i = getelementptr %struct.fw_card, ptr %card, i32 0, i32 39, i32 1
  %93 = ptrtoint ptr %topology_map.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %shl.i, ptr %topology_map.i, align 4
  %94 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %incdec.ptr.i, align 4
  %add3.i = add i32 %95, 1
  %incdec.ptr4.i = getelementptr %struct.fw_card, ptr %card, i32 0, i32 39, i32 2
  store i32 %add3.i, ptr %incdec.ptr.i, align 4
  %shl5.i = shl nuw nsw i32 %add.i68, 16
  %or.i = or i32 %shl5.i, %self_id_count
  %96 = ptrtoint ptr %incdec.ptr4.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or.i, ptr %incdec.ptr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %self_id_count)
  %tobool.not20.i = icmp eq i32 %self_id_count, 0
  br i1 %tobool.not20.i, label %build_tree.exit.update_topology_map.exit_crit_edge, label %while.body.preheader.i

build_tree.exit.update_topology_map.exit_crit_edge: ; preds = %build_tree.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_topology_map.exit

while.body.preheader.i:                           ; preds = %build_tree.exit
  %incdec.ptr6.i = getelementptr %struct.fw_card, ptr %card, i32 0, i32 39, i32 3
  br label %while.body.i70

while.body.i70:                                   ; preds = %while.body.i70.while.body.i70_crit_edge, %while.body.preheader.i
  %map.023.i = phi ptr [ %incdec.ptr8.i, %while.body.i70.while.body.i70_crit_edge ], [ %incdec.ptr6.i, %while.body.preheader.i ]
  %self_ids.addr.022.i = phi ptr [ %incdec.ptr7.i, %while.body.i70.while.body.i70_crit_edge ], [ %self_ids, %while.body.preheader.i ]
  %self_id_count.addr.021.i = phi i32 [ %dec.i, %while.body.i70.while.body.i70_crit_edge ], [ %self_id_count, %while.body.preheader.i ]
  %dec.i = add i32 %self_id_count.addr.021.i, -1
  %incdec.ptr7.i = getelementptr i32, ptr %self_ids.addr.022.i, i32 1
  %97 = ptrtoint ptr %self_ids.addr.022.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %self_ids.addr.022.i, align 4
  %incdec.ptr8.i = getelementptr i32, ptr %map.023.i, i32 1
  %99 = ptrtoint ptr %map.023.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %map.023.i, align 4
  %tobool.not.i69 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i69, label %while.body.i70.update_topology_map.exit_crit_edge, label %while.body.i70.while.body.i70_crit_edge

while.body.i70.while.body.i70_crit_edge:          ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i70

while.body.i70.update_topology_map.exit_crit_edge: ; preds = %while.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_topology_map.exit

update_topology_map.exit:                         ; preds = %while.body.i70.update_topology_map.exit_crit_edge, %build_tree.exit.update_topology_map.exit_crit_edge
  %call11.i = call i32 @fw_compute_block_crc(ptr noundef %topology_map.i) #6
  %color = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 22
  %100 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %color, align 4
  %inc = add i8 %101, 1
  store i8 %inc, ptr %color, align 4
  %cmp23 = icmp eq ptr %retval.0.i, null
  br i1 %cmp23, label %if.then25, label %if.else

if.then25:                                        ; preds = %update_topology_map.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @fw_err(ptr noundef %card, ptr noundef nonnull @.str) #6
  br label %if.end33

if.else:                                          ; preds = %update_topology_map.exit
  %local_node26 = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 19
  %102 = ptrtoint ptr %local_node26 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %local_node26, align 8
  %cmp27 = icmp eq ptr %103, null
  br i1 %cmp27, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %104 = ptrtoint ptr %local_node26 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %retval.0.i, ptr %local_node26, align 8
  call fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef nonnull %retval.0.i, ptr noundef nonnull @report_found_node)
  br label %if.end33

if.else31:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list0.i) #6
  %105 = getelementptr inbounds %struct.list_head, ptr %list0.i, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list1.i) #6
  %106 = getelementptr inbounds %struct.list_head, ptr %list1.i, i32 0, i32 1
  %107 = ptrtoint ptr %list0.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store volatile ptr %list0.i, ptr %list0.i, align 4
  %108 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %list0.i, ptr %105, align 4
  %link.i73 = getelementptr inbounds %struct.fw_node, ptr %103, i32 0, i32 6
  %call.i.i.i74 = call zeroext i1 @__list_add_valid(ptr noundef %link.i73, ptr noundef nonnull %list0.i, ptr noundef nonnull %list0.i) #6
  br i1 %call.i.i.i74, label %if.end.i.i.i75, label %if.else31.list_add_tail.exit.i76_crit_edge

if.else31.list_add_tail.exit.i76_crit_edge:       ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i76

if.end.i.i.i75:                                   ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %link.i73, ptr %105, align 4
  %110 = ptrtoint ptr %link.i73 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %list0.i, ptr %link.i73, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.fw_node, ptr %103, i32 0, i32 6, i32 1
  %111 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %list0.i, ptr %prev3.i.i.i, align 4
  %112 = ptrtoint ptr %list0.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %link.i73, ptr %list0.i, align 4
  br label %list_add_tail.exit.i76

list_add_tail.exit.i76:                           ; preds = %if.end.i.i.i75, %if.else31.list_add_tail.exit.i76_crit_edge
  %113 = ptrtoint ptr %list1.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %list1.i, ptr %list1.i, align 4
  %114 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %list1.i, ptr %106, align 4
  %link1.i = getelementptr inbounds %struct.fw_node, ptr %retval.0.i, i32 0, i32 6
  %call.i.i214.i = call zeroext i1 @__list_add_valid(ptr noundef %link1.i, ptr noundef nonnull %list1.i, ptr noundef nonnull %list1.i) #6
  br i1 %call.i.i214.i, label %if.end.i.i216.i, label %list_add_tail.exit.i76.list_add_tail.exit217.i_crit_edge

list_add_tail.exit.i76.list_add_tail.exit217.i_crit_edge: ; preds = %list_add_tail.exit.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit217.i

if.end.i.i216.i:                                  ; preds = %list_add_tail.exit.i76
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %link1.i, ptr %106, align 4
  %116 = ptrtoint ptr %link1.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %list1.i, ptr %link1.i, align 4
  %prev3.i.i215.i = getelementptr inbounds %struct.fw_node, ptr %retval.0.i, i32 0, i32 6, i32 1
  %117 = ptrtoint ptr %prev3.i.i215.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %list1.i, ptr %prev3.i.i215.i, align 4
  %118 = ptrtoint ptr %list1.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store volatile ptr %link1.i, ptr %list1.i, align 4
  br label %list_add_tail.exit217.i

list_add_tail.exit217.i:                          ; preds = %if.end.i.i216.i, %list_add_tail.exit.i76.list_add_tail.exit217.i_crit_edge
  %119 = ptrtoint ptr %list0.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %list0.i, align 4
  %cmp.not240.i = icmp eq ptr %120, %list0.i
  br i1 %cmp.not240.i, label %list_add_tail.exit217.i.update_tree.exit_crit_edge, label %while.body.lr.ph.i79

list_add_tail.exit217.i.update_tree.exit_crit_edge: ; preds = %list_add_tail.exit217.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_tree.exit

while.body.lr.ph.i79:                             ; preds = %list_add_tail.exit217.i
  %121 = ptrtoint ptr %list1.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %list1.i, align 4
  %irm_node.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 21
  br label %while.body.i80

while.body.i80:                                   ; preds = %fw_node_put.exit.i.while.body.i80_crit_edge, %while.body.lr.ph.i79
  %.pn232244.i = phi ptr [ %120, %while.body.lr.ph.i79 ], [ %183, %fw_node_put.exit.i.while.body.i80_crit_edge ]
  %.pn241.i = phi ptr [ %122, %while.body.lr.ph.i79 ], [ %185, %fw_node_put.exit.i.while.body.i80_crit_edge ]
  %node0.0245.i = getelementptr i8, ptr %.pn232244.i, i32 -12
  %node1.0248.i = getelementptr i8, ptr %.pn241.i, i32 -12
  %port_count.i = getelementptr i8, ptr %.pn232244.i, i32 -9
  %123 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %port_count.i, align 1
  %port_count5.i = getelementptr i8, ptr %.pn241.i, i32 -9
  %125 = ptrtoint ptr %port_count5.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %126 = load i8, ptr %port_count5.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %124, i8 %126)
  %cmp7.not.i = icmp eq i8 %124, %126
  br i1 %cmp7.not.i, label %while.body.i80.if.end.i82_crit_edge, label %do.end.i, !prof !27

while.body.i80.if.end.i82_crit_edge:              ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i82

do.end.i:                                         ; preds = %while.body.i80
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 425, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i82

if.end.i82:                                       ; preds = %do.end.i, %while.body.i80.if.end.i82_crit_edge
  %link_on.i = getelementptr i8, ptr %.pn232244.i, i32 -8
  %127 = ptrtoint ptr %link_on.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load.i81 = load i8, ptr %link_on.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i81)
  %tobool28.not.i = icmp sgt i8 %bf.load.i81, -1
  %link_on39.i = getelementptr i8, ptr %.pn241.i, i32 -8
  %128 = ptrtoint ptr %link_on39.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %bf.load40.i = load i8, ptr %link_on39.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load40.i)
  %tobool43.not.i = icmp sgt i8 %bf.load40.i, -1
  br i1 %tobool28.not.i, label %land.lhs.true38.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i82
  br i1 %tobool43.not.i, label %land.lhs.true.i.if.end60.i_crit_edge, label %land.lhs.true.i.if.else45.i_crit_edge

land.lhs.true.i.if.else45.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45.i

land.lhs.true.i.if.end60.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

land.lhs.true38.i:                                ; preds = %if.end.i82
  br i1 %tobool43.not.i, label %land.lhs.true38.i.if.else45.i_crit_edge, label %land.lhs.true38.i.if.end60.i_crit_edge

land.lhs.true38.i.if.end60.i_crit_edge:           ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

land.lhs.true38.i.if.else45.i_crit_edge:          ; preds = %land.lhs.true38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else45.i

if.else45.i:                                      ; preds = %land.lhs.true38.i.if.else45.i_crit_edge, %land.lhs.true.i.if.else45.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -65, i8 %bf.load40.i)
  %.not.i = icmp ugt i8 %bf.load40.i, -65
  %spec.select.i83 = select i1 %.not.i, i32 5, i32 1
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.else45.i, %land.lhs.true38.i.if.end60.i_crit_edge, %land.lhs.true.i.if.end60.i_crit_edge
  %event.0.i = phi i32 [ 4, %land.lhs.true.i.if.end60.i_crit_edge ], [ 3, %land.lhs.true38.i.if.end60.i_crit_edge ], [ %spec.select.i83, %if.else45.i ]
  %129 = ptrtoint ptr %node1.0248.i to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %node1.0248.i, align 4
  %131 = ptrtoint ptr %node0.0245.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 %130, ptr %node0.0245.i, align 4
  %132 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %color, align 4
  %color62.i = getelementptr i8, ptr %.pn232244.i, i32 -10
  %134 = ptrtoint ptr %color62.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %133, ptr %color62.i, align 2
  %135 = ptrtoint ptr %link_on39.i to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load64.i = load i8, ptr %link_on39.i, align 4
  %bf.lshr65.i = and i8 %bf.load64.i, -128
  %bf.clear68.i = and i8 %bf.load.i81, 127
  %bf.set.i = or i8 %bf.lshr65.i, %bf.clear68.i
  %136 = ptrtoint ptr %link_on.i to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 %bf.set.i, ptr %link_on.i, align 4
  %bf.load70.i = load i8, ptr %link_on39.i, align 4
  %bf.clear72.i = and i8 %bf.load70.i, 64
  %bf.clear77.i = and i8 %bf.set.i, -65
  %bf.set78.i = or i8 %bf.clear77.i, %bf.clear72.i
  store i8 %bf.set78.i, ptr %link_on.i, align 4
  %max_hops.i = getelementptr i8, ptr %.pn241.i, i32 -7
  %137 = ptrtoint ptr %max_hops.i to i32
  call void @__asan_load1_noabort(i32 %137)
  %bf.load79.i = load i8, ptr %max_hops.i, align 1
  %bf.clear80.i = and i8 %bf.load79.i, 15
  %max_hops81.i = getelementptr i8, ptr %.pn232244.i, i32 -7
  %138 = ptrtoint ptr %max_hops81.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %bf.load82.i = load i8, ptr %max_hops81.i, align 1
  %bf.clear84.i = and i8 %bf.load82.i, -16
  %bf.set85.i = or i8 %bf.clear84.i, %bf.clear80.i
  store i8 %bf.set85.i, ptr %max_hops81.i, align 1
  %139 = load i8, ptr %color, align 4
  %color87.i = getelementptr i8, ptr %.pn241.i, i32 -10
  %140 = ptrtoint ptr %color87.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 %139, ptr %color87.i, align 2
  call void @fw_node_event(ptr noundef %card, ptr noundef %node0.0245.i, i32 noundef %event.0.i) #6
  %141 = ptrtoint ptr %root_node.i67 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %root_node.i67, align 4
  %cmp88.i = icmp eq ptr %142, %node1.0248.i
  br i1 %cmp88.i, label %if.then90.i, label %if.end60.i.if.end92.i_crit_edge

if.end60.i.if.end92.i_crit_edge:                  ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end92.i

if.then90.i:                                      ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %143 = ptrtoint ptr %root_node.i67 to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %node0.0245.i, ptr %root_node.i67, align 4
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.then90.i, %if.end60.i.if.end92.i_crit_edge
  %144 = ptrtoint ptr %irm_node.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %irm_node.i, align 8
  %cmp93.i = icmp eq ptr %145, %node1.0248.i
  br i1 %cmp93.i, label %if.then95.i, label %if.end92.i.if.end97.i_crit_edge

if.end92.i.if.end97.i_crit_edge:                  ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97.i

if.then95.i:                                      ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #8
  %146 = ptrtoint ptr %irm_node.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store ptr %node0.0245.i, ptr %irm_node.i, align 8
  br label %if.end97.i

if.end97.i:                                       ; preds = %if.then95.i, %if.end92.i.if.end97.i_crit_edge
  %147 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %port_count.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %148)
  %cmp100235.not.i = icmp eq i8 %148, 0
  br i1 %cmp100235.not.i, label %if.end97.i.for.end.i94_crit_edge, label %if.end97.i.for.body.i85_crit_edge

if.end97.i.for.body.i85_crit_edge:                ; preds = %if.end97.i
  br label %for.body.i85

if.end97.i.for.end.i94_crit_edge:                 ; preds = %if.end97.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i94

for.body.i85:                                     ; preds = %for.inc.i.for.body.i85_crit_edge, %if.end97.i.for.body.i85_crit_edge
  %i.0236.i = phi i32 [ %inc.i91, %for.inc.i.for.body.i85_crit_edge ], [ 0, %if.end97.i.for.body.i85_crit_edge ]
  %arrayidx.i84 = getelementptr %struct.fw_node, ptr %node0.0245.i, i32 0, i32 8, i32 %i.0236.i
  %149 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %arrayidx.i84, align 4
  %tobool102.not.i = icmp eq ptr %150, null
  %arrayidx135.i = getelementptr %struct.fw_node, ptr %node1.0248.i, i32 0, i32 8, i32 %i.0236.i
  %151 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx135.i, align 4
  %tobool136.not.i = icmp eq ptr %152, null
  br i1 %tobool102.not.i, label %if.else133.i, label %land.lhs.true103.i

land.lhs.true103.i:                               ; preds = %for.body.i85
  br i1 %tobool136.not.i, label %if.then128.i, label %if.then107.i

if.then107.i:                                     ; preds = %land.lhs.true103.i
  %color110.i = getelementptr inbounds %struct.fw_node, ptr %150, i32 0, i32 1
  %153 = ptrtoint ptr %color110.i to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %color110.i, align 2
  %155 = ptrtoint ptr %color to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %color, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %154, i8 %156)
  %cmp114.i = icmp eq i8 %154, %156
  br i1 %cmp114.i, label %if.then107.i.for.inc.i_crit_edge, label %if.end117.i

if.then107.i.for.inc.i_crit_edge:                 ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end117.i:                                      ; preds = %if.then107.i
  %link120.i = getelementptr inbounds %struct.fw_node, ptr %150, i32 0, i32 6
  %157 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %105, align 4
  %call.i.i220.i = call zeroext i1 @__list_add_valid(ptr noundef %link120.i, ptr noundef %158, ptr noundef nonnull %list0.i) #6
  br i1 %call.i.i220.i, label %if.end.i.i222.i, label %if.end117.i.list_add_tail.exit223.i_crit_edge

if.end117.i.list_add_tail.exit223.i_crit_edge:    ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit223.i

if.end.i.i222.i:                                  ; preds = %if.end117.i
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %link120.i, ptr %105, align 4
  %160 = ptrtoint ptr %link120.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %list0.i, ptr %link120.i, align 4
  %prev3.i.i221.i = getelementptr inbounds %struct.fw_node, ptr %150, i32 0, i32 6, i32 1
  %161 = ptrtoint ptr %prev3.i.i221.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr %158, ptr %prev3.i.i221.i, align 4
  %162 = ptrtoint ptr %158 to i32
  call void @__asan_store4_noabort(i32 %162)
  store volatile ptr %link120.i, ptr %158, align 4
  br label %list_add_tail.exit223.i

list_add_tail.exit223.i:                          ; preds = %if.end.i.i222.i, %if.end117.i.list_add_tail.exit223.i_crit_edge
  %163 = ptrtoint ptr %arrayidx135.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %arrayidx135.i, align 4
  %link123.i = getelementptr inbounds %struct.fw_node, ptr %164, i32 0, i32 6
  %165 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %106, align 4
  %call.i.i225.i = call zeroext i1 @__list_add_valid(ptr noundef %link123.i, ptr noundef %166, ptr noundef nonnull %list1.i) #6
  br i1 %call.i.i225.i, label %if.end.i.i227.i, label %list_add_tail.exit223.i.for.inc.i_crit_edge

list_add_tail.exit223.i.for.inc.i_crit_edge:      ; preds = %list_add_tail.exit223.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i.i227.i:                                  ; preds = %list_add_tail.exit223.i
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr %link123.i, ptr %106, align 4
  %168 = ptrtoint ptr %link123.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %list1.i, ptr %link123.i, align 4
  %prev3.i.i226.i = getelementptr inbounds %struct.fw_node, ptr %164, i32 0, i32 6, i32 1
  %169 = ptrtoint ptr %prev3.i.i226.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev3.i.i226.i, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %link123.i, ptr %166, align 4
  br label %for.inc.i

if.then128.i:                                     ; preds = %land.lhs.true103.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef nonnull %150, ptr noundef nonnull @report_lost_node) #6
  %171 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr null, ptr %arrayidx.i84, align 4
  br label %for.inc.i

if.else133.i:                                     ; preds = %for.body.i85
  br i1 %tobool136.not.i, label %if.else133.i.for.inc.i_crit_edge, label %if.then137.i

if.else133.i.for.inc.i_crit_edge:                 ; preds = %if.else133.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then137.i:                                     ; preds = %if.else133.i
  %172 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %152, ptr %arrayidx.i84, align 4
  %port_count.i.i = getelementptr inbounds %struct.fw_node, ptr %152, i32 0, i32 2
  %173 = ptrtoint ptr %port_count.i.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %port_count.i.i, align 1
  %conv.i.i86 = zext i8 %174 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %cmp19.not.i.i = icmp eq i8 %174, 0
  br i1 %cmp19.not.i.i, label %if.then137.i.move_tree.exit.i_crit_edge, label %if.then137.i.for.body.i.i89_crit_edge

if.then137.i.for.body.i.i89_crit_edge:            ; preds = %if.then137.i
  br label %for.body.i.i89

if.then137.i.move_tree.exit.i_crit_edge:          ; preds = %if.then137.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %move_tree.exit.i

for.cond.i.i:                                     ; preds = %for.body.i.i89
  %inc.i.i87 = add nuw nsw i32 %i.020.i.i, 1
  %exitcond.not.i.i88 = icmp eq i32 %inc.i.i87, %conv.i.i86
  br i1 %exitcond.not.i.i88, label %for.cond.i.i.move_tree.exit.i_crit_edge, label %for.cond.i.i.for.body.i.i89_crit_edge

for.cond.i.i.for.body.i.i89_crit_edge:            ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i89

for.cond.i.i.move_tree.exit.i_crit_edge:          ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %move_tree.exit.i

for.body.i.i89:                                   ; preds = %for.cond.i.i.for.body.i.i89_crit_edge, %if.then137.i.for.body.i.i89_crit_edge
  %i.020.i.i = phi i32 [ %inc.i.i87, %for.cond.i.i.for.body.i.i89_crit_edge ], [ 0, %if.then137.i.for.body.i.i89_crit_edge ]
  %arrayidx5.i.i = getelementptr %struct.fw_node, ptr %152, i32 0, i32 8, i32 %i.020.i.i
  %175 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx5.i.i, align 4
  %cmp6.i.i = icmp eq ptr %176, %node1.0248.i
  br i1 %cmp6.i.i, label %if.then.i.i90, label %for.cond.i.i

if.then.i.i90:                                    ; preds = %for.body.i.i89
  call void @__sanitizer_cov_trace_pc() #8
  %177 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %node0.0245.i, ptr %arrayidx5.i.i, align 4
  br label %move_tree.exit.i

move_tree.exit.i:                                 ; preds = %if.then.i.i90, %for.cond.i.i.move_tree.exit.i_crit_edge, %if.then137.i.move_tree.exit.i_crit_edge
  %178 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %arrayidx.i84, align 4
  call fastcc void @for_each_fw_node(ptr noundef %card, ptr noundef %179, ptr noundef nonnull @report_found_node) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %move_tree.exit.i, %if.else133.i.for.inc.i_crit_edge, %if.then128.i, %if.end.i.i227.i, %list_add_tail.exit223.i.for.inc.i_crit_edge, %if.then107.i.for.inc.i_crit_edge
  %inc.i91 = add nuw nsw i32 %i.0236.i, 1
  %180 = ptrtoint ptr %port_count.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %port_count.i, align 1
  %conv99.i = zext i8 %181 to i32
  %cmp100.i = icmp ult i32 %inc.i91, %conv99.i
  br i1 %cmp100.i, label %for.inc.i.for.body.i85_crit_edge, label %for.inc.i.for.end.i94_crit_edge

for.inc.i.for.end.i94_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i94

for.inc.i.for.body.i85_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i85

for.end.i94:                                      ; preds = %for.inc.i.for.end.i94_crit_edge, %if.end97.i.for.end.i94_crit_edge
  %182 = ptrtoint ptr %.pn232244.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %.pn232244.i, align 4
  %184 = ptrtoint ptr %.pn241.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %.pn241.i, align 4
  %ref_count.i.i92 = getelementptr i8, ptr %.pn241.i, i32 -4
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %ref_count.i.i92, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !29
  call void @llvm.prefetch.p0(ptr %ref_count.i.i92, i32 1, i32 3, i32 1) #6
  %186 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %ref_count.i.i92, ptr %ref_count.i.i92, i32 1, ptr elementtype(i32) %ref_count.i.i92) #6, !srcloc !30
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %186, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i93 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i93, label %if.then.i231.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fw_node_put.exit.i_crit_edge, label %if.then10.i.i.i.i.i, !prof !27

if.end5.i.i.i.i.i.fw_node_put.exit.i_crit_edge:   ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %fw_node_put.exit.i

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %ref_count.i.i92, i32 noundef 3) #6
  br label %fw_node_put.exit.i

if.then.i231.i:                                   ; preds = %for.end.i94
  call void @__sanitizer_cov_trace_pc() #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !31
  call void @kfree(ptr noundef %node1.0248.i) #6
  br label %fw_node_put.exit.i

fw_node_put.exit.i:                               ; preds = %if.then.i231.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_node_put.exit.i_crit_edge
  %cmp.not.i = icmp eq ptr %183, %list0.i
  br i1 %cmp.not.i, label %fw_node_put.exit.i.update_tree.exit_crit_edge, label %fw_node_put.exit.i.while.body.i80_crit_edge

fw_node_put.exit.i.while.body.i80_crit_edge:      ; preds = %fw_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i80

fw_node_put.exit.i.update_tree.exit_crit_edge:    ; preds = %fw_node_put.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %update_tree.exit

update_tree.exit:                                 ; preds = %fw_node_put.exit.i.update_tree.exit_crit_edge, %list_add_tail.exit217.i.update_tree.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list1.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list0.i) #6
  br label %if.end33

if.end33:                                         ; preds = %update_tree.exit, %if.then29, %if.then25
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_schedule_bm_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @report_found_node(ptr noundef %card, ptr noundef %node, ptr noundef readonly %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_speed = getelementptr inbounds %struct.fw_node, ptr %node, i32 0, i32 3
  %0 = ptrtoint ptr %phy_speed to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %phy_speed, align 4
  %bf.lshr = lshr i8 %bf.load, 3
  %bf.clear = and i8 %bf.lshr, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %bf.clear)
  %cmp = icmp eq i8 %bf.clear, 3
  %cmp2.not = icmp eq ptr %parent, null
  br i1 %cmp2.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max_speed = getelementptr inbounds %struct.fw_node, ptr %parent, i32 0, i32 3
  %1 = ptrtoint ptr %max_speed to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load4 = load i8, ptr %max_speed, align 4
  %bf.lshr5 = lshr i8 %bf.load4, 1
  %bf.clear6 = and i8 %bf.lshr5, 3
  %2 = tail call i8 @llvm.umin.i8(i8 %bf.clear6, i8 %bf.clear)
  %bf.shl = shl nuw nsw i8 %2, 1
  %bf.clear28 = and i8 %bf.load, -7
  %bf.set = or i8 %bf.shl, %bf.clear28
  %3 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %bf.set, ptr %phy_speed, align 4
  %4 = ptrtoint ptr %max_speed to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load30 = load i8, ptr %max_speed, align 4
  %5 = and i8 %bf.load30, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %phi.sel = select i1 %cmp, i8 32, i8 0
  %6 = select i1 %tobool.not, i8 0, i8 %phi.sel
  %bf.clear40 = and i8 %bf.set, -33
  %bf.set41 = or i8 %bf.clear40, %6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.shl49 = shl nuw nsw i8 %bf.clear, 1
  %bf.clear50 = and i8 %bf.load, -39
  %bf.set51 = or i8 %bf.shl49, %bf.clear50
  %bf.shl56 = select i1 %cmp, i8 32, i8 0
  %bf.set58 = or i8 %bf.set51, %bf.shl56
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i8 [ %bf.set58, %if.else ], [ %bf.set41, %if.then ]
  %7 = ptrtoint ptr %phy_speed to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %storemerge, ptr %phy_speed, align 4
  tail call void @fw_node_event(ptr noundef %card, ptr noundef %node, i32 noundef 0) #6
  %bm_retries = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 31
  %8 = ptrtoint ptr %bm_retries to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %bm_retries, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_node_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_compute_block_crc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.umin.i8(i8, i8) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firewire/core-topology.c", i32 546, i32 16}
!2 = !{ptr @__ksymtab_fw_core_handle_bus_reset, !3, !"__ksymtab_fw_core_handle_bus_reset", i1 false, i1 false}
!3 = !{!"../drivers/firewire/core-topology.c", i32 557, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firewire/core-topology.c", i32 195, i32 17}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/firewire/core-topology.c", i32 201, i32 17}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/firewire/core-topology.c", i32 207, i32 17}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/firewire/core-topology.c", i32 225, i32 17}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/firewire/core-topology.c", i32 274, i32 17}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/firewire/core-topology.c", i32 425, i32 3}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{i64 2148520596, i64 2148520628, i64 2148520657, i64 2148520691, i64 2148520722, i64 2148520745}
!26 = !{!"branch_weights", i32 1, i32 2000}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{ptr @report_found_node, ptr @report_lost_node}
!29 = !{i64 2148608621}
!30 = !{i64 2148523061, i64 2148523093, i64 2148523122, i64 2148523156, i64 2148523187, i64 2148523210}
!31 = !{i64 2149641024}
!32 = !{i8 0, i8 2}
!33 = !{i64 2153897380}
