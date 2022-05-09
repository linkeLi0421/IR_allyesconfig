; ModuleID = '/llk/IR_all_yes/drivers/mcb/mcb-parse.c_pt.bc'
source_filename = "../drivers/mcb/mcb-parse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+chameleon_parse_cells\22, \22a\22\09"
module asm "\09.weak\09__crc_chameleon_parse_cells\09\09\09\09"
module asm "\09.long\09__crc_chameleon_parse_cells\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_chameleon_parse_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22chameleon_parse_cells\22\09\09\09\09\09"
module asm "__kstrtabns_chameleon_parse_cells:\09\09\09\09\09"
module asm "\09.asciz \09\22MCB\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.chameleon_fpga_header = type { i8, i8, i8, i8, i16, i16, [12 x i8] }
%struct.mcb_bus = type { %struct.device, ptr, i32, i8, i8, i8, [13 x i8], ptr }
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
%struct.chameleon_bar = type { i32, i32 }
%struct.chameleon_gdd = type { i32, i32, i32, i32 }
%struct.mcb_device = type { %struct.device, ptr, i8, ptr, i16, i32, i32, i32, i32, i32, %struct.resource, %struct.resource, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@chameleon_parse_cells._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Unsupported chameleon version 0x%x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"chameleon_parse_cells\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/mcb/mcb-parse.c\00", [40 x i8] zeroinitializer }, align 32
@chameleon_parse_cells._entry_ptr = internal global ptr @chameleon_parse_cells._entry, section ".printk_index", align 4
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@chameleon_parse_cells._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Invalid chameleon descriptor type 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@chameleon_parse_cells._entry_ptr.6 = internal global ptr @chameleon_parse_cells._entry.4, section ".printk_index", align 4
@__kstrtab_chameleon_parse_cells = external dso_local constant [0 x i8], align 1
@__kstrtabns_chameleon_parse_cells = external dso_local constant [0 x i8], align 1
@__ksymtab_chameleon_parse_cells = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @chameleon_parse_cells to i32), ptr @__kstrtab_chameleon_parse_cells, ptr @__kstrtabns_chameleon_parse_cells }, section "___ksymtab_gpl+chameleon_parse_cells", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@chameleon_parse_gdd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 72, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\016No BAR for 16z%03d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"chameleon_parse_gdd\00", [44 x i8] zeroinitializer }, align 32
@chameleon_parse_gdd._entry_ptr = internal global ptr @chameleon_parse_gdd._entry, section ".printk_index", align 4
@chameleon_parse_gdd._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016BAR not assigned for 16z%03d\0A\00", [32 x i8] zeroinitializer }, align 32
@chameleon_parse_gdd._entry_ptr.11 = internal global ptr @chameleon_parse_gdd._entry.9, section ".printk_index", align 4
@chameleon_parse_gdd._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\016IO mapped Device (16z%03d) not yet supported\0A\00", [48 x i8] zeroinitializer }, align 32
@chameleon_parse_gdd._entry_ptr.14 = internal global ptr @chameleon_parse_gdd._entry.12, section ".printk_index", align 4
@chameleon_parse_gdd.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.8, ptr @.str.2, ptr @.str.16, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mcb\00", [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Found a 16z%03d\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 7]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 15]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 200, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 210, i32 50 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 234, i32 4 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 72, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 79, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 85, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [27 x i8] c"../drivers/mcb/mcb-parse.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 91, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__ksymtab_chameleon_parse_cells, ptr @chameleon_parse_cells._entry, ptr @chameleon_parse_cells._entry.4, ptr @chameleon_parse_cells._entry_ptr, ptr @chameleon_parse_cells._entry_ptr.6, ptr @chameleon_parse_gdd._entry, ptr @chameleon_parse_gdd._entry.12, ptr @chameleon_parse_gdd._entry.9, ptr @chameleon_parse_gdd._entry_ptr, ptr @chameleon_parse_gdd._entry_ptr.11, ptr @chameleon_parse_gdd._entry_ptr.14, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chameleon_parse_cells._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chameleon_parse_cells._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chameleon_parse_gdd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chameleon_parse_gdd._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @chameleon_parse_gdd._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @chameleon_parse_cells(ptr noundef %bus, i32 noundef %mapbase, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 20) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mmiocpy(ptr noundef nonnull %call7.i.i, ptr noundef %base, i32 noundef 20) #7
  %magic = getelementptr inbounds %struct.chameleon_fpga_header, ptr %call7.i.i, i32 0, i32 4
  %1 = ptrtoint ptr %magic to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %magic, align 4
  %3 = tail call i16 @llvm.bswap.i16(i16 %2)
  %4 = ptrtoint ptr %magic to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %magic, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -12629, i16 %2)
  %cmp.not = icmp eq i16 %2, -12629
  br i1 %cmp.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %3 to i32
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #11
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %base, i32 20
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %call7.i.i, align 8
  %revision9 = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 3
  %7 = ptrtoint ptr %revision9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %revision9, align 8
  %model = getelementptr inbounds %struct.chameleon_fpga_header, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %model to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %model, align 1
  %model10 = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 4
  %10 = ptrtoint ptr %model10 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %model10, align 1
  %minor = getelementptr inbounds %struct.chameleon_fpga_header, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %minor to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %minor, align 2
  %minor11 = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 5
  %13 = ptrtoint ptr %minor11 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %minor11, align 2
  %name = getelementptr inbounds %struct.mcb_bus, ptr %bus, i32 0, i32 6
  %filename = getelementptr inbounds %struct.chameleon_fpga_header, ptr %call7.i.i, i32 0, i32 6
  %call13 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 13, ptr noundef nonnull @.str.3, ptr noundef %filename)
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  %15 = and i32 %14, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %15)
  %cmp.i = icmp eq i32 %15, 48
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !40
  %17 = lshr i32 %16, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %and.i = and i32 %17, 7
  %18 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %if.end.i [
    i32 0, label %if.then.i.cleanup.sink.split_crit_edge
    i32 7, label %if.then.i.cleanup.sink.split_crit_edge114
  ]

