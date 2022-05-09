; ModuleID = '/llk/IR_all_yes/sound/firewire/lib.c_pt.bc'
source_filename = "../sound/firewire/lib.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_fw_transaction\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_fw_transaction\09\09\09\09"
module asm "\09.long\09__crc_snd_fw_transaction\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_fw_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_fw_transaction\22\09\09\09\09\09"
module asm "__kstrtabns_snd_fw_transaction:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }

@snd_fw_transaction._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 61, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"transaction failed: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_fw_transaction\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/firewire/lib.c\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_fw_transaction._entry_ptr = internal global ptr @snd_fw_transaction._entry, section ".printk_index", align 4
@__kstrtab_snd_fw_transaction = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_fw_transaction = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_fw_transaction = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_fw_transaction to i32), ptr @__kstrtab_snd_fw_transaction, ptr @__kstrtabns_snd_fw_transaction }, section "___ksymtab+snd_fw_transaction", align 4
@__UNIQUE_ID_description234 = internal constant [61 x i8] c"snd_firewire_lib.description=FireWire audio helper functions\00", section ".modinfo", align 1
@__UNIQUE_ID_author235 = internal constant [61 x i8] c"snd_firewire_lib.author=Clemens Ladisch <clemens@ladisch.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_file236 = internal constant [54 x i8] c"snd_firewire_lib.file=sound/firewire/snd-firewire-lib\00", section ".modinfo", align 1
@__UNIQUE_ID_license237 = internal constant [32 x i8] c"snd_firewire_lib.license=GPL v2\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 19]
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private constant [24 x i8] c"../sound/firewire/lib.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 59, i32 5 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file236, ptr @__UNIQUE_ID_license237, ptr @__ksymtab_snd_fw_transaction, ptr @snd_fw_transaction._entry, ptr @snd_fw_transaction._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_fw_transaction._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_fw_transaction(ptr noundef %unit, i32 noundef %tcode, i64 noundef %offset, ptr noundef %buffer, i32 noundef %length, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %unit, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %and = and i32 %flags, 255
  %and1 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  %generation2 = getelementptr i8, ptr %1, i32 -12
  %card = getelementptr i8, ptr %1, i32 -4
  %node_id = getelementptr i8, ptr %1, i32 -16
  %max_speed = getelementptr i8, ptr %1, i32 -8
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %generation2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !26
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %generation.1 = phi i32 [ %and, %entry.if.end_crit_edge ], [ %3, %if.then ]
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %6 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_id, align 8
  %8 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_speed, align 8
  %call6 = tail call i32 @fw_run_transaction(ptr noundef %5, i32 noundef %tcode, i32 noundef %7, i32 noundef %generation.1, i32 noundef %9, i64 noundef %offset, ptr noundef %buffer, i32 noundef %length) #3
  %10 = zext i32 %call6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call6, label %if.end13 [
    i32 0, label %if.end.cleanup_crit_edge
    i32 19, label %land.lhs.true
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  br i1 %tobool.not, label %lor.lhs.false.thread, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.thread:                             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 20) #3
  br label %if.then.1

if.end13:                                         ; preds = %if.end
  %11 = and i32 %call6, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %12 = icmp eq i32 %11, 6
  br i1 %12, label %if.end13.if.then16_crit_edge, label %lor.lhs.false

if.end13.if.then16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

lor.lhs.false:                                    ; preds = %if.end13
  tail call void @msleep(i32 noundef 20) #3
  br i1 %tobool.not, label %lor.lhs.false.if.then.1_crit_edge, label %lor.lhs.false.if.end.1_crit_edge

lor.lhs.false.if.end.1_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.1

lor.lhs.false.if.then.1_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.1

if.then16:                                        ; preds = %land.lhs.true.2.if.then16_crit_edge, %if.end.2.if.then16_crit_edge, %if.end13.1.if.then16_crit_edge, %if.end13.if.then16_crit_edge
  %call6.lcssa41 = phi i32 [ %call6, %if.end13.if.then16_crit_edge ], [ %call6.1, %if.end13.1.if.then16_crit_edge ], [ 19, %land.lhs.true.2.if.then16_crit_edge ], [ %call6.2, %if.end.2.if.then16_crit_edge ]
  %and17 = and i32 %flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %do.end22, label %if.then16.cleanup_crit_edge

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end22:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #5
  %call24 = tail call ptr @fw_rcode_string(i32 noundef %call6.lcssa41) #3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %unit, ptr noundef nonnull @.str, ptr noundef %call24) #6
  br label %cleanup

