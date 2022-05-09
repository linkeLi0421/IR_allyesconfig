; ModuleID = '/llk/IR_all_yes/drivers/clocksource/timer-of.c_pt.bc'
source_filename = "../drivers/clocksource/timer-of.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.timer_of = type { i32, ptr, [120 x i8], %struct.clock_event_device, %struct.of_timer_base, %struct.of_timer_irq, %struct.of_timer_clk, ptr, [68 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.of_timer_base = type { ptr, ptr, i32 }
%struct.of_timer_irq = type { i32, i32, i32, ptr, i32, ptr }
%struct.of_timer_clk = type { ptr, ptr, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }

@timer_of_base_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 161, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013Failed to iomap (%s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timer_of_base_init\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/clocksource/timer-of.c\00", [33 x i8] zeroinitializer }, align 32
@timer_of_base_init._entry_ptr = internal global ptr @timer_of_base_init._entry, section ".printk_index", align 4
@timer_of_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to get clock for %pOF\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer_of_clk_init\00", [46 x i8] zeroinitializer }, align 32
@timer_of_clk_init._entry_ptr = internal global ptr @timer_of_clk_init._entry, section ".printk_index", align 4
@timer_of_clk_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed for enable clock for %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@timer_of_clk_init._entry_ptr.7 = internal global ptr @timer_of_clk_init._entry.5, section ".printk_index", align 4
@timer_of_clk_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to get clock rate for %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@timer_of_clk_init._entry_ptr.10 = internal global ptr @timer_of_clk_init._entry.8, section ".printk_index", align 4
@timer_of_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 61, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to get interrupt %s for %pOF\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"timer_of_irq_init\00", [46 x i8] zeroinitializer }, align 32
@timer_of_irq_init._entry_ptr = internal global ptr @timer_of_irq_init._entry, section ".printk_index", align 4
@timer_of_irq_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to map interrupt for %pOF\0A\00", [60 x i8] zeroinitializer }, align 32
@timer_of_irq_init._entry_ptr.15 = internal global ptr @timer_of_irq_init._entry.13, section ".printk_index", align 4
@timer_of_irq_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013Failed to request irq %d for %pOF\0A\00", [59 x i8] zeroinitializer }, align 32
@timer_of_irq_init._entry_ptr.18 = internal global ptr @timer_of_irq_init._entry.16, section ".printk_index", align 4
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 161, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 120, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 126, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 133, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 60, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 68, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private constant [34 x i8] c"../drivers/clocksource/timer-of.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 79, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @timer_of_base_init._entry, ptr @timer_of_base_init._entry_ptr, ptr @timer_of_clk_init._entry, ptr @timer_of_clk_init._entry.5, ptr @timer_of_clk_init._entry.8, ptr @timer_of_clk_init._entry_ptr, ptr @timer_of_clk_init._entry_ptr.10, ptr @timer_of_clk_init._entry_ptr.7, ptr @timer_of_irq_init._entry, ptr @timer_of_irq_init._entry.13, ptr @timer_of_irq_init._entry.16, ptr @timer_of_irq_init._entry_ptr, ptr @timer_of_irq_init._entry_ptr.15, ptr @timer_of_irq_init._entry_ptr.18, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_base_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_clk_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_clk_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_irq_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timer_of_irq_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @timer_of_init(ptr noundef %np, ptr noundef %to) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %to, align 128
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  %of_base = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %call = tail call fastcc i32 @timer_of_base_init(ptr noundef %np, ptr noundef %of_base) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %ret.0 = phi i32 [ -22, %entry.if.end4_crit_edge ], [ 0, %if.then.if.end4_crit_edge ]
  %flags.0 = phi i32 [ 0, %entry.if.end4_crit_edge ], [ 1, %if.then.if.end4_crit_edge ]
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to, align 128
  %and6 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end4.if.end14_crit_edge, label %if.then8

if.end4.if.end14_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end14

if.then8:                                         ; preds = %if.end4
  %of_clk = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6
  %call9 = tail call fastcc i32 @timer_of_clk_init(ptr noundef %np, ptr noundef %of_clk) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then8.out_fail_crit_edge