if.then.i.cleanup.sink.split_crit_edge114:        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then.i.cleanup.sink.split_crit_edge:           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %if.then.i
  %19 = shl nuw nsw i32 %and.i, 3
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %19, i32 noundef 3520) #12
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end.i.cleanup.sink.split_crit_edge, label %if.end8.i

if.end.i.cleanup.sink.split_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp17.i.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp17.i.not.i, label %if.end8.i.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i

if.end8.i.chameleon_parse_bar.exit.i_crit_edge:   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i:                                     ; preds = %if.end8.i
  %add.ptr.i.i = getelementptr i8, ptr %base, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !40
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %22 = ptrtoint ptr %call8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %call8.i.i.i, align 128
  %add.ptr4.i.i = getelementptr i8, ptr %base, i32 28
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i) #7, !srcloc !40
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i)
  %exitcond.not.i.i = icmp eq i32 %and.i, 1
  br i1 %exitcond.not.i.i, label %for.body.i.i.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.1

for.body.i.i.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.1:                                   ; preds = %for.body.i.i
  %add.ptr9.i.i = getelementptr i8, ptr %base, i32 32
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i) #7, !srcloc !40
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.1 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 1
  %28 = ptrtoint ptr %arrayidx.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx.i.i.1, align 8
  %add.ptr4.i.i.1 = getelementptr i8, ptr %base, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.1) #7, !srcloc !40
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.1 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 1, i32 1
  %31 = ptrtoint ptr %size.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %size.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %exitcond.not.i.i.1 = icmp eq i32 %and.i, 2
  br i1 %exitcond.not.i.i.1, label %for.body.i.i.1.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.2

for.body.i.i.1.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.2:                                   ; preds = %for.body.i.i.1
  %add.ptr9.i.i.1 = getelementptr i8, ptr %base, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.1) #7, !srcloc !40
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.2 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 2
  %34 = ptrtoint ptr %arrayidx.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i.i.2, align 16
  %add.ptr4.i.i.2 = getelementptr i8, ptr %base, i32 44
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.2) #7, !srcloc !40
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.2 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 2, i32 1
  %37 = ptrtoint ptr %size.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %size.i.i.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %exitcond.not.i.i.2 = icmp eq i32 %and.i, 3
  br i1 %exitcond.not.i.i.2, label %for.body.i.i.2.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.3

for.body.i.i.2.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.3:                                   ; preds = %for.body.i.i.2
  %add.ptr9.i.i.2 = getelementptr i8, ptr %base, i32 48
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.2) #7, !srcloc !40
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.3 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 3
  %40 = ptrtoint ptr %arrayidx.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %arrayidx.i.i.3, align 8
  %add.ptr4.i.i.3 = getelementptr i8, ptr %base, i32 52
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.3) #7, !srcloc !40
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.3 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 3, i32 1
  %43 = ptrtoint ptr %size.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %size.i.i.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i)
  %exitcond.not.i.i.3 = icmp eq i32 %and.i, 4
  br i1 %exitcond.not.i.i.3, label %for.body.i.i.3.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.4

