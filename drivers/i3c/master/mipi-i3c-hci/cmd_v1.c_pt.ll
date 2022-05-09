; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/cmd_v1.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/cmd_v1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_cmd_ops = type { ptr, ptr, ptr, ptr }
%struct.hci_dat_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.i3c_master_controller = type { %struct.device, ptr, %struct.i2c_adapter, ptr, i8, %struct.anon.83, %struct.i3c_bus, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.anon.83 = type { %struct.list_head, %struct.list_head }
%struct.i3c_bus = type { ptr, i32, [8 x i32], i32, %struct.anon.78, %struct.anon.79, %struct.rw_semaphore }
%struct.anon.78 = type { i32, i32 }
%struct.anon.79 = type { %struct.list_head, %struct.list_head }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.hci_xfer = type { [4 x i32], i32, i8, ptr, i32, i32, ptr, %union.anon.84 }
%union.anon.84 = type { %struct.anon.85 }
%struct.anon.85 = type { ptr, ptr, ptr, i32, i32 }
%struct.i3c_hci = type { %struct.i3c_master_controller, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, i32, i32, i32, i32, ptr, i32, i32, i8, i8, i8, i32, i32, i32, ptr }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.hci_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mipi_i3c_hci_cmd_v1 = dso_local constant { %struct.hci_cmd_ops, [16 x i8] } { %struct.hci_cmd_ops { ptr @hci_cmd_v1_prep_ccc, ptr @hci_cmd_v1_prep_i3c_xfer, ptr @hci_cmd_v1_prep_i2c_xfer, ptr @hci_cmd_v1_daa }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/i3c/master/mipi-i3c-hci/cmd_v1.c\00", [55 x i8] zeroinitializer }, align 32
@mipi_i3c_hci_dat_v1 = external dso_local local_unnamed_addr constant %struct.hci_dat_ops, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.2 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@___asan_gen_.4 = private unnamed_addr constant [20 x i8] c"mipi_i3c_hci_cmd_v1\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 373, i32 26 }
@___asan_gen_.8 = private constant [44 x i8] c"../drivers/i3c/master/mipi-i3c-hci/cmd_v1.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 184, i32 6 }
@___asan_gen_.10 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 87, i32 2 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @mipi_i3c_hci_cmd_v1, ptr @.str, ptr @init_completion.__key, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_i3c_hci_cmd_v1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_cmd_v1_prep_ccc(ptr noundef %hci, ptr nocapture noundef %xfer, i8 noundef zeroext %ccc_addr, i8 noundef zeroext %ccc_cmd, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scl_rate.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %scl_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scl_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499999, i32 %1)
  %cmp.i = icmp ugt i32 %1, 12499999
  br i1 %cmp.i, label %entry.get_i3c_mode.exit_crit_edge, label %if.end.i

entry.get_i3c_mode.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp3.i = icmp ugt i32 %1, 8000000
  br i1 %cmp3.i, label %if.end.i.get_i3c_mode.exit_crit_edge, label %if.end5.i

if.end.i.get_i3c_mode.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %1)
  %cmp8.i = icmp ugt i32 %1, 6000000
  br i1 %cmp8.i, label %if.end5.i.get_i3c_mode.exit_crit_edge, label %if.end10.i

if.end5.i.get_i3c_mode.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %1)
  %cmp13.i = icmp ugt i32 %1, 4000000
  br i1 %cmp13.i, label %if.end10.i.get_i3c_mode.exit_crit_edge, label %if.end15.i

if.end10.i.get_i3c_mode.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %1)
  %cmp18.i = icmp ugt i32 %1, 2000000
  %phi.bo = select i1 %cmp18.i, i32 268435456, i32 0
  br label %get_i3c_mode.exit

