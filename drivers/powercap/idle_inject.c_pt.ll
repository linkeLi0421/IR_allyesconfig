; ModuleID = '/llk/IR_all_yes/drivers/powercap/idle_inject.c_pt.bc'
source_filename = "../drivers/powercap/idle_inject.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.idle_inject_thread = type { ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.smp_hotplug_thread = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr }
%struct.list_head = type { ptr, ptr }
%struct.idle_inject_device = type { %struct.hrtimer, i32, i32, i32, [0 x i32] }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@idle_inject_start.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 51, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"idle_inject\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"idle_inject_start\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/powercap/idle_inject.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Starting injecting idle cycles on CPUs '%*pbl'\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"ii_dev: Starting injecting idle cycles on CPUs '%*pbl'\0A\00", [40 x i8] zeroinitializer }, align 32
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@idle_inject_stop.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"idle_inject_stop\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Stopping idle injection on CPUs '%*pbl'\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"ii_dev: Stopping idle injection on CPUs '%*pbl'\0A\00", [47 x i8] zeroinitializer }, align 32
@idle_inject_thread = weak dso_local global %struct.idle_inject_thread zeroinitializer, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@idle_inject_device = weak dso_local global ptr null, section ".data..percpu", align 4
@idle_inject_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013ii_dev: cpu%d is already registered\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"idle_inject_register\00", [43 x i8] zeroinitializer }, align 32
@idle_inject_register._entry_ptr = internal global ptr @idle_inject_register._entry, section ".printk_index", align 4
@__initcall__kmod_idle_inject__196_370_idle_inject_initearly = internal global ptr @idle_inject_init, section ".initcallearly.init", align 4
@__pcpu_unique_idle_inject_thread = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_idle_inject_device = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@idle_inject_threads = internal global { %struct.smp_hotplug_thread, [48 x i8] } { %struct.smp_hotplug_thread { ptr @idle_inject_thread, %struct.list_head zeroinitializer, ptr @idle_inject_should_run, ptr @idle_inject_fn, ptr null, ptr @idle_inject_setup, ptr null, ptr null, ptr null, i8 0, ptr @.str.10 }, [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"idle_inject/%u\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 204, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 233, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 317, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [20 x i8] c"idle_inject_threads\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 358, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [34 x i8] c"../drivers/powercap/idle_inject.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 362, i32 17 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__initcall__kmod_idle_inject__196_370_idle_inject_initearly, ptr @idle_inject_register._entry, ptr @idle_inject_register._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @idle_inject_threads, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_inject_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @idle_inject_threads to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @idle_inject_set_duration(ptr noundef %ii_dev, i32 noundef %run_duration_us, i32 noundef %idle_duration_us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %run_duration_us)
  %tobool.not = icmp eq i32 %run_duration_us, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %idle_duration_us)
  %tobool1.not = icmp eq i32 %idle_duration_us, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.if.end_crit_edge, label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %run_duration_us4 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 2
  %0 = ptrtoint ptr %run_duration_us4 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %run_duration_us, ptr %run_duration_us4, align 4
  %idle_duration_us11 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 1
  %1 = ptrtoint ptr %idle_duration_us11 to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 %idle_duration_us, ptr %idle_duration_us11, align 8
  br label %if.end

if.end:                                           ; preds = %do.body3, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @idle_inject_get_duration(ptr noundef %ii_dev, ptr nocapture noundef writeonly %run_duration_us, ptr nocapture noundef writeonly %idle_duration_us) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %run_duration_us1 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 2
  %0 = ptrtoint ptr %run_duration_us1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %run_duration_us1, align 4
  %2 = ptrtoint ptr %run_duration_us to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %run_duration_us, align 4
  %idle_duration_us5 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 1
  %3 = ptrtoint ptr %idle_duration_us5 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %idle_duration_us5, align 8
  %5 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %idle_duration_us, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @idle_inject_set_latency(ptr noundef %ii_dev, i32 noundef %latency_us) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %latency_us3 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 3
  %0 = ptrtoint ptr %latency_us3 to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile i32 %latency_us, ptr %latency_us3, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @idle_inject_start(ptr noundef %ii_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %idle_duration_us1 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 1
  %0 = ptrtoint ptr %idle_duration_us1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %idle_duration_us1, align 8
  %run_duration_us6 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 2
  %2 = ptrtoint ptr %run_duration_us6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %run_duration_us6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %do.body8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body8:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idle_inject_start.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idle_inject_start, %if.then13)) #10
          to label %do.end17 [label %if.then13], !srcloc !39