if.then.1:                                        ; preds = %lor.lhs.false.if.then.1_crit_edge, %lor.lhs.false.thread
  %13 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %generation2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !26
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %lor.lhs.false.if.end.1_crit_edge
  %generation.1.1 = phi i32 [ %generation.1, %lor.lhs.false.if.end.1_crit_edge ], [ %14, %if.then.1 ]
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %card, align 4
  %17 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %node_id, align 8
  %19 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max_speed, align 8
  %call6.1 = tail call i32 @fw_run_transaction(ptr noundef %16, i32 noundef %tcode, i32 noundef %18, i32 noundef %generation.1.1, i32 noundef %20, i64 noundef %offset, ptr noundef %buffer, i32 noundef %length) #3
  %21 = zext i32 %call6.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %call6.1, label %if.end13.1 [
    i32 0, label %if.end.1.cleanup_crit_edge
    i32 19, label %land.lhs.true.1
  ]

if.end.1.cleanup_crit_edge:                       ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.1:                                  ; preds = %if.end.1
  br i1 %tobool.not, label %lor.lhs.false.1.thread, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

lor.lhs.false.1.thread:                           ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @msleep(i32 noundef 20) #3
  br label %if.then.2

if.end13.1:                                       ; preds = %if.end.1
  %22 = and i32 %call6.1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %22)
  %23 = icmp eq i32 %22, 6
  br i1 %23, label %if.end13.1.if.then16_crit_edge, label %lor.lhs.false.1

if.end13.1.if.then16_crit_edge:                   ; preds = %if.end13.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

lor.lhs.false.1:                                  ; preds = %if.end13.1
  tail call void @msleep(i32 noundef 20) #3
  br i1 %tobool.not, label %lor.lhs.false.1.if.then.2_crit_edge, label %lor.lhs.false.1.if.end.2_crit_edge

lor.lhs.false.1.if.end.2_crit_edge:               ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end.2

lor.lhs.false.1.if.then.2_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.2

if.then.2:                                        ; preds = %lor.lhs.false.1.if.then.2_crit_edge, %lor.lhs.false.1.thread
  %24 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %generation2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #3, !srcloc !26
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %lor.lhs.false.1.if.end.2_crit_edge
  %generation.1.2 = phi i32 [ %generation.1.1, %lor.lhs.false.1.if.end.2_crit_edge ], [ %25, %if.then.2 ]
  %26 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card, align 4
  %28 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %node_id, align 8
  %30 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %max_speed, align 8
  %call6.2 = tail call i32 @fw_run_transaction(ptr noundef %27, i32 noundef %tcode, i32 noundef %29, i32 noundef %generation.1.2, i32 noundef %31, i64 noundef %offset, ptr noundef %buffer, i32 noundef %length) #3
  %32 = zext i32 %call6.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %call6.2, label %if.end.2.if.then16_crit_edge [
    i32 0, label %if.end.2.cleanup_crit_edge
    i32 19, label %land.lhs.true.2
  ]

if.end.2.cleanup_crit_edge:                       ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end.2.if.then16_crit_edge:                     ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

land.lhs.true.2:                                  ; preds = %if.end.2
  br i1 %tobool.not, label %land.lhs.true.2.if.then16_crit_edge, label %land.lhs.true.2.cleanup_crit_edge

land.lhs.true.2.cleanup_crit_edge:                ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

land.lhs.true.2.if.then16_crit_edge:              ; preds = %land.lhs.true.2
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then16

cleanup:                                          ; preds = %land.lhs.true.2.cleanup_crit_edge, %if.end.2.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %if.end.1.cleanup_crit_edge, %do.end22, %if.then16.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end22 ], [ -5, %if.then16.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ -11, %land.lhs.true.cleanup_crit_edge ], [ %call6.1, %if.end.1.cleanup_crit_edge ], [ -11, %land.lhs.true.1.cleanup_crit_edge ], [ %call6.2, %if.end.2.cleanup_crit_edge ], [ -11, %land.lhs.true.2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_run_transaction(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_rcode_string(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

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
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/firewire/lib.c", i32 59, i32 5}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @snd_fw_transaction._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @snd_fw_transaction._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_snd_fw_transaction, !9, !"__ksymtab_snd_fw_transaction", i1 false, i1 false}
!9 = !{!"../sound/firewire/lib.c", i32 68, i32 1}
!10 = !{ptr @__UNIQUE_ID_description234, !11, !"__UNIQUE_ID_description234", i1 false, i1 false}
!11 = !{!"../sound/firewire/lib.c", i32 70, i32 1}
!12 = !{ptr @__UNIQUE_ID_author235, !13, !"__UNIQUE_ID_author235", i1 false, i1 false}
!13 = !{!"../sound/firewire/lib.c", i32 71, i32 1}
!14 = !{ptr @__UNIQUE_ID_file236, !15, !"__UNIQUE_ID_file236", i1 false, i1 false}
!15 = !{!"../sound/firewire/lib.c", i32 72, i32 1}
!16 = !{ptr @__UNIQUE_ID_license237, !15, !"__UNIQUE_ID_license237", i1 false, i1 false}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!26 = !{i64 2154171550}