get_i3c_mode.exit:                                ; preds = %if.end15.i, %if.end10.i.get_i3c_mode.exit_crit_edge, %if.end5.i.get_i3c_mode.exit_crit_edge, %if.end.i.get_i3c_mode.exit_crit_edge, %entry.get_i3c_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_i3c_mode.exit_crit_edge ], [ 67108864, %if.end.i.get_i3c_mode.exit_crit_edge ], [ 134217728, %if.end5.i.get_i3c_mode.exit_crit_edge ], [ 201326592, %if.end10.i.get_i3c_mode.exit_crit_edge ], [ %phi.bo, %if.end15.i ]
  %data1 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 3
  %2 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data1, align 4
  %data_len2 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 4
  %4 = ptrtoint ptr %data_len2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data_len2, align 4
  %rnw3 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 2
  %6 = ptrtoint ptr %rnw3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rnw3, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %raw, label %do.end, label %if.end27, !prof !17

do.end:                                           ; preds = %get_i3c_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 184, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end27:                                         ; preds = %get_i3c_mode.exit
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %ccc_addr)
  %cmp.not = icmp eq i8 %ccc_addr, 126
  br i1 %cmp.not, label %if.end27.if.end35_crit_edge, label %if.then29

if.end27.if.end35_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then29:                                        ; preds = %if.end27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 8), align 4
  %call30 = tail call i32 %8(ptr noundef %hci, i8 noundef zeroext %ccc_addr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.then29.cleanup_crit_edge, label %if.then29.if.end35_crit_edge

if.then29.if.end35_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then29.cleanup_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end35:                                         ; preds = %if.then29.if.end35_crit_edge, %if.end27.if.end35_crit_edge
  %dat_idx.0 = phi i32 [ 0, %if.end27.if.end35_crit_edge ], [ %call30, %if.then29.if.end35_crit_edge ]
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !18
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 5
  %10 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp38 = icmp ult i32 %5, 5
  %or.cond = select i1 %tobool.not, i1 %cmp38, i1 false
  %shl = shl nuw nsw i32 %rem, 3
  %conv103 = zext i8 %ccc_cmd to i32
  %shl104 = shl nuw nsw i32 %conv103, 7
  %or = or i32 %shl, %shl104
  %shl130 = shl i32 %dat_idx.0, 16
  %and131 = and i32 %shl130, 2031616
  %or107 = or i32 %or, %and131
  br i1 %or.cond, label %do.end178, label %do.end300

do.end178:                                        ; preds = %if.end35
  %shl155 = shl nuw nsw i32 %5, 23
  %and156 = and i32 %shl155, 58720256
  %or132 = or i32 %or107, %and156
  %or157 = or i32 %or132, %retval.0.i
  %or182 = or i32 %or157, 32769
  %11 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or182, ptr %xfer, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx.i, align 4
  %13 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end178.fill_data_bytes.exit_crit_edge [
    i32 4, label %do.body3.i
    i32 3, label %do.end178.do.body21.i_crit_edge
    i32 2, label %do.end178.do.body49.i_crit_edge
    i32 1, label %do.end178.do.body77.i_crit_edge
  ]

do.end178.do.body77.i_crit_edge:                  ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77.i

do.end178.do.body49.i_crit_edge:                  ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

do.end178.do.body21.i_crit_edge:                  ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21.i

do.end178.fill_data_bytes.exit_crit_edge:         ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_data_bytes.exit

do.body3.i:                                       ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i = getelementptr i8, ptr %3, i32 3
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx4.i, align 1
  %conv12.i = zext i8 %15 to i32
  %shl.i = shl nuw i32 %conv12.i, 24
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body3.i, %do.end178.do.body21.i_crit_edge
  %arrayidx22.i = getelementptr i8, ptr %3, i32 2
  %17 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx22.i, align 1
  %conv38.i = zext i8 %18 to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 16
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i, align 4
  %or43.i = or i32 %shl39.i, %20
  store i32 %or43.i, ptr %arrayidx.i, align 4
  br label %do.body49.i

do.body49.i:                                      ; preds = %do.body21.i, %do.end178.do.body49.i_crit_edge
  %arrayidx50.i = getelementptr i8, ptr %3, i32 1
  %21 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx50.i, align 1
  %conv66.i = zext i8 %22 to i32
  %shl67.i = shl nuw nsw i32 %conv66.i, 8
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %or71.i = or i32 %shl67.i, %24
  store i32 %or71.i, ptr %arrayidx.i, align 4
  br label %do.body77.i

do.body77.i:                                      ; preds = %do.body49.i, %do.end178.do.body77.i_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %3, align 1
  %conv94.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %or99.i = or i32 %28, %conv94.i
  store i32 %or99.i, ptr %arrayidx.i, align 4
  br label %fill_data_bytes.exit

fill_data_bytes.exit:                             ; preds = %do.body77.i, %do.end178.fill_data_bytes.exit_crit_edge
  %29 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %data1, align 4
  br label %cleanup

do.end300:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %or279 = or i32 %or107, %retval.0.i
  %cond = select i1 %tobool.not, i32 0, i32 536870912
  %or304 = or i32 %or279, %cond
  %or307 = or i32 %or304, 32768
  %30 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %or307, ptr %xfer, align 4
  %shl332 = shl i32 %5, 16
  %arrayidx335 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %31 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl332, ptr %arrayidx335, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end300, %fill_data_bytes.exit, %if.then29.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call30, %if.then29.cleanup_crit_edge ], [ 0, %do.end300 ], [ 0, %fill_data_bytes.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_cmd_v1_prep_i3c_xfer(ptr noundef %hci, ptr nocapture noundef readonly %dev, ptr nocapture noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %scl_rate.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4
  %4 = ptrtoint ptr %scl_rate.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %scl_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12499999, i32 %5)
  %cmp.i = icmp ugt i32 %5, 12499999
  br i1 %cmp.i, label %entry.get_i3c_mode.exit_crit_edge, label %if.end.i

entry.get_i3c_mode.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %5)
  %cmp3.i = icmp ugt i32 %5, 8000000
  br i1 %cmp3.i, label %if.end.i.get_i3c_mode.exit_crit_edge, label %if.end5.i