if.then8.out_fail_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_fail

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #5
  %or13 = or i32 %flags.0, 2
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end4.if.end14_crit_edge
  %ret.1 = phi i32 [ 0, %if.end12 ], [ %ret.0, %if.end4.if.end14_crit_edge ]
  %flags.1 = phi i32 [ %or13, %if.end12 ], [ %flags.0, %if.end4.if.end14_crit_edge ]
  %4 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %to, align 128
  %and16 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end14.if.end24_crit_edge, label %if.then18

if.end14.if.end24_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.then18:                                        ; preds = %if.end14
  %of_irq = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 5
  %call19 = tail call fastcc i32 @timer_of_irq_init(ptr noundef %np, ptr noundef %of_irq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then18.if.end24_crit_edge, label %if.then18.out_fail_crit_edge

if.then18.out_fail_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %out_fail

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end24

if.end24:                                         ; preds = %if.then18.if.end24_crit_edge, %if.end14.if.end24_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.end14.if.end24_crit_edge ], [ 0, %if.then18.if.end24_crit_edge ]
  %name = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 3, i32 21
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %tobool25.not = icmp eq ptr %7, null
  br i1 %tobool25.not, label %if.then26, label %if.end24.if.end29_crit_edge

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end29

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #5
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %8 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %full_name, align 4
  %10 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %name, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end24.if.end29_crit_edge
  %np30 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 1
  %11 = ptrtoint ptr %np30 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %np, ptr %np30, align 4
  br label %cleanup

out_fail:                                         ; preds = %if.then18.out_fail_crit_edge, %if.then8.out_fail_crit_edge
  %ret.3 = phi i32 [ %call9, %if.then8.out_fail_crit_edge ], [ %call19, %if.then18.out_fail_crit_edge ]
  %flags.2 = phi i32 [ %flags.0, %if.then8.out_fail_crit_edge ], [ %flags.1, %if.then18.out_fail_crit_edge ]
  %and31 = and i32 %flags.2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %out_fail.if.end35_crit_edge, label %if.then33

out_fail.if.end35_crit_edge:                      ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end35

if.then33:                                        ; preds = %out_fail
  call void @__sanitizer_cov_trace_pc() #5
  %of_irq34 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 5
  tail call fastcc void @timer_of_irq_exit(ptr noundef %of_irq34) #6
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %out_fail.if.end35_crit_edge
  %and36 = and i32 %flags.2, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end40_crit_edge, label %if.then38

if.end35.if.end40_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end40

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #5
  %of_clk39 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6
  tail call fastcc void @timer_of_clk_exit(ptr noundef %of_clk39) #6
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %if.end35.if.end40_crit_edge
  %and41 = and i32 %flags.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.cleanup_crit_edge, label %if.then43

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then43:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #5
  %of_base44 = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %12 = ptrtoint ptr %of_base44 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_base44, align 4
  tail call void @iounmap(ptr noundef %13) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then43, %if.end40.cleanup_crit_edge, %if.end29, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %if.end29 ], [ %ret.3, %if.then43 ], [ %ret.3, %if.end40.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_base_init(ptr noundef %np, ptr nocapture noundef %of_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.of_timer_base, ptr %of_base, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  %index2 = getelementptr inbounds %struct.of_timer_base, ptr %of_base, i32 0, i32 2
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index2, align 4
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @of_io_request_and_map(ptr noundef %np, i32 noundef %3, ptr noundef nonnull %1) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call3 = tail call ptr @of_iomap(ptr noundef %np, i32 noundef %3) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %call3, %cond.false ]
  %4 = ptrtoint ptr %of_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond, ptr %of_base, align 4
  %cmp.i = icmp ugt ptr %cond, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %cond.end.return_crit_edge

cond.end.return_crit_edge:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %6) #7
  %7 = ptrtoint ptr %of_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_base, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %return