if.then13:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  %cpumask = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idle_inject_start.__UNIQUE_ID_ddebug194, ptr noundef nonnull @.str.4, i32 noundef %4, ptr noundef %cpumask) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then13, %do.body8
  %cpumask.i = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 4
  %call6.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %cpumask.i, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %5)
  %cmp7.i = icmp ult i32 %call6.i, %5
  br i1 %cmp7.i, label %do.end17.do.body.i_crit_edge, label %do.end17.idle_inject_wakeup.exit_crit_edge

do.end17.idle_inject_wakeup.exit_crit_edge:       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %idle_inject_wakeup.exit

do.end17.do.body.i_crit_edge:                     ; preds = %do.end17
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.end17.do.body.i_crit_edge
  %call8.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %do.end17.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %7, ptrtoint (ptr @idle_inject_thread to i32)
  %8 = inttoptr i32 %add.i to ptr
  %should_run.i = getelementptr inbounds %struct.idle_inject_thread, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %should_run.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %should_run.i, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %8, align 4
  %call2.i = tail call i32 @wake_up_process(ptr noundef %11) #10
  %call.i = tail call i32 @cpumask_next_and(i32 noundef %call8.i, ptr noundef %cpumask.i, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %12
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.idle_inject_wakeup.exit_crit_edge

do.body.i.idle_inject_wakeup.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %idle_inject_wakeup.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

idle_inject_wakeup.exit:                          ; preds = %do.body.i.idle_inject_wakeup.exit_crit_edge, %do.end17.idle_inject_wakeup.exit_crit_edge
  %add = add i32 %3, %1
  %mul = mul i32 %add, 1000
  %conv = zext i32 %mul to i64
  tail call void @hrtimer_start_range_ns(ptr noundef %ii_dev, i64 noundef %conv, i64 noundef 0, i32 noundef 1) #10
  br label %cleanup

cleanup:                                          ; preds = %idle_inject_wakeup.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %idle_inject_wakeup.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @idle_inject_stop(ptr noundef %ii_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @idle_inject_stop.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@idle_inject_stop, %if.then)) #10
          to label %do.end [label %if.then], !srcloc !39

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %cpumask = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @idle_inject_stop.__UNIQUE_ID_ddebug195, ptr noundef nonnull @.str.7, i32 noundef %0, ptr noundef %cpumask) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @hrtimer_cancel(ptr noundef %ii_dev) #10
  tail call void @cpu_hotplug_disable() #10
  %cpumask5 = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 4
  %call720 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask5) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call720, i32 %1)
  %cmp21 = icmp ult i32 %call720, %1
  br i1 %cmp21, label %do.end.do.body8_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.end.do.body8_crit_edge:                        ; preds = %do.end
  br label %do.body8

do.body8:                                         ; preds = %do.body8.do.body8_crit_edge, %do.end.do.body8_crit_edge
  %call722 = phi i32 [ %call7, %do.body8.do.body8_crit_edge ], [ %call720, %do.end.do.body8_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call722
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add = add i32 %3, ptrtoint (ptr @idle_inject_thread to i32)
  %4 = inttoptr i32 %add to ptr
  %should_run = getelementptr inbounds %struct.idle_inject_thread, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %should_run to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %should_run, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %call13 = tail call i32 @wait_task_inactive(ptr noundef %7, i32 noundef 0) #10
  %call7 = tail call i32 @cpumask_next(i32 noundef %call722, ptr noundef %cpumask5) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call7, %8
  br i1 %cmp, label %do.body8.do.body8_crit_edge, label %do.body8.for.end_crit_edge

do.body8.for.end_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body8.do.body8_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body8

for.end:                                          ; preds = %do.body8.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call void @cpu_hotplug_enable() #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_disable() local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_task_inactive(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @cpu_hotplug_enable() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @idle_inject_register(ptr nocapture noundef readonly %cpumask) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i = add i32 %0, 31
  %1 = lshr i32 %sub.i, 3
  %mul.i = and i32 %1, 536870908
  %add = add nuw nsw i32 %mul.i, 64
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #14
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %cpumask2 = getelementptr inbounds %struct.idle_inject_device, ptr %call9.i.i, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %2, 31
  %3 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %3, 536870908
  %4 = call ptr @memcpy(ptr %cpumask2, ptr %cpumask, i32 %mul.i.i)
  tail call void @hrtimer_init(ptr noundef nonnull %call9.i.i, i32 noundef 1, i32 noundef 1) #10
  %function = getelementptr inbounds %struct.hrtimer, ptr %call9.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @idle_inject_timer_fn, ptr %function, align 32
  %latency_us = getelementptr inbounds %struct.idle_inject_device, ptr %call9.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %latency_us to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %latency_us, align 8
  %call665 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask2) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call665, i32 %7)
  %cmp66 = icmp ult i32 %call665, %7
  br i1 %cmp66, label %if.end.do.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.do.body_crit_edge:                         ; preds = %if.end
  br label %do.body