if.end.i.get_i3c_mode.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %5)
  %cmp8.i = icmp ugt i32 %5, 6000000
  br i1 %cmp8.i, label %if.end5.i.get_i3c_mode.exit_crit_edge, label %if.end10.i

if.end5.i.get_i3c_mode.exit_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %5)
  %cmp13.i = icmp ugt i32 %5, 4000000
  br i1 %cmp13.i, label %if.end10.i.get_i3c_mode.exit_crit_edge, label %if.end15.i

if.end10.i.get_i3c_mode.exit_crit_edge:           ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_mode.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %5)
  %cmp18.i = icmp ugt i32 %5, 2000000
  %phi.bo = select i1 %cmp18.i, i32 268435456, i32 0
  br label %get_i3c_mode.exit

get_i3c_mode.exit:                                ; preds = %if.end15.i, %if.end10.i.get_i3c_mode.exit_crit_edge, %if.end5.i.get_i3c_mode.exit_crit_edge, %if.end.i.get_i3c_mode.exit_crit_edge, %entry.get_i3c_mode.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_i3c_mode.exit_crit_edge ], [ 67108864, %if.end.i.get_i3c_mode.exit_crit_edge ], [ 134217728, %if.end5.i.get_i3c_mode.exit_crit_edge ], [ 201326592, %if.end10.i.get_i3c_mode.exit_crit_edge ], [ %phi.bo, %if.end15.i ]
  %data3 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 3
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %data_len4 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 4
  %8 = ptrtoint ptr %data_len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len4, align 4
  %rnw5 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 2
  %10 = ptrtoint ptr %rnw5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rnw5, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !18
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 5
  %13 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp ult i32 %9, 5
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %shl = shl nuw nsw i32 %rem, 3
  %shl64 = shl i32 %3, 16
  %and65 = and i32 %shl64, 2031616
  %or = or i32 %shl, %and65
  br i1 %or.cond, label %do.end112, label %do.end206

do.end112:                                        ; preds = %get_i3c_mode.exit
  %shl89 = shl nuw nsw i32 %9, 23
  %and90 = and i32 %shl89, 58720256
  %or66 = or i32 %or, %and90
  %or91 = or i32 %or66, %retval.0.i
  %or116 = or i32 %or91, 1
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or116, ptr %xfer, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.i, align 4
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %9, label %do.end112.fill_data_bytes.exit_crit_edge [
    i32 4, label %do.body3.i
    i32 3, label %do.end112.do.body21.i_crit_edge
    i32 2, label %do.end112.do.body49.i_crit_edge
    i32 1, label %do.end112.do.body77.i_crit_edge
  ]