return:                                           ; preds = %do.end, %cond.end.return_crit_edge
  %retval.0 = phi i32 [ %9, %do.end ], [ 0, %cond.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_clk_init(ptr noundef %np, ptr nocapture noundef %of_clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.of_timer_clk, ptr %of_clk, i32 0, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull %1) #3
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %index = getelementptr inbounds %struct.of_timer_clk, ptr %of_clk, i32 0, i32 2
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index, align 4
  %call2 = tail call ptr @of_clk_get(ptr noundef %np, i32 noundef %3) #3
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call, %cond.true ], [ %call2, %cond.false ]
  %4 = ptrtoint ptr %of_clk to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %cond, ptr %of_clk, align 4
  %cmp.i = icmp ugt ptr %cond, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end9

if.then:                                          ; preds = %cond.end
  %cmp.not = icmp eq ptr %cond, inttoptr (i32 -517 to ptr)
  br i1 %cmp.not, label %if.then.out_crit_edge, label %do.end

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %out

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %5 = ptrtoint ptr %cond to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef %np) #7
  br label %out

if.end9:                                          ; preds = %cond.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %cond) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end9.do.end16_crit_edge

if.end9.do.end16_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end16

if.end.i:                                         ; preds = %if.end9
  %call1.i = tail call i32 @clk_enable(ptr noundef %cond) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end19, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %cond) #3
  br label %do.end16

do.end16:                                         ; preds = %if.then3.i, %if.end9.do.end16_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.end9.do.end16_crit_edge ]
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %np) #7
  br label %out_clk_put

if.end19:                                         ; preds = %if.end.i
  %6 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_clk, align 4
  %call21 = tail call i32 @clk_get_rate(ptr noundef %7) #3
  %rate = getelementptr inbounds %struct.of_timer_clk, ptr %of_clk, i32 0, i32 3
  %8 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call21, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool23.not = icmp eq i32 %call21, 0
  br i1 %tobool23.not, label %if.then24, label %if.end30

if.then24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %np) #7
  %9 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_clk, align 4
  tail call void @clk_disable(ptr noundef %10) #3
  tail call void @clk_unprepare(ptr noundef %10) #3
  br label %out_clk_put

if.end30:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #5
  %sub = add i32 %call21, 99
  %div = udiv i32 %sub, 100
  %period = getelementptr inbounds %struct.of_timer_clk, ptr %of_clk, i32 0, i32 4
  %11 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %div, ptr %period, align 4
  br label %out

out:                                              ; preds = %out_clk_put, %if.end30, %do.end, %if.then.out_crit_edge
  %ret.0 = phi i32 [ %5, %do.end ], [ -517, %if.then.out_crit_edge ], [ %ret.1, %out_clk_put ], [ 0, %if.end30 ]
  ret i32 %ret.0

out_clk_put:                                      ; preds = %if.then24, %do.end16
  %ret.1 = phi i32 [ %retval.0.i.ph, %do.end16 ], [ -22, %if.then24 ]
  %12 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_clk, align 4
  tail call void @clk_put(ptr noundef %13) #3
  br label %out
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @timer_of_irq_init(ptr noundef %np, ptr noundef %of_irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %clkevt1 = getelementptr i8, ptr %of_irq, i32 -268
  %name = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 3
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @of_irq_get_byname(ptr noundef %np, ptr noundef nonnull %1) #3
  %2 = ptrtoint ptr %of_irq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %of_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end9

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %4, ptr noundef %np) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %index = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 1
  %5 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %index, align 4
  %call7 = tail call i32 @irq_of_parse_and_map(ptr noundef %np, i32 noundef %6) #3
  %7 = ptrtoint ptr %of_irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call7, ptr %of_irq, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then.if.end9_crit_edge
  %8 = phi i32 [ %call, %if.then.if.end9_crit_edge ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool11.not = icmp eq i32 %8, 0
  br i1 %tobool11.not, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #5
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %np) #7
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  %percpu = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 2
  %9 = ptrtoint ptr %percpu to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %percpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  %handler23 = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 5
  %11 = ptrtoint ptr %handler23 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %handler23, align 4
  br i1 %tobool19.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %full_name = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %13 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %full_name, align 4
  %call.i = tail call i32 @__request_percpu_irq(i32 noundef %8, ptr noundef %12, i32 noundef 0, ptr noundef %14, ptr noundef %clkevt1) #3
  br label %cond.end30