for.body.i.i.3.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.4:                                   ; preds = %for.body.i.i.3
  %add.ptr9.i.i.3 = getelementptr i8, ptr %base, i32 56
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.3) #7, !srcloc !40
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.4 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 4
  %46 = ptrtoint ptr %arrayidx.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %arrayidx.i.i.4, align 32
  %add.ptr4.i.i.4 = getelementptr i8, ptr %base, i32 60
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.4) #7, !srcloc !40
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.4 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 4, i32 1
  %49 = ptrtoint ptr %size.i.i.4 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %size.i.i.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and.i)
  %exitcond.not.i.i.4 = icmp eq i32 %and.i, 5
  br i1 %exitcond.not.i.i.4, label %for.body.i.i.4.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.5

for.body.i.i.4.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.5:                                   ; preds = %for.body.i.i.4
  %add.ptr9.i.i.4 = getelementptr i8, ptr %base, i32 64
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.4) #7, !srcloc !40
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.5 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 5
  %52 = ptrtoint ptr %arrayidx.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %arrayidx.i.i.5, align 8
  %add.ptr4.i.i.5 = getelementptr i8, ptr %base, i32 68
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.5) #7, !srcloc !40
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.5 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 5, i32 1
  %55 = ptrtoint ptr %size.i.i.5 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %size.i.i.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and.i)
  %exitcond.not.i.i.5 = icmp eq i32 %and.i, 6
  br i1 %exitcond.not.i.i.5, label %for.body.i.i.5.chameleon_parse_bar.exit.i_crit_edge, label %for.body.i.i.6

for.body.i.i.5.chameleon_parse_bar.exit.i_crit_edge: ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %chameleon_parse_bar.exit.i

for.body.i.i.6:                                   ; preds = %for.body.i.i.5
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr9.i.i.5 = getelementptr i8, ptr %base, i32 72
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i.i.5) #7, !srcloc !40
  %57 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  %arrayidx.i.i.6 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 6
  %58 = ptrtoint ptr %arrayidx.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %arrayidx.i.i.6, align 16
  %add.ptr4.i.i.6 = getelementptr i8, ptr %base, i32 76
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i.i.6) #7, !srcloc !40
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %size.i.i.6 = getelementptr %struct.chameleon_bar, ptr %call8.i.i.i, i32 6, i32 1
  %61 = ptrtoint ptr %size.i.i.6 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %size.i.i.6, align 4
  br label %chameleon_parse_bar.exit.i

chameleon_parse_bar.exit.i:                       ; preds = %for.body.i.i.6, %for.body.i.i.5.chameleon_parse_bar.exit.i_crit_edge, %for.body.i.i.4.chameleon_parse_bar.exit.i_crit_edge, %for.body.i.i.3.chameleon_parse_bar.exit.i_crit_edge, %for.body.i.i.2.chameleon_parse_bar.exit.i_crit_edge, %for.body.i.i.1.chameleon_parse_bar.exit.i_crit_edge, %for.body.i.i.chameleon_parse_bar.exit.i_crit_edge, %if.end8.i.chameleon_parse_bar.exit.i_crit_edge
  %add.i = or i32 %19, 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %add.i
  br label %if.end18

if.else.i:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %62 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %62, i32 noundef 3520, i32 noundef 8) #10
  %tobool10.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool10.not.i, label %if.else.i.cleanup.sink.split_crit_edge, label %if.end12.i

if.else.i.cleanup.sink.split_crit_edge:           ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end12.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %63 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %mapbase, ptr %call7.i.i.i, align 8
  br label %if.end18

if.end18:                                         ; preds = %if.end12.i, %chameleon_parse_bar.exit.i
  %cb.0 = phi ptr [ %call8.i.i.i, %chameleon_parse_bar.exit.i ], [ %call7.i.i.i, %if.end12.i ]
  %p.1 = phi ptr [ %add.ptr.i, %chameleon_parse_bar.exit.i ], [ %add.ptr, %if.end12.i ]
  %retval.0.i = phi i32 [ %and.i, %chameleon_parse_bar.exit.i ], [ 1, %if.end12.i ]
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %p.1) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog, %if.end18
  %p.2 = phi ptr [ %p.1, %if.end18 ], [ %add.ptr30, %sw.epilog ]
  %num_cells.0 = phi i32 [ 0, %if.end18 ], [ %inc, %sw.epilog ]
  %dtype.0.in.in = phi i32 [ %64, %if.end18 ], [ %66, %sw.epilog ]
  %dtype.0.in = lshr i32 %dtype.0.in.in, 4
  %dtype.0 = and i32 %dtype.0.in, 15
  %65 = zext i32 %dtype.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %65, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %dtype.0, label %do.end33 [
    i32 15, label %for.end
    i32 0, label %sw.bb
    i32 1, label %for.cond.sw.epilog_crit_edge
  ]