do.body:                                          ; preds = %if.end16.do.body_crit_edge, %if.end.do.body_crit_edge
  %call667 = phi i32 [ %call6, %if.end16.do.body_crit_edge ], [ %call665, %if.end.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call667
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %9, ptrtoint (ptr @idle_inject_device to i32)
  %10 = inttoptr i32 %add8 to ptr
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool9.not = icmp eq ptr %12, null
  br i1 %tobool9.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %do.body
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %call667) #15
  %call2968 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask2) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2968, i32 %13)
  %cmp3069 = icmp uge i32 %call2968, %13
  call void @__sanitizer_cov_trace_cmp4(i32 %call667, i32 %call2968)
  %cmp3270 = icmp eq i32 %call667, %call2968
  %or.cond71 = select i1 %cmp3069, i1 true, i1 %cmp3270
  br i1 %or.cond71, label %do.end13.for.end44_crit_edge, label %do.end13.do.body35_crit_edge

do.end13.do.body35_crit_edge:                     ; preds = %do.end13
  br label %do.body35

do.end13.for.end44_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

if.end16:                                         ; preds = %do.body
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i, ptr %10, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef %call667, ptr noundef %cpumask2) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call6, %15
  br i1 %cmp, label %if.end16.do.body_crit_edge, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16.do.body_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body35:                                        ; preds = %do.body35.do.body35_crit_edge, %do.end13.do.body35_crit_edge
  %call2972 = phi i32 [ %call29, %do.body35.do.body35_crit_edge ], [ %call2968, %do.end13.do.body35_crit_edge ]
  %arrayidx42 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call2972
  %16 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx42, align 4
  %add43 = add i32 %17, ptrtoint (ptr @idle_inject_device to i32)
  %18 = inttoptr i32 %add43 to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 4
  %call29 = tail call i32 @cpumask_next(i32 noundef %call2972, ptr noundef %cpumask2) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call29, i32 %20)
  %cmp30 = icmp uge i32 %call29, %20
  call void @__sanitizer_cov_trace_cmp4(i32 %call667, i32 %call29)
  %cmp32 = icmp eq i32 %call667, %call29
  %or.cond = select i1 %cmp30, i1 true, i1 %cmp32
  br i1 %or.cond, label %do.body35.for.end44_crit_edge, label %do.body35.do.body35_crit_edge

do.body35.do.body35_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body35

do.body35.for.end44_crit_edge:                    ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end44