do.end112.do.body77.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77.i

do.end112.do.body49.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

do.end112.do.body21.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21.i

do.end112.fill_data_bytes.exit_crit_edge:         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_data_bytes.exit

do.body3.i:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i = getelementptr i8, ptr %7, i32 3
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i, align 1
  %conv12.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 %conv12.i, 24
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body3.i, %do.end112.do.body21.i_crit_edge
  %arrayidx22.i = getelementptr i8, ptr %7, i32 2
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22.i, align 1
  %conv38.i = zext i8 %21 to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 16
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %or43.i = or i32 %shl39.i, %23
  store i32 %or43.i, ptr %arrayidx.i, align 4
  br label %do.body49.i

do.body49.i:                                      ; preds = %do.body21.i, %do.end112.do.body49.i_crit_edge
  %arrayidx50.i = getelementptr i8, ptr %7, i32 1
  %24 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50.i, align 1
  %conv66.i = zext i8 %25 to i32
  %shl67.i = shl nuw nsw i32 %conv66.i, 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %or71.i = or i32 %shl67.i, %27
  store i32 %or71.i, ptr %arrayidx.i, align 4
  br label %do.body77.i

do.body77.i:                                      ; preds = %do.body49.i, %do.end112.do.body77.i_crit_edge
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %conv94.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %or99.i = or i32 %31, %conv94.i
  store i32 %or99.i, ptr %arrayidx.i, align 4
  br label %fill_data_bytes.exit

fill_data_bytes.exit:                             ; preds = %do.body77.i, %do.end112.fill_data_bytes.exit_crit_edge
  %32 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %data3, align 4
  br label %if.end241

do.end206:                                        ; preds = %get_i3c_mode.exit
  call void @__sanitizer_cov_trace_pc() #7
  %or210 = or i32 %or, %retval.0.i
  %cond = select i1 %tobool.not, i32 0, i32 536870912
  %or212 = or i32 %or210, %cond
  %33 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or212, ptr %xfer, align 4
  %shl237 = shl i32 %9, 16
  %arrayidx240 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl237, ptr %arrayidx240, align 4
  br label %if.end241

if.end241:                                        ; preds = %do.end206, %fill_data_bytes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_cmd_v1_prep_i2c_xfer(ptr noundef %hci, ptr nocapture noundef readonly %dev, ptr nocapture noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %master_priv.i = getelementptr inbounds %struct.i3c_i2c_dev_desc, ptr %dev, i32 0, i32 2
  %0 = ptrtoint ptr %master_priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %master_priv.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %i2c.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4, i32 1
  %4 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %i2c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %5)
  %cmp.i = icmp ugt i32 %5, 999999
  %data3 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 3
  %6 = ptrtoint ptr %data3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data3, align 4
  %data_len4 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 4
  %8 = ptrtoint ptr %data_len4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len4, align 4
  %rnw5 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 2
  %10 = ptrtoint ptr %rnw5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %rnw5, align 4, !range !16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !18
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 5
  %13 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp ult i32 %9, 5
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %shl = shl nuw nsw i32 %rem, 3
  %shl64 = shl i32 %3, 16
  %and65 = and i32 %shl64, 2031616
  %or = or i32 %shl, %and65
  br i1 %or.cond, label %do.end112, label %do.end206

do.end112:                                        ; preds = %entry
  %shl89 = shl nuw nsw i32 %9, 23
  %and90 = and i32 %shl89, 58720256
  %or66 = or i32 %or, %and90
  %shl114 = select i1 %cmp.i, i32 67108864, i32 0
  %or91 = or i32 %or66, %shl114
  %or116 = or i32 %or91, 1
  %14 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or116, ptr %xfer, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %arrayidx.i, align 4
  %16 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %9, label %do.end112.fill_data_bytes.exit_crit_edge [
    i32 4, label %do.body3.i
    i32 3, label %do.end112.do.body21.i_crit_edge
    i32 2, label %do.end112.do.body49.i_crit_edge
    i32 1, label %do.end112.do.body77.i_crit_edge
  ]

