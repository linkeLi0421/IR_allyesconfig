; ModuleID = '/llk/IR_all_yes/drivers/clocksource/jcore-pit.c_pt.bc'
source_filename = "../drivers/clocksource/jcore-pit.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.jcore_pit = type { %struct.clock_event_device, ptr, i32, i32, [116 x i8] }
%struct.clock_event_device = type { ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, %struct.list_head, ptr, [124 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__of_table_jcore_pit = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"jcore,pit\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @jcore_pit_init }, section "__timer_of_table", align 4
@jcore_pit_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jcore_pit_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013Error: Cannot map base address for J-Core PIT\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"jcore_pit_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/clocksource/jcore-pit.c\00", [32 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr = internal global ptr @jcore_pit_init._entry, section ".printk_index", align 4
@jcore_pit_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Error: J-Core PIT has no IRQ\0A\00", [32 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.5 = internal global ptr @jcore_pit_init._entry.3, section ".printk_index", align 4
@jcore_pit_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016Initializing J-Core PIT at %p IRQ %d\0A\00", [56 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.8 = internal global ptr @jcore_pit_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jcore_pit_cs\00", [19 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 162, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Error registering clocksource device: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.12 = internal global ptr @jcore_pit_init._entry.10, section ".printk_index", align 4
@jcore_pit_percpu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@jcore_pit_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013Failed to allocate memory for clock event device\0A\00", [44 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.15 = internal global ptr @jcore_pit_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"jcore_pit\00", [22 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013pit irq request failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.19 = internal global ptr @jcore_pit_init._entry.17, section ".printk_index", align 4
@__cpu_present_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@jcore_pit_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Unable to map PIT for cpu %u\0A\00", [32 x i8] zeroinitializer }, align 32
@jcore_pit_init._entry_ptr.22 = internal global ptr @jcore_pit_init._entry.20, section ".printk_index", align 4
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"clockevents/jcore:starting\00", [37 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@jcore_pit_local_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 113, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016Local J-Core PIT init on cpu %u\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"jcore_pit_local_init\00", [43 x i8] zeroinitializer }, align 32
@jcore_pit_local_init._entry_ptr = internal global ptr @jcore_pit_local_init._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"jcore_pit_base\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 42, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 145, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 151, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 155, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 158, i32 46 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 162, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"jcore_pit_percpu\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 43, i32 35 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 170, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 176, i32 6 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 178, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 223, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 243, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [35 x i8] c"../drivers/clocksource/jcore-pit.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 113, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__of_table_jcore_pit, ptr @jcore_pit_init._entry, ptr @jcore_pit_init._entry.10, ptr @jcore_pit_init._entry.13, ptr @jcore_pit_init._entry.17, ptr @jcore_pit_init._entry.20, ptr @jcore_pit_init._entry.3, ptr @jcore_pit_init._entry.6, ptr @jcore_pit_init._entry_ptr, ptr @jcore_pit_init._entry_ptr.12, ptr @jcore_pit_init._entry_ptr.15, ptr @jcore_pit_init._entry_ptr.19, ptr @jcore_pit_init._entry_ptr.22, ptr @jcore_pit_init._entry_ptr.5, ptr @jcore_pit_init._entry_ptr.8, ptr @jcore_pit_local_init._entry, ptr @jcore_pit_local_init._entry_ptr, ptr @jcore_pit_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @jcore_pit_percpu, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_percpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jcore_pit_local_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  store ptr %call, ptr @jcore_pit_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup74

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %do.end7, label %do.end13

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  br label %cleanup74

do.end13:                                         ; preds = %if.end
  %0 = load ptr, ptr @jcore_pit_base, align 4
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %0, i32 noundef %call2) #11
  %1 = load ptr, ptr @jcore_pit_base, align 4
  %call16 = tail call i32 @clocksource_mmio_init(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef 1000000000, i32 noundef 400, i32 noundef 32, ptr noundef nonnull @jcore_clocksource_read) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end24, label %do.end21

do.end21:                                         ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %call16) #11
  br label %cleanup74

if.end24:                                         ; preds = %do.end13
  tail call void @sched_clock_register(ptr noundef nonnull @jcore_sched_clock_read, i32 noundef 32, i32 noundef 1000000000) #8
  %call25 = tail call noalias ptr @__alloc_percpu(i32 noundef 384, i32 noundef 128) #12
  store ptr %call25, ptr @jcore_pit_percpu, align 4
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %cleanup74

if.end33:                                         ; preds = %if.end24
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call2, ptr noundef nonnull @jcore_timer_interrupt, ptr noundef null, i32 noundef 83456, ptr noundef nonnull @.str.16, ptr noundef nonnull %call25) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool35.not = icmp eq i32 %call.i, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  %call41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %call.i) #11
  %2 = load ptr, ptr @jcore_pit_percpu, align 4
  tail call void @free_percpu(ptr noundef %2) #8
  br label %cleanup74

