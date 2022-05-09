; ModuleID = '/llk/IR_all_yes/sound/firewire/dice/dice-tcelectronic.c_pt.bc'
source_filename = "../sound/firewire/dice/dice-tcelectronic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.94 = type { i32, ptr }
%struct.dice_tc_spec = type { [2 x [3 x i32]], [2 x [3 x i32]], i8 }
%struct.fw_csr_iterator = type { ptr, ptr }
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
%struct.fw_unit = type { %struct.device, ptr, %struct.fw_attribute_group }
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
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@snd_dice_detect_tcelectronic_formats.entry = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@snd_dice_detect_tcelectronic_formats.entries = internal constant { [7 x %struct.anon.94], [40 x i8] } { [7 x %struct.anon.94] [%struct.anon.94 { i32 32, ptr @konnekt_24d }, %struct.anon.94 { i32 33, ptr @konnekt_8 }, %struct.anon.94 { i32 34, ptr @studio_konnekt_48 }, %struct.anon.94 { i32 35, ptr @konnekt_live }, %struct.anon.94 { i32 36, ptr @desktop_konnekt6 }, %struct.anon.94 { i32 39, ptr @impact_twin }, %struct.anon.94 { i32 48, ptr @digital_konnekt_x32 }], [40 x i8] zeroinitializer }, align 32
@konnekt_24d = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 6], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 6], [3 x i32] zeroinitializer], i8 1 }, [44 x i8] zeroinitializer }, align 32
@konnekt_8 = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 4, i32 4, i32 3], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 4, i32 4, i32 3], [3 x i32] zeroinitializer], i8 1 }, [44 x i8] zeroinitializer }, align 32
@studio_konnekt_48 = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 8], [3 x i32] [i32 16, i32 16, i32 7]], [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 8], [3 x i32] [i32 14, i32 14, i32 7]], i8 1 }, [44 x i8] zeroinitializer }, align 32
@konnekt_live = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 6], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 6], [3 x i32] zeroinitializer], i8 1 }, [44 x i8] zeroinitializer }, align 32
@desktop_konnekt6 = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 6, i32 6, i32 2], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 6, i32 6, i32 4], [3 x i32] zeroinitializer], i8 0 }, [44 x i8] zeroinitializer }, align 32
@impact_twin = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 14, i32 10, i32 6], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 14, i32 10, i32 6], [3 x i32] zeroinitializer], i8 1 }, [44 x i8] zeroinitializer }, align 32
@digital_konnekt_x32 = internal constant { %struct.dice_tc_spec, [44 x i8] } { %struct.dice_tc_spec { [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 4], [3 x i32] zeroinitializer], [2 x [3 x i32]] [[3 x i32] [i32 16, i32 16, i32 4], [3 x i32] zeroinitializer], i8 0 }, [44 x i8] zeroinitializer }, align 32
@switch.table.snd_dice_detect_tcelectronic_formats = internal constant { [17 x ptr], [60 x i8] } { [17 x ptr] [ptr @snd_dice_detect_tcelectronic_formats.entries, ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 1), ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 2), ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 3), ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 4), ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 5), ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr getelementptr inbounds ([7 x %struct.anon.94], ptr @snd_dice_detect_tcelectronic_formats.entries, i32 0, i32 6)], [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 63, i32 5 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"entries\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 63, i32 12 }
@___asan_gen_.7 = private unnamed_addr constant [12 x i8] c"konnekt_24d\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 34, i32 34 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"konnekt_8\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 28, i32 34 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"studio_konnekt_48\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 46, i32 34 }
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"konnekt_live\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 40, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"desktop_konnekt6\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 16, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [12 x i8] c"impact_twin\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 22, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"digital_konnekt_x32\00", align 1
@___asan_gen_.26 = private constant [43 x i8] c"../sound/firewire/dice/dice-tcelectronic.c\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 52, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [50 x i8] c"switch.table.snd_dice_detect_tcelectronic_formats\00", align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @snd_dice_detect_tcelectronic_formats.entry, ptr @snd_dice_detect_tcelectronic_formats.entries, ptr @konnekt_24d, ptr @konnekt_8, ptr @studio_konnekt_48, ptr @konnekt_live, ptr @desktop_konnekt6, ptr @impact_twin, ptr @digital_konnekt_x32, ptr @switch.table.snd_dice_detect_tcelectronic_formats], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats.entry to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_dice_detect_tcelectronic_formats.entries to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @konnekt_24d to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @konnekt_8 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @studio_konnekt_48 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @konnekt_live to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @desktop_konnekt6 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impact_twin to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @digital_konnekt_x32 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.snd_dice_detect_tcelectronic_formats to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_dice_detect_tcelectronic_formats(ptr nocapture noundef %dice) local_unnamed_addr #0 align 64 {
entry:
  %it = alloca %struct.fw_csr_iterator, align 4
  %key = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %it) #3
  %0 = ptrtoint ptr %it to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %it, align 4, !annotation !27
  %1 = getelementptr inbounds %struct.fw_csr_iterator, ptr %it, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %key) #3
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %key, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !27
  %unit = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 1
  %5 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %unit, align 4
  %directory = getelementptr inbounds %struct.fw_unit, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %directory to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %directory, align 8
  call void @fw_csr_iterator_init(ptr noundef nonnull %it, ptr noundef %8) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %call = call i32 @fw_csr_iterator_next(ptr noundef nonnull %it, ptr noundef nonnull %key, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

while.body:                                       ; preds = %while.cond
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %key, align 4
  %cmp = icmp eq i32 %10, 23
  br i1 %cmp, label %while.end, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #5
  br label %while.cond

while.end:                                        ; preds = %while.body
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %switch.tableidx = add i32 %12, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %switch.tableidx)
  %13 = icmp ult i32 %switch.tableidx, 17
  br i1 %13, label %switch.hole_check, label %while.end.cleanup_crit_edge

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.hole_check:                                ; preds = %while.end
  %switch.shifted = lshr i32 65695, %switch.tableidx
  %14 = and i32 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %switch.lobit.not = icmp eq i32 %14, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [17 x ptr], ptr @switch.table.snd_dice_detect_tcelectronic_formats, i32 0, i32 %switch.tableidx
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load ptr, ptr %switch.gep, align 4
  store ptr %switch.load, ptr @snd_dice_detect_tcelectronic_formats.entry, align 4
  %tx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 10
  %spec = getelementptr inbounds %struct.anon.94, ptr %switch.load, i32 0, i32 1
  %16 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %spec, align 4
  %18 = call ptr @memcpy(ptr %tx_pcm_chs, ptr %17, i32 24)
  %rx_pcm_chs = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 11
  %19 = load ptr, ptr %spec, align 4
  %rx_pcm_chs13 = getelementptr inbounds %struct.dice_tc_spec, ptr %19, i32 0, i32 1
  %20 = call ptr @memcpy(ptr %rx_pcm_chs, ptr %rx_pcm_chs13, i32 24)
  %21 = load ptr, ptr %spec, align 4
  %has_midi = getelementptr inbounds %struct.dice_tc_spec, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %has_midi to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %has_midi, align 4, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not = icmp eq i8 %23, 0
  br i1 %tobool16.not, label %switch.lookup.cleanup_crit_edge, label %if.then17

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then17:                                        ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #5
  %tx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 12
  %24 = ptrtoint ptr %tx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %tx_midi_ports, align 8
  %rx_midi_ports = getelementptr inbounds %struct.snd_dice, ptr %dice, i32 0, i32 13
  %25 = ptrtoint ptr %rx_midi_ports to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %rx_midi_ports, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %switch.lookup.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %while.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then17 ], [ 0, %switch.lookup.cleanup_crit_edge ], [ -19, %switch.hole_check.cleanup_crit_edge ], [ -19, %while.end.cleanup_crit_edge ], [ -19, %while.cond.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %key) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %it) #3
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_csr_iterator_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_csr_iterator_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @snd_dice_detect_tcelectronic_formats.entry, !1, !"entry", i1 false, i1 false}
!1 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 63, i32 5}
!2 = !{ptr @snd_dice_detect_tcelectronic_formats.entries, !3, !"entries", i1 false, i1 false}
!3 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 63, i32 12}
!4 = !{ptr @konnekt_24d, !5, !"konnekt_24d", i1 false, i1 false}
!5 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 34, i32 34}
!6 = !{ptr @konnekt_8, !7, !"konnekt_8", i1 false, i1 false}
!7 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 28, i32 34}
!8 = !{ptr @studio_konnekt_48, !9, !"studio_konnekt_48", i1 false, i1 false}
!9 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 46, i32 34}
!10 = !{ptr @konnekt_live, !11, !"konnekt_live", i1 false, i1 false}
!11 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 40, i32 34}
!12 = !{ptr @desktop_konnekt6, !13, !"desktop_konnekt6", i1 false, i1 false}
!13 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 16, i32 34}
!14 = !{ptr @impact_twin, !15, !"impact_twin", i1 false, i1 false}
!15 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 22, i32 34}
!16 = !{ptr @digital_konnekt_x32, !17, !"digital_konnekt_x32", i1 false, i1 false}
!17 = !{!"../sound/firewire/dice/dice-tcelectronic.c", i32 52, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
!28 = !{i8 0, i8 2}