do.end112.do.body77.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body77.i

do.end112.do.body49.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body49.i

do.end112.do.body21.i_crit_edge:                  ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body21.i

do.end112.fill_data_bytes.exit_crit_edge:         ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  br label %fill_data_bytes.exit

do.body3.i:                                       ; preds = %do.end112
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx4.i = getelementptr i8, ptr %7, i32 3
  %17 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx4.i, align 1
  %conv12.i = zext i8 %18 to i32
  %shl.i = shl nuw i32 %conv12.i, 24
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  br label %do.body21.i

do.body21.i:                                      ; preds = %do.body3.i, %do.end112.do.body21.i_crit_edge
  %arrayidx22.i = getelementptr i8, ptr %7, i32 2
  %20 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22.i, align 1
  %conv38.i = zext i8 %21 to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 16
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i, align 4
  %or43.i = or i32 %shl39.i, %23
  store i32 %or43.i, ptr %arrayidx.i, align 4
  br label %do.body49.i

do.body49.i:                                      ; preds = %do.body21.i, %do.end112.do.body49.i_crit_edge
  %arrayidx50.i = getelementptr i8, ptr %7, i32 1
  %24 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx50.i, align 1
  %conv66.i = zext i8 %25 to i32
  %shl67.i = shl nuw nsw i32 %conv66.i, 8
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %or71.i = or i32 %shl67.i, %27
  store i32 %or71.i, ptr %arrayidx.i, align 4
  br label %do.body77.i

do.body77.i:                                      ; preds = %do.body49.i, %do.end112.do.body77.i_crit_edge
  %28 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %7, align 1
  %conv94.i = zext i8 %29 to i32
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i, align 4
  %or99.i = or i32 %31, %conv94.i
  store i32 %or99.i, ptr %arrayidx.i, align 4
  br label %fill_data_bytes.exit

fill_data_bytes.exit:                             ; preds = %do.body77.i, %do.end112.fill_data_bytes.exit_crit_edge
  %32 = ptrtoint ptr %data3 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %data3, align 4
  br label %if.end241

do.end206:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl208 = select i1 %cmp.i, i32 67108864, i32 0
  %or210 = or i32 %or, %shl208
  %cond = select i1 %tobool.not, i32 0, i32 536870912
  %or212 = or i32 %or210, %cond
  %33 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or212, ptr %xfer, align 4
  %shl237 = shl i32 %9, 16
  %arrayidx240 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx240 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl237, ptr %arrayidx240, align 4
  br label %if.end241

