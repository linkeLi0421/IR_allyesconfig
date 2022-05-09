; ModuleID = '/llk/IR_all_yes/drivers/i3c/master/mipi-i3c-hci/cmd_v2.c_pt.bc'
source_filename = "../drivers/i3c/master/mipi-i3c-hci/cmd_v2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hci_cmd_ops = type { ptr, ptr, ptr, ptr }
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
%struct.i3c_dev_desc = type { %struct.i3c_i2c_dev_desc, %struct.i3c_device_info, %struct.mutex, ptr, ptr, ptr }
%struct.i3c_i2c_dev_desc = type { %struct.list_head, ptr, ptr }
%struct.i3c_device_info = type { i64, i8, i8, i8, i8, i8, i8, i8, i8, i32, i16, i16 }
%struct.i2c_dev_desc = type { %struct.i3c_i2c_dev_desc, ptr, ptr, i16, i8 }
%struct.hci_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@mipi_i3c_hci_cmd_v2 = dso_local constant { %struct.hci_cmd_ops, [16 x i8] } { %struct.hci_cmd_ops { ptr @hci_cmd_v2_prep_ccc, ptr @hci_cmd_v2_prep_i3c_xfer, ptr @hci_cmd_v2_prep_i2c_xfer, ptr @hci_cmd_v2_daa }, [16 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.1 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"mipi_i3c_hci_cmd_v2\00", align 1
@___asan_gen_.3 = private constant [44 x i8] c"../drivers/i3c/master/mipi-i3c-hci/cmd_v2.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 311, i32 26 }
@___asan_gen_.5 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 87, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @mipi_i3c_hci_cmd_v2, ptr @init_completion.__key, ptr @.str], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipi_i3c_hci_cmd_v2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_cmd_v2_prep_ccc(ptr noundef %hci, ptr nocapture noundef %xfer, i8 noundef zeroext %ccc_addr, i8 noundef zeroext %ccc_cmd, i1 noundef zeroext %raw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scl_rate.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %scl_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scl_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11999999, i32 %1)
  %cmp.i = icmp ugt i32 %1, 11999999
  br i1 %cmp.i, label %entry.get_i3c_rate_idx.exit_crit_edge, label %if.end.i

entry.get_i3c_rate_idx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp3.i = icmp ugt i32 %1, 8000000
  br i1 %cmp3.i, label %if.end.i.get_i3c_rate_idx.exit_crit_edge, label %if.end5.i

if.end.i.get_i3c_rate_idx.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %1)
  %cmp8.i = icmp ugt i32 %1, 6000000
  br i1 %cmp8.i, label %if.end5.i.get_i3c_rate_idx.exit_crit_edge, label %if.end10.i

if.end5.i.get_i3c_rate_idx.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %1)
  %cmp13.i = icmp ugt i32 %1, 4000000
  br i1 %cmp13.i, label %if.end10.i.get_i3c_rate_idx.exit_crit_edge, label %if.end15.i

if.end10.i.get_i3c_rate_idx.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %1)
  %cmp18.i = icmp ugt i32 %1, 2000000
  %..i = select i1 %cmp18.i, i32 4, i32 5
  br label %get_i3c_rate_idx.exit

get_i3c_rate_idx.exit:                            ; preds = %if.end15.i, %if.end10.i.get_i3c_rate_idx.exit_crit_edge, %if.end5.i.get_i3c_rate_idx.exit_crit_edge, %if.end.i.get_i3c_rate_idx.exit_crit_edge, %entry.get_i3c_rate_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_i3c_rate_idx.exit_crit_edge ], [ 1, %if.end.i.get_i3c_rate_idx.exit_crit_edge ], [ 2, %if.end5.i.get_i3c_rate_idx.exit_crit_edge ], [ 3, %if.end10.i.get_i3c_rate_idx.exit_crit_edge ], [ %..i, %if.end15.i ]
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
  %7 = load i8, ptr %rnw3, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 126, i8 %ccc_addr)
  %cmp.not = icmp ne i8 %ccc_addr, 126
  %8 = and i1 %cmp.not, %raw
  br i1 %8, label %if.then, label %if.end

if.then:                                          ; preds = %get_i3c_rate_idx.exit
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @hci_cmd_v2_prep_private_xfer(ptr noundef %hci, ptr noundef %xfer, i8 noundef zeroext %ccc_addr, i32 noundef 0, i32 noundef %retval.0.i)
  br label %cleanup