if.end42:                                         ; preds = %if.end33
  %call43 = tail call ptr @irq_get_irq_data(i32 noundef %call2) #8
  %hwirq44 = getelementptr inbounds %struct.irq_data, ptr %call43, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq44 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq44, align 4
  %shl = shl i32 %4, 12
  %5 = shl i32 %4, 18
  %shl45 = and i32 %5, 15728640
  %or = or i32 %shl, %shl45
  %or46 = or i32 %or, 67108864
  %call47109 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call47109, i32 %6)
  %cmp110 = icmp ult i32 %call47109, %6
  br i1 %cmp110, label %if.end42.for.body_crit_edge, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end42.for.body_crit_edge:                      ; preds = %if.end42
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end42.for.body_crit_edge
  %call47111 = phi i32 [ %call47, %cleanup.for.body_crit_edge ], [ %call47109, %if.end42.for.body_crit_edge ]
  %7 = load ptr, ptr @jcore_pit_percpu, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call47111
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %8
  %11 = inttoptr i32 %add to ptr
  %call53 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef %call47111) #8
  %base = getelementptr inbounds %struct.jcore_pit, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call53, ptr %base, align 128
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %do.end59, label %if.end62

do.end59:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %call47111) #11
  br label %cleanup

if.end62:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %name = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 21
  %13 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @.str.16, ptr %name, align 4
  %features = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 9
  %14 = ptrtoint ptr %features to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 67, ptr %features, align 4
  %rem.i = and i32 %call47111, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call47111, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %cpumask = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 25
  %15 = ptrtoint ptr %cpumask to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr.i, ptr %cpumask, align 4
  %rating = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 22
  %16 = ptrtoint ptr %rating to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 400, ptr %rating, align 8
  %irq = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 23
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call2, ptr %irq, align 4
  %set_state_shutdown = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 14
  %18 = ptrtoint ptr %set_state_shutdown to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @jcore_pit_set_state_shutdown, ptr %set_state_shutdown, align 8
  %set_state_periodic = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 11
  %19 = ptrtoint ptr %set_state_periodic to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @jcore_pit_set_state_periodic, ptr %set_state_periodic, align 4
  %set_state_oneshot = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 12
  %20 = ptrtoint ptr %set_state_oneshot to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @jcore_pit_set_state_oneshot, ptr %set_state_oneshot, align 64
  %set_next_event = getelementptr inbounds %struct.clock_event_device, ptr %11, i32 0, i32 1
  %21 = ptrtoint ptr %set_next_event to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @jcore_pit_set_next_event, ptr %set_next_event, align 4
  %enable_val72 = getelementptr inbounds %struct.jcore_pit, ptr %11, i32 0, i32 3
  %22 = ptrtoint ptr %enable_val72 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or46, ptr %enable_val72, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end59
  %call47 = tail call i32 @cpumask_next(i32 noundef %call47111, ptr noundef nonnull @__cpu_present_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call47, %23
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end42.for.end_crit_edge
  %call.i108 = tail call i32 @__cpuhp_setup_state(i32 noundef 124, ptr noundef nonnull @.str.23, i1 noundef zeroext true, ptr noundef nonnull @jcore_pit_local_init, ptr noundef null, i1 noundef zeroext false) #8
  br label %cleanup74

cleanup74:                                        ; preds = %for.end, %do.end39, %do.end30, %do.end21, %do.end7, %do.end
  %retval.0 = phi i32 [ %call16, %do.end21 ], [ %call.i, %do.end39 ], [ 0, %for.end ], [ -12, %do.end30 ], [ -6, %do.end7 ], [ -6, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clocksource_mmio_init(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jcore_clocksource_read(ptr nocapture noundef readnone %cs) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jcore_pit_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 36
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !57
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %add.ptr4.i = getelementptr i8, ptr %0, i32 40
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %entry
  %seclo.0.i = phi i32 [ %2, %entry ], [ %5, %do.body.i.do.body.i_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !57
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %cmp.not.i = icmp eq i32 %seclo.0.i, %5
  br i1 %cmp.not.i, label %jcore_sched_clock_read.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

jcore_sched_clock_read.exit:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %3) #8
  %mul.i = mul i32 %seclo.0.i, 1000000000
  %add.i = add i32 %6, %mul.i
  %conv.i = zext i32 %add.i to i64
  ret i64 %conv.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_clock_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i64 @jcore_sched_clock_read() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load ptr, ptr @jcore_pit_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 36
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !58
  %add.ptr4 = getelementptr i8, ptr %0, i32 40
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %seclo.0 = phi i32 [ %2, %entry ], [ %5, %do.body.do.body_crit_edge ]
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #8, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !59
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !60
  %cmp.not = icmp eq i32 %seclo.0, %5
  br i1 %cmp.not, label %do.end, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = tail call i32 @llvm.bswap.i32(i32 %3)
  %mul = mul i32 %seclo.0, 1000000000
  %add = add i32 %mul, %6
  %conv = zext i32 %add to i64
  ret i64 %conv
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_timer_interrupt(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  %1 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %0
  %7 = inttoptr i32 %add to ptr
  %state_use_accessors.i = getelementptr inbounds %struct.clock_event_device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %state_use_accessors.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state_use_accessors.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cmp.i = icmp eq i32 %9, 3
  br i1 %cmp.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.jcore_pit, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #8, !srcloc !62
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 128
  tail call void %13(ptr noundef %7) #8
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_set_state_shutdown(ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_set_state_periodic(ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %periodic_delta = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 2
  %0 = ptrtoint ptr %periodic_delta to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %periodic_delta, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %base.i.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 1
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %4 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %5 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %6, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %enable_val.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 3
  %7 = ptrtoint ptr %enable_val.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %enable_val.i, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #8, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_set_state_oneshot(ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_set_next_event(i32 noundef %delta, ptr nocapture noundef readonly %ced) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !61
  tail call void @arm_heavy_mb() #8
  %base.i.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  tail call void @arm_heavy_mb() #8
  %2 = tail call i32 @llvm.bswap.i32(i32 %delta) #8
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i.i, align 128
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #8, !srcloc !62
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  tail call void @arm_heavy_mb() #8
  %enable_val.i = getelementptr inbounds %struct.jcore_pit, ptr %ced, i32 0, i32 3
  %5 = ptrtoint ptr %enable_val.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %enable_val.i, align 8
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %7) #8, !srcloc !62
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jcore_pit_local_init(i32 noundef %cpu) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @jcore_pit_percpu, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = tail call i32 @llvm.read_register.i32(metadata !47) #8
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu2 = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu2, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, %1
  %8 = inttoptr i32 %add to ptr
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %cpu) #11
  %base = getelementptr inbounds %struct.jcore_pit, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 128
  %add.ptr = getelementptr i8, ptr %10, i32 24
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !57
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !65
  %div25 = lshr i32 %12, 1
  %add12 = add nuw i32 %div25, 1000000000
  %div13 = udiv i32 %add12, %12
  %mul = mul i32 %12, 100
  %div1726 = lshr exact i32 %mul, 1
  %add18 = add nuw i32 %div1726, 1000000000
  %div19 = udiv i32 %add18, %mul
  %periodic_delta = getelementptr inbounds %struct.jcore_pit, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %periodic_delta to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div19, ptr %periodic_delta, align 4
  tail call void @clockevents_config_and_register(ptr noundef %8, i32 noundef %div13, i32 noundef 1, i32 noundef -1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clockevents_config_and_register(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !44, !45, !46}
!llvm.named.register.sp = !{!47}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__of_table_jcore_pit, !1, !"__of_table_jcore_pit", i1 false, i1 false}
!1 = !{!"../drivers/clocksource/jcore-pit.c", i32 249, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clocksource/jcore-pit.c", i32 145, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @jcore_pit_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @jcore_pit_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clocksource/jcore-pit.c", i32 151, i32 3}
!10 = !{ptr @jcore_pit_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @jcore_pit_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clocksource/jcore-pit.c", i32 155, i32 2}
!14 = !{ptr @jcore_pit_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @jcore_pit_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clocksource/jcore-pit.c", i32 158, i32 46}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clocksource/jcore-pit.c", i32 162, i32 3}
!20 = !{ptr @jcore_pit_init._entry.10, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @jcore_pit_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clocksource/jcore-pit.c", i32 170, i32 3}
!24 = !{ptr @jcore_pit_init._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @jcore_pit_init._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clocksource/jcore-pit.c", i32 176, i32 6}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clocksource/jcore-pit.c", i32 178, i32 3}
!30 = !{ptr @jcore_pit_init._entry.17, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @jcore_pit_init._entry_ptr.19, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clocksource/jcore-pit.c", i32 223, i32 4}
!34 = !{ptr @jcore_pit_init._entry.20, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @jcore_pit_init._entry_ptr.22, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.23, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clocksource/jcore-pit.c", i32 243, i32 6}
!38 = !{ptr @jcore_pit_base, !39, !"jcore_pit_base", i1 false, i1 false}
!39 = !{!"../drivers/clocksource/jcore-pit.c", i32 42, i32 22}
!40 = !{ptr @jcore_pit_percpu, !41, !"jcore_pit_percpu", i1 false, i1 false}
!41 = !{!"../drivers/clocksource/jcore-pit.c", i32 43, i32 35}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clocksource/jcore-pit.c", i32 113, i32 2}
!44 = !{ptr @.str.25, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @jcore_pit_local_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @jcore_pit_local_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{!"sp"}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{i64 4651944}
!58 = !{i64 2153167217}
!59 = !{i64 2153167684}
!60 = !{i64 2153168151}
!61 = !{i64 2153168379}
!62 = !{i64 4651526}
!63 = !{i64 2153168767}
!64 = !{i64 2153169177}
!65 = !{i64 2153180984}