cond.false:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #5
  %flags = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 4
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool24.not = icmp eq i32 %16, 0
  %spec.select = select i1 %tobool24.not, i32 82432, i32 %16
  %full_name28 = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 2
  %17 = ptrtoint ptr %full_name28 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %full_name28, align 4
  %call.i74 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef %12, ptr noundef null, i32 noundef %spec.select, ptr noundef %18, ptr noundef %clkevt1) #3
  br label %cond.end30

cond.end30:                                       ; preds = %cond.false, %cond.true
  %cond31 = phi i32 [ %call.i, %cond.true ], [ %call.i74, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond31)
  %tobool32.not = icmp eq i32 %cond31, 0
  %19 = ptrtoint ptr %of_irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %of_irq, align 4
  br i1 %tobool32.not, label %if.end40, label %do.end36

do.end36:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #5
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %20, ptr noundef %np) #7
  br label %cleanup

if.end40:                                         ; preds = %cond.end30
  call void @__sanitizer_cov_trace_pc() #5
  %irq42 = getelementptr i8, ptr %of_irq, i32 -160
  %21 = ptrtoint ptr %irq42 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %irq42, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %do.end36, %do.end15, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ %cond31, %do.end36 ], [ 0, %if.end40 ], [ -22, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timer_of_irq_exit(ptr noundef %of_irq) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %clkevt1 = getelementptr i8, ptr %of_irq, i32 -268
  %percpu = getelementptr inbounds %struct.of_timer_irq, ptr %of_irq, i32 0, i32 2
  %0 = ptrtoint ptr %percpu to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %percpu, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %2 = ptrtoint ptr %of_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %of_irq, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @free_percpu_irq(i32 noundef %3, ptr noundef %clkevt1) #3
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %clkevt1) #3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @timer_of_clk_exit(ptr nocapture noundef %of_clk) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr inbounds %struct.of_timer_clk, ptr %of_clk, i32 0, i32 3
  %0 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %rate, align 4
  %1 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_clk, align 4
  tail call void @clk_disable(ptr noundef %2) #3
  tail call void @clk_unprepare(ptr noundef %2) #3
  %3 = ptrtoint ptr %of_clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_clk, align 4
  tail call void @clk_put(ptr noundef %4) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @timer_of_cleanup(ptr noundef %to) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %to, align 128
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %of_irq = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 5
  tail call fastcc void @timer_of_irq_exit(ptr noundef %of_irq) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %to, align 128
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %of_clk = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 6
  tail call fastcc void @timer_of_clk_exit(ptr noundef %of_clk) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %to, align 128
  %and7 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end5.if.end10_crit_edge, label %if.then9

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end10

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #5
  %of_base = getelementptr inbounds %struct.timer_of, ptr %to, i32 0, i32 4
  %6 = ptrtoint ptr %of_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_base, align 4
  tail call void @iounmap(ptr noundef %7) #3
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.end5.if.end10_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_percpu_irq(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/timer-of.c", i32 161, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @timer_of_base_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @timer_of_base_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clocksource/timer-of.c", i32 120, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @timer_of_clk_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @timer_of_clk_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clocksource/timer-of.c", i32 126, i32 3}
!13 = !{ptr @timer_of_clk_init._entry.5, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @timer_of_clk_init._entry_ptr.7, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clocksource/timer-of.c", i32 133, i32 3}
!17 = !{ptr @timer_of_clk_init._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @timer_of_clk_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clocksource/timer-of.c", i32 60, i32 4}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @timer_of_irq_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @timer_of_irq_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clocksource/timer-of.c", i32 68, i32 3}
!26 = !{ptr @timer_of_irq_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @timer_of_irq_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/timer-of.c", i32 79, i32 3}
!30 = !{ptr @timer_of_irq_init._entry.16, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @timer_of_irq_init._entry_ptr.18, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