if.end:                                           ; preds = %get_i3c_rate_idx.exit
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !15
  %asmresult.i.i.i = extractvalue { i32, i32 } %9, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 5
  %10 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %rem, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %5)
  %cmp10 = icmp ult i32 %5, 5
  %or.cond635 = select i1 %tobool.not, i1 %cmp10, i1 false
  br i1 %or.cond635, label %do.end150, label %do.end434

do.end150:                                        ; preds = %if.end
  %cond = zext i1 %raw to i32
  %add = add nuw nsw i32 %5, %cond
  %shl = shl nuw nsw i32 %rem, 3
  %conv71 = zext i8 %ccc_addr to i32
  %shl72 = shl nuw nsw i32 %conv71, 8
  %and73 = and i32 %shl72, 32512
  %or = or i32 %shl, %and73
  %shl97 = shl nuw nsw i32 %retval.0.i, 15
  %or74 = or i32 %or, %shl97
  %shl156 = shl nuw nsw i32 %add, 24
  %and157 = and i32 %shl156, 117440512
  %or99 = or i32 %or74, %and157
  %or158 = or i32 %or99, 4
  %11 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or158, ptr %xfer, align 4
  %arrayidx176 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %arrayidx176, align 4
  %conv200 = zext i8 %ccc_cmd to i32
  %arrayidx204 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv200, ptr %arrayidx204, align 4
  %arrayidx206 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %arrayidx206, align 4
  %15 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end150.sw.epilog_crit_edge [
    i32 4, label %do.body213
    i32 3, label %do.end150.do.body246_crit_edge
    i32 2, label %do.end150.do.body279_crit_edge
    i32 1, label %do.end150.do.body312_crit_edge
  ]

do.end150.do.body312_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body312

do.end150.do.body279_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body279

do.end150.do.body246_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body246

do.end150.sw.epilog_crit_edge:                    ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body213:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx214 = getelementptr i8, ptr %3, i32 3
  %16 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx214, align 1
  %conv233 = zext i8 %17 to i32
  %18 = ptrtoint ptr %arrayidx206 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv233, ptr %arrayidx206, align 4
  br label %do.body246

do.body246:                                       ; preds = %do.body213, %do.end150.do.body246_crit_edge
  %arrayidx247 = getelementptr i8, ptr %3, i32 2
  %19 = ptrtoint ptr %arrayidx247 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx247, align 1
  %conv266 = zext i8 %20 to i32
  %shl267 = shl nuw i32 %conv266, 24
  %or271 = or i32 %shl267, %conv200
  %21 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or271, ptr %arrayidx204, align 4
  br label %do.body279

do.body279:                                       ; preds = %do.body246, %do.end150.do.body279_crit_edge
  %arrayidx280 = getelementptr i8, ptr %3, i32 1
  %22 = ptrtoint ptr %arrayidx280 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx280, align 1
  %conv299 = zext i8 %23 to i32
  %shl300 = shl nuw nsw i32 %conv299, 16
  %24 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx204, align 4
  %or304 = or i32 %shl300, %25
  store i32 %or304, ptr %arrayidx204, align 4
  br label %do.body312

do.body312:                                       ; preds = %do.body279, %do.end150.do.body312_crit_edge
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %3, align 1
  %conv332 = zext i8 %27 to i32
  %shl333 = shl nuw nsw i32 %conv332, 8
  %28 = ptrtoint ptr %arrayidx204 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx204, align 4
  %or337 = or i32 %shl333, %29
  store i32 %or337, ptr %arrayidx204, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body312, %do.end150.sw.epilog_crit_edge
  %30 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %data1, align 4
  br label %cleanup