for.cond.sw.epilog_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %for.cond
  %call22 = tail call fastcc i32 @chameleon_parse_gdd(ptr noundef %bus, ptr noundef nonnull %cb.0, ptr noundef %p.2, i32 noundef %retval.0.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %sw.bb.free_bar_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb.free_bar_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_bar

do.end33:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %dtype.0) #11
  br label %free_bar

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %for.cond.sw.epilog_crit_edge
  %.sink = phi i32 [ 16, %sw.bb.sw.epilog_crit_edge ], [ 20, %for.cond.sw.epilog_crit_edge ]
  %add.ptr30 = getelementptr i8, ptr %p.2, i32 %.sink
  %inc = add i32 %num_cells.0, 1
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr30) #7, !srcloc !40
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !41
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_cells.0)
  %cmp37 = icmp eq i32 %num_cells.0, 0
  %spec.store.select = select i1 %cmp37, i32 -22, i32 %num_cells.0
  tail call void @kfree(ptr noundef nonnull %cb.0) #7
  br label %cleanup.sink.split

free_bar:                                         ; preds = %do.end33, %sw.bb.free_bar_crit_edge
  %ret.0 = phi i32 [ -22, %do.end33 ], [ %call22, %sw.bb.free_bar_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %cb.0) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %free_bar, %for.end, %if.else.i.cleanup.sink.split_crit_edge, %if.end.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge, %if.then.i.cleanup.sink.split_crit_edge114, %do.end
  %retval.0.ph = phi i32 [ %spec.store.select, %for.end ], [ -19, %do.end ], [ %ret.0, %free_bar ], [ -12, %if.else.i.cleanup.sink.split_crit_edge ], [ -12, %if.end.i.cleanup.sink.split_crit_edge ], [ -19, %if.then.i.cleanup.sink.split_crit_edge ], [ -19, %if.then.i.cleanup.sink.split_crit_edge114 ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chameleon_parse_gdd(ptr noundef %bus, ptr nocapture noundef readonly %cb, ptr noundef %base, i32 noundef %bar_count) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @mcb_alloc_dev(ptr noundef %bus) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %base) #7, !srcloc !40
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %reg26 = getelementptr inbounds %struct.chameleon_gdd, ptr %base, i32 0, i32 1
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %reg26) #7, !srcloc !40
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %offset12 = getelementptr inbounds %struct.chameleon_gdd, ptr %base, i32 0, i32 2
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %offset12) #7, !srcloc !40
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  %size18 = getelementptr inbounds %struct.chameleon_gdd, ptr %base, i32 0, i32 3
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %size18) #7, !srcloc !40
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %shr = lshr i32 %1, 18
  %8 = trunc i32 %shr to i16
  %conv = and i16 %8, 1023
  %id = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv, ptr %id, align 4
  %shr22 = lshr i32 %1, 5
  %and23 = and i32 %shr22, 63
  %rev = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 9
  %10 = ptrtoint ptr %rev to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %and23, ptr %rev, align 8
  %shr24 = lshr i32 %1, 11
  %and25 = and i32 %shr24, 63
  %var = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 7
  %11 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and25, ptr %var, align 8
  %and26 = and i32 %3, 7
  %bar = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 8
  %12 = ptrtoint ptr %bar to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %and26, ptr %bar, align 4
  %shr27 = lshr i32 %3, 9
  %and28 = and i32 %shr27, 63
  %group = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %group to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and28, ptr %group, align 4
  %shr29 = lshr i32 %3, 3
  %and30 = and i32 %shr29, 63
  %inst = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %inst to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and30, ptr %inst, align 8
  %sub = add i32 %bar_count, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %sub)
  %cmp = icmp sgt i32 %and26, %sub
  br i1 %cmp, label %if.end.err.sink.split_crit_edge, label %if.end38

if.end.err.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

if.end38:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.chameleon_bar, ptr %cb, i32 %and26
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool40.not = icmp eq i32 %16, 0
  br i1 %tobool40.not, label %if.end38.err.sink.split_crit_edge, label %if.end49