for.end44:                                        ; preds = %do.body35.for.end44_crit_edge, %do.end13.for.end44_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end44, %if.end16.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %for.end44 ], [ null, %entry.cleanup_crit_edge ], [ %call9.i.i, %if.end.cleanup_crit_edge ], [ %call9.i.i, %if.end16.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_inject_timer_fn(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %run_duration_us = getelementptr inbounds %struct.idle_inject_device, ptr %timer, i32 0, i32 2
  %0 = ptrtoint ptr %run_duration_us to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %run_duration_us, align 4
  %idle_duration_us = getelementptr inbounds %struct.idle_inject_device, ptr %timer, i32 0, i32 1
  %2 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %idle_duration_us, align 8
  %cpumask.i = getelementptr inbounds %struct.idle_inject_device, ptr %timer, i32 0, i32 4
  %call6.i = tail call i32 @cpumask_next_and(i32 noundef -1, ptr noundef %cpumask.i, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6.i, i32 %4)
  %cmp7.i = icmp ult i32 %call6.i, %4
  br i1 %cmp7.i, label %entry.do.body.i_crit_edge, label %entry.idle_inject_wakeup.exit_crit_edge

entry.idle_inject_wakeup.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %idle_inject_wakeup.exit

entry.do.body.i_crit_edge:                        ; preds = %entry
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry.do.body.i_crit_edge
  %call8.i = phi i32 [ %call.i, %do.body.i.do.body.i_crit_edge ], [ %call6.i, %entry.do.body.i_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %6, ptrtoint (ptr @idle_inject_thread to i32)
  %7 = inttoptr i32 %add.i to ptr
  %should_run.i = getelementptr inbounds %struct.idle_inject_thread, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %should_run.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %should_run.i, align 4
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %7, align 4
  %call2.i = tail call i32 @wake_up_process(ptr noundef %10) #10
  %call.i = tail call i32 @cpumask_next_and(i32 noundef %call8.i, ptr noundef %cpumask.i, ptr noundef nonnull @__cpu_online_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %11
  br i1 %cmp.i, label %do.body.i.do.body.i_crit_edge, label %do.body.i.idle_inject_wakeup.exit_crit_edge

do.body.i.idle_inject_wakeup.exit_crit_edge:      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %idle_inject_wakeup.exit

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

idle_inject_wakeup.exit:                          ; preds = %do.body.i.idle_inject_wakeup.exit_crit_edge, %entry.idle_inject_wakeup.exit_crit_edge
  %add = add i32 %3, %1
  %mul = mul i32 %add, 1000
  %conv = zext i32 %mul to i64
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 3
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %get_time.i, align 4
  %call.i11 = tail call i64 %15() #10
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %timer, i64 noundef %call.i11, i64 noundef %conv) #10
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @idle_inject_unregister(ptr noundef %ii_dev) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @idle_inject_stop(ptr noundef %ii_dev)
  %cpumask = getelementptr inbounds %struct.idle_inject_device, ptr %ii_dev, i32 0, i32 4
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef %cpumask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %0)
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call8 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call6, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call8
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @idle_inject_device to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %3, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call8, ptr noundef %cpumask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @kfree(ptr noundef %ii_dev) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @idle_inject_init() #6 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @smpboot_register_percpu_thread(ptr noundef nonnull @idle_inject_threads) #10
  ret i32 %call
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next_and(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @smpboot_register_percpu_thread(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @idle_inject_should_run(i32 noundef %cpu) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @idle_inject_thread to i32)
  %2 = inttoptr i32 %add to ptr
  %should_run = getelementptr inbounds %struct.idle_inject_thread, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %should_run to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %should_run, align 4
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idle_inject_fn(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, ptrtoint (ptr @idle_inject_device to i32)
  %2 = inttoptr i32 %add to ptr
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %add10 = add i32 %1, ptrtoint (ptr @idle_inject_thread to i32)
  %5 = inttoptr i32 %add10 to ptr
  %should_run = getelementptr inbounds %struct.idle_inject_thread, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %should_run to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %should_run, align 4
  %idle_duration_us = getelementptr inbounds %struct.idle_inject_device, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %idle_duration_us to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %idle_duration_us, align 8
  %mul = mul i32 %8, 1000
  %conv = zext i32 %mul to i64
  %latency_us = getelementptr inbounds %struct.idle_inject_device, ptr %4, i32 0, i32 3
  %9 = ptrtoint ptr %latency_us to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %latency_us, align 8
  %mul19 = mul i32 %10, 1000
  %conv20 = zext i32 %mul19 to i64
  tail call void @play_idle_precise(i64 noundef %conv, i64 noundef %conv20) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @idle_inject_setup(i32 noundef %cpu) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !29) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  tail call void @sched_set_fifo(ptr noundef %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @play_idle_precise(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !10, !11, !12, !14, !15, !16, !17, !19, !21, !22, !24, !25, !27}
!llvm.named.register.sp = !{!29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/powercap/idle_inject.c", i32 204, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @idle_inject_start.__UNIQUE_ID_ddebug194, !1, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/powercap/idle_inject.c", i32 233, i32 2}
!9 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @idle_inject_stop.__UNIQUE_ID_ddebug195, !8, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!11 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/powercap/idle_inject.c", i32 317, i32 4}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @idle_inject_register._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @idle_inject_register._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__initcall__kmod_idle_inject__196_370_idle_inject_initearly, !18, !"__initcall__kmod_idle_inject__196_370_idle_inject_initearly", i1 false, i1 false}
!18 = !{!"../drivers/powercap/idle_inject.c", i32 370, i32 1}
!19 = !{ptr @__pcpu_unique_idle_inject_thread, !20, !"__pcpu_unique_idle_inject_thread", i1 false, i1 false}
!20 = !{!"../drivers/powercap/idle_inject.c", i32 76, i32 8}
!21 = !{ptr @idle_inject_thread, !20, !"idle_inject_thread", i1 false, i1 false}
!22 = !{ptr @__pcpu_unique_idle_inject_device, !23, !"__pcpu_unique_idle_inject_device", i1 false, i1 false}
!23 = !{!"../drivers/powercap/idle_inject.c", i32 77, i32 8}
!24 = !{ptr @idle_inject_device, !23, !"idle_inject_device", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/powercap/idle_inject.c", i32 362, i32 17}
!27 = !{ptr @idle_inject_threads, !28, !"idle_inject_threads", i1 false, i1 false}
!28 = !{!"../drivers/powercap/idle_inject.c", i32 358, i32 34}
!29 = !{!"sp"}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!39 = !{i64 2148298820, i64 2148298825, i64 2148298838, i64 2148298882, i64 2148298916, i64 2148298937}