do.end434:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl380 = shl nuw nsw i32 %rem, 3
  %cond385 = select i1 %tobool.not, i32 0, i32 128
  %or382 = or i32 %shl380, %cond385
  %conv410 = zext i8 %ccc_addr to i32
  %shl411 = shl nuw nsw i32 %conv410, 8
  %and412 = and i32 %shl411, 32512
  %or386 = or i32 %or382, %and412
  %shl436 = shl nuw nsw i32 %retval.0.i, 15
  %or413 = or i32 %or386, %shl436
  %shl495 = select i1 %raw, i32 16777216, i32 0
  %or438 = or i32 %or413, %shl495
  %or497 = or i32 %or438, 4
  %31 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or497, ptr %xfer, align 4
  %and523 = and i32 %5, 4194303
  %arrayidx525 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %32 = ptrtoint ptr %arrayidx525 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %and523, ptr %arrayidx525, align 4
  %conv549 = zext i8 %ccc_cmd to i32
  %arrayidx553 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 2
  %33 = ptrtoint ptr %arrayidx553 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %conv549, ptr %arrayidx553, align 4
  %arrayidx555 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 3
  %34 = ptrtoint ptr %arrayidx555 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx555, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end434, %sw.epilog, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_cmd_v2_prep_i3c_xfer(ptr noundef %hci, ptr nocapture noundef readonly %dev, ptr nocapture noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %scl_rate.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4
  %0 = ptrtoint ptr %scl_rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scl_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11999999, i32 %1)
  %cmp.i = icmp ugt i32 %1, 11999999
  br i1 %cmp.i, label %entry.get_i3c_rate_idx.exit_crit_edge, label %if.end.i

entry.get_i3c_rate_idx.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp3.i = icmp ugt i32 %1, 8000000
  br i1 %cmp3.i, label %if.end.i.get_i3c_rate_idx.exit_crit_edge, label %if.end5.i

if.end.i.get_i3c_rate_idx.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000000, i32 %1)
  %cmp8.i = icmp ugt i32 %1, 6000000
  br i1 %cmp8.i, label %if.end5.i.get_i3c_rate_idx.exit_crit_edge, label %if.end10.i

if.end5.i.get_i3c_rate_idx.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end10.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %1)
  %cmp13.i = icmp ugt i32 %1, 4000000
  br i1 %cmp13.i, label %if.end10.i.get_i3c_rate_idx.exit_crit_edge, label %if.end15.i

if.end10.i.get_i3c_rate_idx.exit_crit_edge:       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i3c_rate_idx.exit

if.end15.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %1)
  %cmp18.i = icmp ugt i32 %1, 2000000
  %..i = select i1 %cmp18.i, i32 4, i32 5
  br label %get_i3c_rate_idx.exit

get_i3c_rate_idx.exit:                            ; preds = %if.end15.i, %if.end10.i.get_i3c_rate_idx.exit_crit_edge, %if.end5.i.get_i3c_rate_idx.exit_crit_edge, %if.end.i.get_i3c_rate_idx.exit_crit_edge, %entry.get_i3c_rate_idx.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %entry.get_i3c_rate_idx.exit_crit_edge ], [ 1, %if.end.i.get_i3c_rate_idx.exit_crit_edge ], [ 2, %if.end5.i.get_i3c_rate_idx.exit_crit_edge ], [ 3, %if.end10.i.get_i3c_rate_idx.exit_crit_edge ], [ %..i, %if.end15.i ]
  %dyn_addr = getelementptr inbounds %struct.i3c_dev_desc, ptr %dev, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %dyn_addr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dyn_addr, align 1
  tail call fastcc void @hci_cmd_v2_prep_private_xfer(ptr noundef %hci, ptr noundef %xfer, i8 noundef zeroext %3, i32 noundef 0, i32 noundef %retval.0.i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hci_cmd_v2_prep_i2c_xfer(ptr noundef %hci, ptr nocapture noundef readonly %dev, ptr nocapture noundef %xfer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %i2c.i = getelementptr inbounds %struct.i3c_master_controller, ptr %hci, i32 0, i32 6, i32 4, i32 1
  %0 = ptrtoint ptr %i2c.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i2c.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 999999, i32 %1)
  %cmp.i = icmp ugt i32 %1, 999999
  %..i = zext i1 %cmp.i to i32
  %addr1 = getelementptr inbounds %struct.i2c_dev_desc, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %addr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %addr1, align 4
  %conv = trunc i16 %3 to i8
  tail call fastcc void @hci_cmd_v2_prep_private_xfer(ptr noundef %hci, ptr noundef %xfer, i8 noundef zeroext %conv, i32 noundef 8, i32 noundef %..i)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hci_cmd_v2_daa(ptr noundef %hci) #0 align 64 {
entry:
  %device_id = alloca [2 x i32], align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %device_id) #5
  %0 = ptrtoint ptr %device_id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %device_id, align 4, !annotation !16
  %1 = getelementptr inbounds [2 x i32], ptr %device_id, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !16
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #5
  %3 = getelementptr inbounds i8, ptr %done, i32 4
  %4 = call ptr @memset(ptr %3, i32 255, i32 52)
  %5 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #8
  %tobool.not = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %device_id, ptr %data, align 8
  %data_len = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %data_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 8, ptr %data_len, align 4
  %rnw = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %rnw to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %rnw, align 4
  %arrayidx17 = getelementptr [4 x i32], ptr %call7.i.i.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 8, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr %struct.hci_xfer, ptr %call7.i.i.i.i, i32 1
  %completion = getelementptr %struct.hci_xfer, ptr %call7.i.i.i.i, i32 1, i32 6
  %11 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %done, ptr %completion, align 8
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 5
  %cmd_tid75 = getelementptr %struct.hci_xfer, ptr %call7.i.i.i.i, i32 1, i32 5
  %io = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 9
  %response = getelementptr inbounds %struct.hci_xfer, ptr %call7.i.i.i.i, i32 0, i32 1
  %response202 = getelementptr %struct.hci_xfer, ptr %call7.i.i.i.i, i32 1, i32 1
  br label %for.cond