if.end38.err.sink.split_crit_edge:                ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

if.end49:                                         ; preds = %if.end38
  %and50 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %do.body61, label %if.end49.err.sink.split_crit_edge

if.end49.err.sink.split_crit_edge:                ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.sink.split

do.body61:                                        ; preds = %if.end49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chameleon_parse_gdd.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@chameleon_parse_gdd, %if.then67)) #7
          to label %do.end72 [label %if.then67], !srcloc !49

if.then67:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %id to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %id, align 4
  %conv69 = zext i16 %18 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @chameleon_parse_gdd.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.16, i32 noundef %conv69) #7
  br label %do.end72

do.end72:                                         ; preds = %if.then67, %do.body61
  %and73 = and i32 %1, 31
  %irq = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 10
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and73, ptr %irq, align 4
  %end = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 10, i32 1
  %20 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and73, ptr %end, align 4
  %flags = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1024, ptr %flags, align 4
  %add = add i32 %16, %5
  %mem = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 11
  %22 = ptrtoint ptr %mem to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %mem, align 4
  %add80 = add i32 %7, -1
  %sub81 = add i32 %add80, %add
  %end83 = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 11, i32 1
  %23 = ptrtoint ptr %end83 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub81, ptr %end83, align 4
  %flags85 = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 11, i32 3
  %24 = ptrtoint ptr %flags85 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 512, ptr %flags85, align 4
  %is_added = getelementptr inbounds %struct.mcb_device, ptr %call, i32 0, i32 2
  %25 = ptrtoint ptr %is_added to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %is_added, align 4
  %call86 = tail call i32 @mcb_device_register(ptr noundef %bus, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end72.err_crit_edge, label %do.end72.cleanup_crit_edge

do.end72.cleanup_crit_edge:                       ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end72.err_crit_edge:                           ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

err.sink.split:                                   ; preds = %if.end49.err.sink.split_crit_edge, %if.end38.err.sink.split_crit_edge, %if.end.err.sink.split_crit_edge
  %.str.13.sink = phi ptr [ @.str.7, %if.end.err.sink.split_crit_edge ], [ @.str.10, %if.end38.err.sink.split_crit_edge ], [ @.str.13, %if.end49.err.sink.split_crit_edge ]
  %conv58 = zext i16 %conv to i32
  %call59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.13.sink, i32 noundef %conv58) #11
  br label %err

err:                                              ; preds = %err.sink.split, %do.end72.err_crit_edge
  %ret.0 = phi i32 [ %call86, %do.end72.err_crit_edge ], [ 0, %err.sink.split ]
  tail call void @mcb_free_dev(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %err, %do.end72.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ -12, %entry.cleanup_crit_edge ], [ 0, %do.end72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mcb_alloc_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mcb_device_register(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mcb_free_dev(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mcb/mcb-parse.c", i32 200, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @chameleon_parse_cells._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @chameleon_parse_cells._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mcb/mcb-parse.c", i32 210, i32 50}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mcb/mcb-parse.c", i32 234, i32 4}
!10 = !{ptr @chameleon_parse_cells._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @chameleon_parse_cells._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_chameleon_parse_cells, !13, !"__ksymtab_chameleon_parse_cells", i1 false, i1 false}
!13 = !{!"../drivers/mcb/mcb-parse.c", i32 256, i32 1}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mcb/mcb-parse.c", i32 72, i32 3}
!16 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @chameleon_parse_gdd._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @chameleon_parse_gdd._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mcb/mcb-parse.c", i32 79, i32 3}
!21 = !{ptr @chameleon_parse_gdd._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @chameleon_parse_gdd._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mcb/mcb-parse.c", i32 85, i32 3}
!25 = !{ptr @chameleon_parse_gdd._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @chameleon_parse_gdd._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mcb/mcb-parse.c", i32 91, i32 2}
!29 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @chameleon_parse_gdd.__UNIQUE_ID_ddebug183, !28, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{i64 4582096}
!41 = !{i64 2152766523}
!42 = !{i64 2152776855}
!43 = !{i64 2152775979}
!44 = !{i64 2152776417}
!45 = !{i64 2152766984}
!46 = !{i64 2152767442}
!47 = !{i64 2152767908}
!48 = !{i64 2152768366}
!49 = !{i64 2148228106, i64 2148228111, i64 2148228124, i64 2148228168, i64 2148228202, i64 2148228223}
