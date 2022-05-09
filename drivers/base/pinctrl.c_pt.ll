; ModuleID = '/llk/IR_all_yes/drivers/base/pinctrl.c_pt.bc'
source_filename = "../drivers/base/pinctrl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.dev_pin_info = type { ptr, ptr, ptr, ptr, ptr }

@pinctrl_bind_pins.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 8, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pinctrl\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pinctrl_bind_pins\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/base/pinctrl.c\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"no pinctrl handle\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@pinctrl_bind_pins.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"no default pinctrl state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"init\00", [27 x i8] zeroinitializer }, align 32
@pinctrl_bind_pins.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no init pinctrl state\0A\00", [41 x i8] zeroinitializer }, align 32
@pinctrl_bind_pins.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to activate initial pinctrl state\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sleep\00", [26 x i8] zeroinitializer }, align 32
@pinctrl_bind_pins.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 18, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"no sleep pinctrl state\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"idle\00", [27 x i8] zeroinitializer }, align 32
@pinctrl_bind_pins.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.12, i8 0, i8 20, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"no idle pinctrl state\0A\00", [41 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 34, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 40, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 42, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 48, i32 6 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 51, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 60, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 71, i32 6 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 74, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 77, i32 6 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private constant [26 x i8] c"../drivers/base/pinctrl.c\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 80, i32 3 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pinctrl_bind_pins(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node_reused = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 39
  %0 = ptrtoint ptr %of_node_reused to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load = load i8, ptr %of_node_reused, align 4
  %1 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %bf.cast.not = icmp eq i8 %1, 0
  br i1 %bf.cast.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #2
  %pins = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 15
  %2 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %pins, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @devm_pinctrl_get(ptr noundef %dev) #2
  %3 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pins, align 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %4, align 4
  %6 = load ptr, ptr %pins, align 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %cmp.i = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end20

do.body:                                          ; preds = %if.end3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %do.end)) #2
          to label %if.then15 [label %do.end], !srcloc !38

if.then15:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.3) #2
  br label %do.end

do.end:                                           ; preds = %if.then15, %do.body
  %9 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pins, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup_alloc

if.end20:                                         ; preds = %if.end3
  %call23 = tail call ptr @pinctrl_lookup_state(ptr noundef %8, ptr noundef nonnull @.str.4) #2
  %14 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pins, align 8
  %default_state = getelementptr inbounds %struct.dev_pin_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %default_state to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call23, ptr %default_state, align 4
  %17 = load ptr, ptr %pins, align 8
  %default_state26 = getelementptr inbounds %struct.dev_pin_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %default_state26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %default_state26, align 4
  %cmp.i223 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i223, label %do.body29, label %if.end47

do.body29:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %cleanup_get)) #2
          to label %if.then43 [label %cleanup_get], !srcloc !38

if.then43:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug224, ptr noundef %dev, ptr noundef nonnull @.str.5) #2
  br label %cleanup_get

if.end47:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %17, align 4
  %call50 = tail call ptr @pinctrl_lookup_state(ptr noundef %21, ptr noundef nonnull @.str.6) #2
  %22 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pins, align 8
  %init_state = getelementptr inbounds %struct.dev_pin_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %init_state to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call50, ptr %init_state, align 4
  %25 = load ptr, ptr %pins, align 8
  %init_state53 = getelementptr inbounds %struct.dev_pin_info, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %init_state53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %init_state53, align 4
  %cmp.i224 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i224, label %do.body56, label %if.end47.if.end84_crit_edge

if.end47.if.end84_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end84

do.body56:                                        ; preds = %if.end47
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %do.end73)) #2
          to label %if.then70 [label %do.end73], !srcloc !38

if.then70:                                        ; preds = %do.body56
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug225, ptr noundef %dev, ptr noundef nonnull @.str.7) #2
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body56
  %28 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pins, align 8
  %default_state77 = getelementptr inbounds %struct.dev_pin_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %default_state77 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %default_state77, align 4
  br label %if.end84

if.end84:                                         ; preds = %do.end73, %if.end47.if.end84_crit_edge
  %.sink233 = phi ptr [ %31, %do.end73 ], [ %27, %if.end47.if.end84_crit_edge ]
  %.sink.in = phi ptr [ %29, %do.end73 ], [ %25, %if.end47.if.end84_crit_edge ]
  %32 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %.sink = load ptr, ptr %.sink.in, align 4
  %call83 = tail call i32 @pinctrl_select_state(ptr noundef %.sink, ptr noundef %.sink233) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool85.not = icmp eq i32 %call83, 0
  br i1 %tobool85.not, label %if.end105, label %do.body87