for.cond:                                         ; preds = %do.end223.for.cond_crit_edge, %if.end
  %next_addr.0 = phi i8 [ 0, %if.end ], [ %conv, %do.end223.for.cond_crit_edge ]
  %call19 = call i32 @i3c_master_get_free_addr(ptr noundef %hci, i8 noundef zeroext %next_addr.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp = icmp slt i32 %call19, 0
  br i1 %cmp, label %for.cond.for.end_crit_edge, label %if.end21

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end21:                                         ; preds = %for.cond
  %conv = trunc i32 %call19 to i8
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %12 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !15
  %asmresult.i.i.i = extractvalue { i32, i32 } %12, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %13 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rem, ptr %cmd_tid, align 8
  %shl = shl nuw nsw i32 %rem, 3
  %or67 = or i32 %shl, 1073741826
  %14 = ptrtoint ptr %call7.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or67, ptr %call7.i.i.i.i, align 8
  %call.i.i318 = call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %15 = call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !15
  %asmresult.i.i.i319 = extractvalue { i32, i32 } %15, 0
  %rem73 = and i32 %asmresult.i.i.i319, 15
  %16 = ptrtoint ptr %cmd_tid75 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %rem73, ptr %cmd_tid75, align 4
  %shl120 = shl nuw nsw i32 %rem73, 3
  %conv146 = shl i32 %call19, 8
  %and148 = and i32 %conv146, 32512
  %or122 = or i32 %shl120, %and148
  %or151 = or i32 %or122, -1073741822
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or151, ptr %arrayidx18, align 4
  %18 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io, align 8
  %queue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %queue_xfer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %queue_xfer, align 4
  %call155 = call i32 %21(ptr noundef %hci, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2) #5
  %call156 = call i32 @wait_for_completion_timeout(ptr noundef nonnull %done, i32 noundef 100) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call156)
  %tobool157.not = icmp eq i32 %call156, 0
  br i1 %tobool157.not, label %land.lhs.true, label %if.end21.do.end177_crit_edge

if.end21.do.end177_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end177

land.lhs.true:                                    ; preds = %if.end21
  %22 = ptrtoint ptr %io to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %io, align 8
  %dequeue_xfer = getelementptr inbounds %struct.hci_io_ops, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %dequeue_xfer to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dequeue_xfer, align 4
  %call159 = call zeroext i1 %25(ptr noundef %hci, ptr noundef nonnull %call7.i.i.i.i, i32 noundef 2) #5
  br i1 %call159, label %land.lhs.true.for.end_crit_edge, label %land.lhs.true.do.end177_crit_edge

land.lhs.true.do.end177_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end177

land.lhs.true.for.end_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end177:                                        ; preds = %land.lhs.true.do.end177_crit_edge, %if.end21.do.end177_crit_edge
  %26 = ptrtoint ptr %response to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %response, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %27)
  %cmp181.not = icmp ult i32 %27, 268435456
  br i1 %cmp181.not, label %do.end199, label %do.end177.for.end_crit_edge