if.end241:                                        ; preds = %do.end206, %fill_data_bytes.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_cmd_v1_daa(ptr noundef %hci) #0 align 64 {
entry:
  %pid = alloca i64, align 8
  %dcr = alloca i32, align 4
  %bcr = alloca i32, align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pid) #5
  %0 = ptrtoint ptr %pid to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %pid, align 8, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dcr) #5
  %1 = ptrtoint ptr %dcr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %dcr, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bcr) #5
  %2 = ptrtoint ptr %bcr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bcr, align 4, !annotation !19
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #5
  %3 = getelementptr inbounds i8, ptr %done, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 52)
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @init_completion.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #8
  %tobool.not = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 2), align 4
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 5
  %arrayidx108 = getelementptr [4 x i32], ptr %call7.i.i.i.i, i32 0, i32 1
  %io = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 9
  %response = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end185.for.cond_crit_edge, %for.cond.preheader
  %next_addr.0 = phi i8 [ %conv, %if.end185.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %call1 = call i32 %7(ptr noundef %hci) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %for.cond.if.end195_crit_edge, label %if.end3

for.cond.if.end195_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.end3:                                          ; preds = %for.cond
  %call4 = call i32 @i3c_master_get_free_addr(ptr noundef %hci, i8 noundef zeroext %next_addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end3.if.then194_crit_edge, label %if.end7

if.end3.if.then194_crit_edge:                     ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then194

if.end7:                                          ; preds = %if.end3
  %conv = trunc i32 %call4 to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 4), align 4
  call void %8(ptr noundef %hci, i32 noundef %call1, i8 noundef zeroext %conv) #5
  call void @mipi_i3c_hci_dct_index_reset(ptr noundef %hci) #5
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %9 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !18
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %10 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %cmd_tid, align 8
  %shl = shl nuw nsw i32 %rem, 3
  %shl85 = shl i32 %call1, 16
  %and86 = and i32 %shl85, 2031616
  %or62 = or i32 %shl, %and86
  %or106 = or i32 %or62, -1006632062
  %11 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or106, ptr %call7.i.i.i.i, align 8
  %12 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx108, align 4
  %13 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %io, align 8
  %queue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %queue_xfer to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_xfer, align 4
  %call109 = call i32 %16(ptr noundef %hci, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1) #5
  %call110 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %land.lhs.true, label %if.end7.do.end131_crit_edge

if.end7.do.end131_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end131

land.lhs.true:                                    ; preds = %if.end7
  %17 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %io, align 8
  %dequeue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %dequeue_xfer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dequeue_xfer, align 4
  %call113 = call zeroext i1 %20(ptr noundef %hci, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 1) #5
  br i1 %call113, label %land.lhs.true.if.then194_crit_edge, label %land.lhs.true.do.end131_crit_edge

land.lhs.true.do.end131_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end131

land.lhs.true.if.then194_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then194

do.end131:                                        ; preds = %land.lhs.true.do.end131_crit_edge, %if.end7.do.end131_crit_edge
  %21 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %response, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %22)
  %cmp182.not = icmp ult i32 %22, 268435456
  br i1 %cmp182.not, label %if.end185, label %do.end131.if.then194_crit_edge

do.end131.if.then194_crit_edge:                   ; preds = %do.end131
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then194

if.end185:                                        ; preds = %do.end131
  call void @i3c_hci_dct_get_val(ptr noundef %hci, i32 noundef 0, ptr noundef nonnull %pid, ptr noundef nonnull %dcr, ptr noundef nonnull %bcr) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3), align 4
  call void %23(ptr noundef %hci, i32 noundef %call1) #5
  %call188 = call i32 @i3c_master_add_i3c_dev_locked(ptr noundef %hci, i8 noundef zeroext %conv) #5
  %tobool189.not = icmp eq i32 %call188, 0
  br i1 %tobool189.not, label %if.end185.for.cond_crit_edge, label %if.end185.if.end195_crit_edge

if.end185.if.end195_crit_edge:                    ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end195

if.end185.for.cond_crit_edge:                     ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

if.then194:                                       ; preds = %do.end131.if.then194_crit_edge, %land.lhs.true.if.then194_crit_edge, %if.end3.if.then194_crit_edge
  %ret.0.ph = phi i32 [ -5, %do.end131.if.then194_crit_edge ], [ -62, %land.lhs.true.if.then194_crit_edge ], [ %call4, %if.end3.if.then194_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.hci_dat_ops, ptr @mipi_i3c_hci_dat_v1, i32 0, i32 3), align 4
  call void %24(ptr noundef %hci, i32 noundef %call1) #5
  br label %if.end195

if.end195:                                        ; preds = %if.then194, %if.end185.if.end195_crit_edge, %for.cond.if.end195_crit_edge
  %ret.0244 = phi i32 [ %ret.0.ph, %if.then194 ], [ %call188, %if.end185.if.end195_crit_edge ], [ %call1, %for.cond.if.end195_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end195, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0244, %if.end195 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bcr) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dcr) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pid) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_i3c_hci_dct_index_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i3c_hci_dct_get_val(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_add_i3c_dev_locked(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15}

!0 = !{ptr @mipi_i3c_hci_cmd_v1, !1, !"mipi_i3c_hci_cmd_v1", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/cmd_v1.c", i32 373, i32 26}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i3c/master/mipi-i3c-hci/cmd_v1.c", i32 184, i32 6}
!4 = !{ptr @init_completion.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../include/linux/completion.h", i32 87, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = !{i8 0, i8 2}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2148255905, i64 2148255937, i64 2148255966, i64 2148256000, i64 2148256031, i64 2148256054}
!19 = !{!"auto-init"}