do.body87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %cleanup_get)) #2
          to label %if.then101 [label %cleanup_get], !srcloc !38

if.then101:                                       ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.8) #2
  br label %cleanup_get

if.end105:                                        ; preds = %if.end84
  %33 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pins, align 8
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %call108 = tail call ptr @pinctrl_lookup_state(ptr noundef %36, ptr noundef nonnull @.str.9) #2
  %37 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pins, align 8
  %sleep_state = getelementptr inbounds %struct.dev_pin_info, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %sleep_state to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call108, ptr %sleep_state, align 4
  %40 = load ptr, ptr %pins, align 8
  %sleep_state111 = getelementptr inbounds %struct.dev_pin_info, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %sleep_state111 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %sleep_state111, align 4
  %cmp.i225 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i225, label %do.body114, label %if.end105.if.end132_crit_edge

if.end105.if.end132_crit_edge:                    ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end132

do.body114:                                       ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %if.end132)) #2
          to label %if.then128 [label %if.end132], !srcloc !38

if.then128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.10) #2
  br label %if.end132

if.end132:                                        ; preds = %if.then128, %do.body114, %if.end105.if.end132_crit_edge
  %43 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pins, align 8
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %call135 = tail call ptr @pinctrl_lookup_state(ptr noundef %46, ptr noundef nonnull @.str.11) #2
  %47 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pins, align 8
  %idle_state = getelementptr inbounds %struct.dev_pin_info, ptr %48, i32 0, i32 4
  %49 = ptrtoint ptr %idle_state to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call135, ptr %idle_state, align 4
  %50 = load ptr, ptr %pins, align 8
  %idle_state138 = getelementptr inbounds %struct.dev_pin_info, ptr %50, i32 0, i32 4
  %51 = ptrtoint ptr %idle_state138 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %idle_state138, align 4
  %cmp.i226 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i226, label %do.body141, label %if.end132.cleanup_crit_edge

if.end132.cleanup_crit_edge:                      ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

do.body141:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pinctrl_bind_pins, %cleanup)) #2
          to label %if.then155 [label %cleanup], !srcloc !38

if.then155:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pinctrl_bind_pins.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.12) #2
  br label %cleanup

cleanup_get:                                      ; preds = %if.then101, %do.body87, %if.then43, %do.body29
  %ret.1 = phi i32 [ %call83, %if.then101 ], [ 0, %if.then43 ], [ 0, %do.body29 ], [ %call83, %do.body87 ]
  %53 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pins, align 8
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  tail call void @devm_pinctrl_put(ptr noundef %56) #2
  br label %cleanup_alloc

cleanup_alloc:                                    ; preds = %cleanup_get, %do.end
  %ret.2 = phi i32 [ %13, %do.end ], [ %ret.1, %cleanup_get ]
  %57 = ptrtoint ptr %pins to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %pins, align 8
  tail call void @devm_kfree(ptr noundef %dev, ptr noundef %58) #2
  %59 = ptrtoint ptr %pins to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %pins, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %ret.2)
  %switch.selectcmp = icmp eq i32 %ret.2, -22
  %switch.select = select i1 %switch.selectcmp, i32 -22, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %ret.2)
  %switch.selectcmp206 = icmp eq i32 %ret.2, -517
  %switch.select207 = select i1 %switch.selectcmp206, i32 -517, i32 %switch.select
  br label %cleanup

cleanup:                                          ; preds = %cleanup_alloc, %if.then155, %do.body141, %if.end132.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.then155 ], [ 0, %if.end132.cleanup_crit_edge ], [ %switch.select207, %cleanup_alloc ], [ 0, %do.body141 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_pinctrl_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pinctrl_lookup_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_select_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_pinctrl_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !13, !15, !16, !18, !19, !21, !23, !24, !26, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/base/pinctrl.c", i32 34, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug223, !1, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/base/pinctrl.c", i32 40, i32 6}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/base/pinctrl.c", i32 42, i32 3}
!10 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug224, !9, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/base/pinctrl.c", i32 48, i32 6}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/base/pinctrl.c", i32 51, i32 3}
!15 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug225, !14, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/base/pinctrl.c", i32 60, i32 3}
!18 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug226, !17, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!19 = !{ptr @.str.9, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/base/pinctrl.c", i32 71, i32 6}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/base/pinctrl.c", i32 74, i32 3}
!23 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug227, !22, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/base/pinctrl.c", i32 77, i32 6}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/base/pinctrl.c", i32 80, i32 3}
!28 = !{ptr @pinctrl_bind_pins.__UNIQUE_ID_ddebug228, !27, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 2148278242, i64 2148278247, i64 2148278260, i64 2148278304, i64 2148278338, i64 2148278359}