do.end177.for.end_crit_edge:                      ; preds = %do.end177
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end199:                                        ; preds = %do.end177
  %28 = ptrtoint ptr %response202 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %response202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435456, i32 %29)
  %cmp205.not = icmp ult i32 %29, 268435456
  br i1 %cmp205.not, label %do.end223, label %do.end199.for.end_crit_edge

do.end199.for.end_crit_edge:                      ; preds = %do.end199
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end223:                                        ; preds = %do.end199
  %call273 = call i32 @i3c_master_add_i3c_dev_locked(ptr noundef %hci, i8 noundef zeroext %conv) #5
  %tobool274.not = icmp eq i32 %call273, 0
  br i1 %tobool274.not, label %do.end223.for.cond_crit_edge, label %do.end223.for.end_crit_edge

do.end223.for.end_crit_edge:                      ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

do.end223.for.cond_crit_edge:                     ; preds = %do.end223
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %do.end223.for.end_crit_edge, %do.end199.for.end_crit_edge, %do.end177.for.end_crit_edge, %land.lhs.true.for.end_crit_edge, %for.cond.for.end_crit_edge
  %ret.0 = phi i32 [ %call19, %for.cond.for.end_crit_edge ], [ %call273, %do.end223.for.end_crit_edge ], [ -62, %land.lhs.true.for.end_crit_edge ], [ 0, %do.end177.for.end_crit_edge ], [ -5, %do.end199.for.end_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %for.end ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %device_id) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hci_cmd_v2_prep_private_xfer(ptr noundef %hci, ptr nocapture noundef %xfer, i8 noundef zeroext %addr, i32 noundef %mode, i32 noundef %rate) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data1 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 3
  %0 = ptrtoint ptr %data1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data1, align 4
  %data_len2 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 4
  %2 = ptrtoint ptr %data_len2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data_len2, align 4
  %rnw3 = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 2
  %4 = ptrtoint ptr %rnw3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rnw3, align 4, !range !14
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %next_cmd_tid = getelementptr inbounds %struct.i3c_hci, ptr %hci, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_cmd_tid, i32 noundef 4) #5
  tail call void @llvm.prefetch.p0(ptr %next_cmd_tid, i32 1, i32 3, i32 1) #5
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_cmd_tid, ptr %next_cmd_tid, i32 1, ptr elementtype(i32) %next_cmd_tid) #5, !srcloc !15
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  %rem = and i32 %asmresult.i.i.i, 15
  %cmd_tid = getelementptr inbounds %struct.hci_xfer, ptr %xfer, i32 0, i32 5
  %7 = ptrtoint ptr %cmd_tid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %rem, ptr %cmd_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3)
  %cmp = icmp ult i32 %3, 6
  %or.cond = select i1 %tobool.not, i1 %cmp, i1 false
  %shl = shl nuw nsw i32 %rem, 3
  br i1 %or.cond, label %do.end135, label %do.end446

do.end135:                                        ; preds = %entry
  %conv61 = zext i8 %addr to i32
  %shl62 = shl nuw nsw i32 %conv61, 8
  %and63 = and i32 %shl62, 32512
  %or = or i32 %shl, %and63
  %shl87 = shl i32 %rate, 15
  %and88 = and i32 %shl87, 229376
  %or64 = or i32 %or, %and88
  %shl112 = shl i32 %mode, 18
  %and113 = and i32 %shl112, 8126464
  %or89 = or i32 %or64, %and113
  %shl137 = shl nuw nsw i32 %3, 24
  %and138 = and i32 %shl137, 117440512
  %or114 = or i32 %or89, %and138
  %or139 = or i32 %or114, 4
  %8 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or139, ptr %xfer, align 4
  %arrayidx157 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx157 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %arrayidx157, align 4
  %arrayidx159 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 2
  %10 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx159, align 4
  %arrayidx161 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 3
  %11 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx161, align 4
  %12 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %3, label %do.end135.sw.epilog_crit_edge [
    i32 5, label %do.body168
    i32 4, label %do.end135.do.body201_crit_edge
    i32 3, label %do.end135.do.body234_crit_edge
    i32 2, label %do.end135.do.body267_crit_edge
    i32 1, label %do.end135.do.body300_crit_edge
  ]

do.end135.do.body300_crit_edge:                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body300

do.end135.do.body267_crit_edge:                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body267

do.end135.do.body234_crit_edge:                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body234

do.end135.do.body201_crit_edge:                   ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body201

do.end135.sw.epilog_crit_edge:                    ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

do.body168:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx169 = getelementptr i8, ptr %1, i32 4
  %13 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx169, align 1
  %conv188 = zext i8 %14 to i32
  %15 = ptrtoint ptr %arrayidx161 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv188, ptr %arrayidx161, align 4
  br label %do.body201

do.body201:                                       ; preds = %do.body168, %do.end135.do.body201_crit_edge
  %arrayidx202 = getelementptr i8, ptr %1, i32 3
  %16 = ptrtoint ptr %arrayidx202 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx202, align 1
  %conv221 = zext i8 %17 to i32
  %shl222 = shl nuw i32 %conv221, 24
  %18 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl222, ptr %arrayidx159, align 4
  br label %do.body234

do.body234:                                       ; preds = %do.body201, %do.end135.do.body234_crit_edge
  %arrayidx235 = getelementptr i8, ptr %1, i32 2
  %19 = ptrtoint ptr %arrayidx235 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx235, align 1
  %conv254 = zext i8 %20 to i32
  %shl255 = shl nuw nsw i32 %conv254, 16
  %21 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx159, align 4
  %or259 = or i32 %shl255, %22
  store i32 %or259, ptr %arrayidx159, align 4
  br label %do.body267

do.body267:                                       ; preds = %do.body234, %do.end135.do.body267_crit_edge
  %arrayidx268 = getelementptr i8, ptr %1, i32 1
  %23 = ptrtoint ptr %arrayidx268 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx268, align 1
  %conv287 = zext i8 %24 to i32
  %shl288 = shl nuw nsw i32 %conv287, 8
  %25 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx159, align 4
  %or292 = or i32 %shl288, %26
  store i32 %or292, ptr %arrayidx159, align 4
  br label %do.body300

do.body300:                                       ; preds = %do.body267, %do.end135.do.body300_crit_edge
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 1
  %conv320 = zext i8 %28 to i32
  %29 = ptrtoint ptr %arrayidx159 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx159, align 4
  %or325 = or i32 %30, %conv320
  store i32 %or325, ptr %arrayidx159, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.body300, %do.end135.sw.epilog_crit_edge
  %31 = ptrtoint ptr %data1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %data1, align 4
  br label %if.end483

do.end446:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %tobool.not, i32 0, i32 128
  %or370 = or i32 %shl, %cond
  %conv397 = zext i8 %addr to i32
  %shl398 = shl nuw nsw i32 %conv397, 8
  %and399 = and i32 %shl398, 32512
  %or373 = or i32 %or370, %and399
  %shl423 = shl i32 %rate, 15
  %and424 = and i32 %shl423, 229376
  %or400 = or i32 %or373, %and424
  %shl448 = shl i32 %mode, 18
  %and449 = and i32 %shl448, 8126464
  %or425 = or i32 %or400, %and449
  %or450 = or i32 %or425, 4
  %32 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or450, ptr %xfer, align 4
  %and476 = and i32 %3, 4194303
  %arrayidx478 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx478 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %and476, ptr %arrayidx478, align 4
  %arrayidx480 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 2
  %34 = ptrtoint ptr %arrayidx480 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx480, align 4
  %arrayidx482 = getelementptr [4 x i32], ptr %xfer, i32 0, i32 3
  %35 = ptrtoint ptr %arrayidx482 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %arrayidx482, align 4
  br label %if.end483

if.end483:                                        ; preds = %do.end446, %sw.epilog
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i3c_master_get_free_addr(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

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

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
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

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = !{ptr @mipi_i3c_hci_cmd_v2, !1, !"mipi_i3c_hci_cmd_v2", i1 false, i1 false}
!1 = !{!"../drivers/i3c/master/mipi-i3c-hci/cmd_v2.c", i32 311, i32 26}
!2 = !{ptr @init_completion.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../include/linux/completion.h", i32 87, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{i32 1, !"wchar_size", i32 2}
!6 = !{i32 1, !"min_enum_size", i32 4}
!7 = !{i32 8, !"branch-target-enforcement", i32 0}
!8 = !{i32 8, !"sign-return-address", i32 0}
!9 = !{i32 8, !"sign-return-address-all", i32 0}
!10 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!14 = !{i8 0, i8 2}
!15 = !{i64 2148254217, i64 2148254249, i64 2148254278, i64 2148254312, i64 2148254343, i64 2148254366}
!16 = !{!"auto-init"}
