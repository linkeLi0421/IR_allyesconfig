; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/das08.c_pt.bc'
source_filename = "../drivers/comedi/drivers/das08.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+das08_common_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_das08_common_attach\09\09\09\09"
module asm "\09.long\09__crc_das08_common_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_das08_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22das08_common_attach\22\09\09\09\09\09"
module asm "__kstrtabns_das08_common_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.comedi_lrange = type { i32, [0 x %struct.comedi_krange] }
%struct.comedi_krange = type { i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.das08_board_struct = type { ptr, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.das08_private_struct = type { i32, ptr }
%struct.comedi_insn = type { i32, i32, ptr, i32, i32, [3 x i32] }

@das08_ai_lranges = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @range_unknown, ptr @range_bipolar5, ptr @das08_pgh_ai_range, ptr @das08_pgl_ai_range, ptr @das08_pgm_ai_range], [44 x i8] zeroinitializer }, align 32
@das08_ai_gainlists = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr null, ptr null, ptr @das08_pgh_ai_gainlist, ptr @das08_pgl_ai_gainlist, ptr @das08_pgm_ai_gainlist], [44 x i8] zeroinitializer }, align 32
@range_bipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@range_unipolar5 = external dso_local constant %struct.comedi_lrange, align 4
@__kstrtab_das08_common_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_das08_common_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_das08_common_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @das08_common_attach to i32), ptr @__kstrtab_das08_common_attach, ptr @__kstrtabns_das08_common_attach }, section "___ksymtab_gpl+das08_common_attach", align 4
@__initcall__kmod_das08__229_460_das08_init6 = internal global ptr @das08_init, section ".initcall6.init", align 4
@__exitcall_das08_exit = internal global ptr @das08_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [43 x i8] c"das08.author=Comedi https://www.comedi.org\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [53 x i8] c"das08.description=Comedi common DAS08 support module\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [40 x i8] c"das08.file=drivers/comedi/drivers/das08\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [18 x i8] c"das08.license=GPL\00", section ".modinfo", align 1
@range_unknown = external dso_local constant %struct.comedi_lrange, align 4
@das08_pgh_ai_range = internal constant { { i32, [12 x %struct.comedi_krange] }, [44 x i8] } { { i32, [12 x %struct.comedi_krange] } { i32 12, [12 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -1000000, i32 1000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -100000, i32 100000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 -5000, i32 5000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [44 x i8] zeroinitializer }, align 32
@das08_pgl_ai_range = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -2500000, i32 2500000, i32 0 }, %struct.comedi_krange { i32 -1250000, i32 1250000, i32 0 }, %struct.comedi_krange { i32 -625000, i32 625000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 5000000, i32 0 }, %struct.comedi_krange { i32 0, i32 2500000, i32 0 }, %struct.comedi_krange { i32 0, i32 1250000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@das08_pgm_ai_range = internal constant { { i32, [9 x %struct.comedi_krange] }, [48 x i8] } { { i32, [9 x %struct.comedi_krange] } { i32 9, [9 x %struct.comedi_krange] [%struct.comedi_krange { i32 -10000000, i32 10000000, i32 0 }, %struct.comedi_krange { i32 -5000000, i32 5000000, i32 0 }, %struct.comedi_krange { i32 -500000, i32 500000, i32 0 }, %struct.comedi_krange { i32 -50000, i32 50000, i32 0 }, %struct.comedi_krange { i32 -10000, i32 10000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000000, i32 0 }, %struct.comedi_krange { i32 0, i32 1000000, i32 0 }, %struct.comedi_krange { i32 0, i32 100000, i32 0 }, %struct.comedi_krange { i32 0, i32 10000, i32 0 }] }, [48 x i8] zeroinitializer }, align 32
@das08_ai_insn_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.4, ptr @.str.5, i32 205, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"over-range\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"das08_ai_insn_read\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/comedi/drivers/das08.c\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@das08_ai_insn_read._entry_ptr = internal global ptr @das08_ai_insn_read._entry, section ".printk_index", align 4
@das08_ai_insn_read._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 242, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"bug! unknown ai encoding\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@das08_ai_insn_read._entry_ptr.11 = internal global ptr @das08_ai_insn_read._entry.8, section ".printk_index", align 4
@das08_pgh_ai_gainlist = internal constant { [12 x i32], [48 x i8] } { [12 x i32] [i32 8, i32 0, i32 10, i32 2, i32 12, i32 4, i32 14, i32 6, i32 1, i32 3, i32 5, i32 7], [48 x i8] zeroinitializer }, align 32
@das08_pgl_ai_gainlist = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7], [60 x i8] zeroinitializer }, align 32
@das08_pgm_ai_gainlist = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 8, i32 0, i32 10, i32 12, i32 14, i32 9, i32 11, i32 13, i32 15], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"das08_ai_lranges\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 132, i32 42 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"das08_ai_gainlists\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 146, i32 25 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"das08_pgh_ai_range\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 101, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"das08_pgl_ai_range\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 87, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"das08_pgm_ai_range\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 118, i32 35 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 205, i32 5 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 242, i32 4 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"das08_pgh_ai_gainlist\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 140, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"das08_pgl_ai_gainlist\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 143, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant [22 x i8] c"das08_pgm_ai_gainlist\00", align 1
@___asan_gen_.61 = private constant [34 x i8] c"../drivers/comedi/drivers/das08.c\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 144, i32 18 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_das08_exit, ptr @__initcall__kmod_das08__229_460_das08_init6, ptr @__ksymtab_das08_common_attach, ptr @das08_ai_insn_read._entry, ptr @das08_ai_insn_read._entry.8, ptr @das08_ai_insn_read._entry_ptr, ptr @das08_ai_insn_read._entry_ptr.11, ptr @das08_exit, ptr @das08_ai_lranges, ptr @das08_ai_gainlists, ptr @das08_pgh_ai_range, ptr @das08_pgl_ai_range, ptr @das08_pgm_ai_range, ptr @.str, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @das08_pgh_ai_gainlist, ptr @das08_pgl_ai_gainlist, ptr @das08_pgm_ai_gainlist], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_ai_lranges to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_ai_gainlists to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgh_ai_range to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgl_ai_range to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgm_ai_range to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_ai_insn_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_ai_insn_read._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgh_ai_gainlist to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgl_ai_gainlist to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @das08_pgm_ai_gainlist to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @das08_common_attach(ptr noundef %dev, i32 noundef %iobase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %iobase1 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %iobase, ptr %iobase1, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %board_name = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 8
  %7 = ptrtoint ptr %board_name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %board_name, align 4
  %call = tail call i32 @comedi_alloc_subdevices(ptr noundef %dev, i32 noundef 6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %subdevices = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 16
  %8 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %subdevices, align 4
  %ai_nbits = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ai_nbits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ai_nbits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  %type8 = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 2
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type8, align 4
  %subdev_flags = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 4
  %13 = ptrtoint ptr %subdev_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1114112, ptr %subdev_flags, align 4
  %n_chan = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %n_chan to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %n_chan, align 4
  %15 = ptrtoint ptr %ai_nbits to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ai_nbits, align 4
  %notmask175 = shl nsw i32 -1, %16
  %sub = xor i32 %notmask175, -1
  %maxdata = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 13
  %17 = ptrtoint ptr %maxdata to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub, ptr %maxdata, align 4
  %ai_pg = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %ai_pg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ai_pg, align 4
  %arrayidx5 = getelementptr [5 x ptr], ptr @das08_ai_lranges, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx5, align 4
  %range_table = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 15
  %22 = ptrtoint ptr %range_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %21, ptr %range_table, align 4
  %insn_read = getelementptr inbounds %struct.comedi_subdevice, ptr %9, i32 0, i32 18
  %23 = ptrtoint ptr %insn_read to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @das08_ai_insn_read, ptr %insn_read, align 4
  %24 = load i32, ptr %ai_pg, align 4
  %arrayidx7 = getelementptr [5 x ptr], ptr @das08_ai_gainlists, i32 0, i32 %24
  %25 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx7, align 4
  %pg_gainlist = getelementptr inbounds %struct.das08_private_struct, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %pg_gainlist to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %pg_gainlist, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %type8 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %type8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then3
  %29 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %subdevices, align 4
  %ao_nbits = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 5
  %31 = ptrtoint ptr %ao_nbits to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ao_nbits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool12.not = icmp eq i32 %32, 0
  br i1 %tobool12.not, label %if.else31, label %if.then13

if.then13:                                        ; preds = %if.end9
  %arrayidx11 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1
  %type14 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 2
  %33 = ptrtoint ptr %type14 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 2, ptr %type14, align 4
  %subdev_flags15 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 4
  %34 = ptrtoint ptr %subdev_flags15 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 131072, ptr %subdev_flags15, align 4
  %n_chan16 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 3
  %35 = ptrtoint ptr %n_chan16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 2, ptr %n_chan16, align 4
  %36 = ptrtoint ptr %ao_nbits to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ao_nbits, align 4
  %notmask = shl nsw i32 -1, %37
  %sub19 = xor i32 %notmask, -1
  %maxdata20 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 13
  %38 = ptrtoint ptr %maxdata20 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %sub19, ptr %maxdata20, align 4
  %range_table21 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 15
  %39 = ptrtoint ptr %range_table21 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @range_bipolar5, ptr %range_table21, align 4
  %insn_write = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 19
  %40 = ptrtoint ptr %insn_write to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @das08_ao_insn_write, ptr %insn_write, align 4
  %call22 = tail call i32 @comedi_alloc_subdev_readback(ptr noundef %arrayidx11) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %for.cond.preheader, label %if.then13.cleanup_crit_edge

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.cond.preheader:                               ; preds = %if.then13
  %41 = ptrtoint ptr %n_chan16 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %n_chan16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp176 = icmp sgt i32 %42, 0
  br i1 %cmp176, label %for.body.lr.ph, label %for.cond.preheader.if.end33_crit_edge

for.cond.preheader.if.end33_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %readback = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0177 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %43 = ptrtoint ptr %maxdata20 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %maxdata20, align 4
  %div174 = lshr i32 %44, 1
  %45 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %readback, align 4
  %arrayidx28 = getelementptr i32, ptr %46, i32 %i.0177
  %47 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div174, ptr %arrayidx28, align 4
  %48 = load ptr, ptr %readback, align 4
  %arrayidx30 = getelementptr i32, ptr %48, i32 %i.0177
  %49 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx30, align 4
  tail call fastcc void @das08_ao_set_data(ptr noundef %dev, i32 noundef %i.0177, i32 noundef %50)
  %inc = add nuw nsw i32 %i.0177, 1
  %51 = ptrtoint ptr %n_chan16 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %n_chan16, align 4
  %cmp = icmp slt i32 %inc, %52
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end33_crit_edge

for.body.if.end33_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end33

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.else31:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  %type32 = getelementptr %struct.comedi_subdevice, ptr %30, i32 1, i32 2
  %53 = ptrtoint ptr %type32 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %type32, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.else31, %for.body.if.end33_crit_edge, %for.cond.preheader.if.end33_crit_edge
  %54 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %subdevices, align 4
  %di_nchan = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 6
  %56 = ptrtoint ptr %di_nchan to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %di_nchan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool36.not = icmp eq i32 %57, 0
  %type46 = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 2
  br i1 %tobool36.not, label %if.else45, label %if.then37

if.then37:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %58 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 3, ptr %type46, align 4
  %subdev_flags39 = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 4
  %59 = ptrtoint ptr %subdev_flags39 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 65536, ptr %subdev_flags39, align 4
  %60 = ptrtoint ptr %di_nchan to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %di_nchan, align 4
  %n_chan41 = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 3
  %62 = ptrtoint ptr %n_chan41 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %n_chan41, align 4
  %maxdata42 = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 13
  %63 = ptrtoint ptr %maxdata42 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %maxdata42, align 4
  %range_table43 = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 15
  %64 = ptrtoint ptr %range_table43 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @range_unipolar5, ptr %range_table43, align 4
  %is_jr = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 1
  %65 = ptrtoint ptr %is_jr to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %is_jr, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool44.not = icmp eq i8 %66, 0
  %cond = select i1 %tobool44.not, ptr @das08_di_insn_bits, ptr @das08jr_di_insn_bits
  %insn_bits = getelementptr %struct.comedi_subdevice, ptr %55, i32 2, i32 20
  %67 = ptrtoint ptr %insn_bits to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %cond, ptr %insn_bits, align 4
  br label %if.end47

if.else45:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %68 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %type46, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then37
  %69 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %subdevices, align 4
  %do_nchan = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 7
  %71 = ptrtoint ptr %do_nchan to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %do_nchan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool50.not = icmp eq i32 %72, 0
  %type63 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 2
  br i1 %tobool50.not, label %if.else62, label %if.then51

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 4, ptr %type63, align 4
  %subdev_flags53 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 4
  %74 = ptrtoint ptr %subdev_flags53 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 131072, ptr %subdev_flags53, align 4
  %75 = ptrtoint ptr %do_nchan to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %do_nchan, align 4
  %n_chan55 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 3
  %77 = ptrtoint ptr %n_chan55 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %n_chan55, align 4
  %maxdata56 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 13
  %78 = ptrtoint ptr %maxdata56 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 1, ptr %maxdata56, align 4
  %range_table57 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 15
  %79 = ptrtoint ptr %range_table57 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @range_unipolar5, ptr %range_table57, align 4
  %is_jr58 = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 1
  %80 = ptrtoint ptr %is_jr58 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %is_jr58, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool59.not = icmp eq i8 %81, 0
  %cond60 = select i1 %tobool59.not, ptr @das08_do_insn_bits, ptr @das08jr_do_insn_bits
  %insn_bits61 = getelementptr %struct.comedi_subdevice, ptr %70, i32 3, i32 20
  %82 = ptrtoint ptr %insn_bits61 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %cond60, ptr %insn_bits61, align 4
  br label %if.end64

if.else62:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  %83 = ptrtoint ptr %type63 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %type63, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.else62, %if.then51
  %84 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %subdevices, align 4
  %i8255_offset = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 8
  %86 = ptrtoint ptr %i8255_offset to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %i8255_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp67.not = icmp eq i32 %87, 0
  br i1 %cmp67.not, label %if.else74, label %if.then68

if.then68:                                        ; preds = %if.end64
  %arrayidx66 = getelementptr %struct.comedi_subdevice, ptr %85, i32 4
  %call70 = tail call i32 @subdev_8255_init(ptr noundef %dev, ptr noundef %arrayidx66, ptr noundef null, i32 noundef %87) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then68.if.end76_crit_edge, label %if.then68.cleanup_crit_edge

if.then68.cleanup_crit_edge:                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then68.if.end76_crit_edge:                     ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end76

if.else74:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %type75 = getelementptr %struct.comedi_subdevice, ptr %85, i32 4, i32 2
  %88 = ptrtoint ptr %type75 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %type75, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else74, %if.then68.if.end76_crit_edge
  %89 = ptrtoint ptr %subdevices to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %subdevices, align 4
  %arrayidx78 = getelementptr %struct.comedi_subdevice, ptr %90, i32 5
  %i8254_offset = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 9
  %91 = ptrtoint ptr %i8254_offset to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %i8254_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool79.not = icmp eq i32 %92, 0
  br i1 %tobool79.not, label %if.else89, label %if.then80

if.then80:                                        ; preds = %if.end76
  %93 = ptrtoint ptr %iobase1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %iobase1, align 4
  %add = add i32 %94, %92
  %call83 = tail call ptr @comedi_8254_init(i32 noundef %add, i32 noundef 0, i32 noundef 1, i32 noundef 0) #4
  %pacer = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 2
  %95 = ptrtoint ptr %pacer to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call83, ptr %pacer, align 4
  %tobool85.not = icmp eq ptr %call83, null
  br i1 %tobool85.not, label %if.then80.cleanup_crit_edge, label %if.end87

if.then80.cleanup_crit_edge:                      ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end87:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @comedi_8254_subdevice_init(ptr noundef %arrayidx78, ptr noundef nonnull %call83) #4
  br label %cleanup

if.else89:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  %type90 = getelementptr %struct.comedi_subdevice, ptr %90, i32 5, i32 2
  %96 = ptrtoint ptr %type90 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 0, ptr %type90, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else89, %if.end87, %if.then80.cleanup_crit_edge, %if.then68.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call22, %if.then13.cleanup_crit_edge ], [ %call70, %if.then68.cleanup_crit_edge ], [ -12, %if.then80.cleanup_crit_edge ], [ 0, %if.else89 ], [ 0, %if.end87 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdevices(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08_ai_insn_read(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 4
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %4 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chanspec, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %6 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %iobase, align 4
  %and3 = and i32 %7, 1048575
  %add4 = or i32 %and3, -18874368
  %8 = inttoptr i32 %add4 to ptr
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %8) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !53
  %10 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase, align 4
  %add8 = add i32 %11, 1
  %and9 = and i32 %add8, 1048575
  %add10 = or i32 %and9, -18874368
  %12 = inttoptr i32 %add10 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !54
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  %and14 = and i32 %15, -8
  %and15 = and i32 %5, 7
  %or = or i32 %and14, %and15
  store i32 %or, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !55
  tail call void @arm_heavy_mb() #4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  %conv = trunc i32 %17 to i8
  %18 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase, align 4
  %add19 = add i32 %19, 2
  %and20 = and i32 %add19, 1048575
  %add21 = or i32 %and20, -18874368
  %20 = inttoptr i32 %add21 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %20, i8 %conv) #4, !srcloc !56
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  %pg_gainlist = getelementptr inbounds %struct.das08_private_struct, ptr %3, i32 0, i32 1
  %21 = ptrtoint ptr %pg_gainlist to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pg_gainlist, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %chanspec, align 4
  %shr25 = lshr i32 %24, 16
  %and26 = and i32 %shr25, 255
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !57
  tail call void @arm_heavy_mb() #4
  %25 = ptrtoint ptr %pg_gainlist to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pg_gainlist, align 4
  %arrayidx = getelementptr i32, ptr %26, i32 %and26
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %conv31 = trunc i32 %28 to i8
  %29 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %iobase, align 4
  %add33 = add i32 %30, 3
  %and34 = and i32 %add33, 1048575
  %add35 = or i32 %and34, -18874368
  %31 = inttoptr i32 %add35 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv31) #4, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %n37 = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %32 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %n37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp168.not = icmp eq i32 %33, 0
  br i1 %cmp168.not, label %if.end.cleanup_crit_edge, label %for.body.lr.ph

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end
  %ai_nbits = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 2
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 4
  %ai_encoding = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n.0169 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %34 = ptrtoint ptr %ai_nbits to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ai_nbits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %35)
  %cmp39 = icmp eq i32 %35, 16
  br i1 %cmp39, label %if.then41, label %for.body.if.end58_crit_edge

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

if.then41:                                        ; preds = %for.body
  %36 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %iobase, align 4
  %add44 = add i32 %37, 1
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %38 = inttoptr i32 %add46 to ptr
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %38) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %39)
  %tobool52.not = icmp sgt i8 %39, -1
  br i1 %tobool52.not, label %if.then41.if.end58_crit_edge, label %do.end56

if.then41.if.end58_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end58

do.end56:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %41, ptr noundef nonnull @.str) #7
  br label %if.end58

if.end58:                                         ; preds = %do.end56, %if.then41.if.end58_crit_edge, %for.body.if.end58_crit_edge
  %42 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %iobase, align 4
  %add60 = add i32 %43, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !59
  tail call void @arm_heavy_mb() #4
  %and.i = and i32 %add60, 1048575
  %add.i = or i32 %and.i, -18874368
  %44 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %44, i8 0) #4, !srcloc !56
  %call61 = tail call i32 @comedi_timeout(ptr noundef %dev, ptr noundef %s, ptr noundef %insn, ptr noundef nonnull @das08_ai_eoc, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.end64, label %if.end58.cleanup_crit_edge

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end64:                                         ; preds = %if.end58
  %45 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %iobase, align 4
  %add67 = add i32 %46, 1
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %47 = inttoptr i32 %add69 to ptr
  %48 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %47) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !60
  %conv73 = zext i8 %48 to i32
  %49 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %iobase, align 4
  %and77 = and i32 %50, 1048575
  %add78 = or i32 %and77, -18874368
  %51 = inttoptr i32 %add78 to ptr
  %52 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %51) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !61
  %conv82 = zext i8 %52 to i32
  %53 = ptrtoint ptr %ai_encoding to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ai_encoding, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values)
  switch i32 %54, label %do.end115 [
    i32 0, label %if.then85
    i32 2, label %if.then92
    i32 1, label %if.then100
  ]

if.then85:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %56 = lshr i32 %conv82, 4
  %shl = shl nuw nsw i32 %conv73, 4
  %or87 = or i32 %56, %shl
  br label %for.inc

if.then92:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %shl93 = shl nuw nsw i32 %conv73, 8
  %add94 = or i32 %shl93, %conv82
  br label %for.inc

if.then100:                                       ; preds = %if.end64
  %and101 = shl nuw nsw i32 %conv73, 8
  %shl102 = and i32 %and101, 32512
  %or103 = or i32 %shl102, %conv82
  %and104 = and i32 %conv73, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.else109, label %if.then106

if.then106:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #6
  %add107 = or i32 %or103, 32768
  br label %for.inc

if.else109:                                       ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #6
  %sub = sub nuw nsw i32 32768, %or103
  br label %for.inc

do.end115:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %58, ptr noundef nonnull @.str.9) #7
  br label %cleanup

for.inc:                                          ; preds = %if.else109, %if.then106, %if.then92, %if.then85
  %add107.sink = phi i32 [ %add107, %if.then106 ], [ %sub, %if.else109 ], [ %or87, %if.then85 ], [ %add94, %if.then92 ]
  %arrayidx108 = getelementptr i32, ptr %data, i32 %n.0169
  %59 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %add107.sink, ptr %arrayidx108, align 4
  %inc = add nuw i32 %n.0169, 1
  %60 = ptrtoint ptr %n37 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n37, align 4
  %cmp = icmp ult i32 %inc, %61
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end115, %if.end58.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %do.end115 ], [ 0, %if.end.cleanup_crit_edge ], [ %call61, %if.end58.cleanup_crit_edge ], [ %inc, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08_ao_insn_write(ptr nocapture noundef readonly %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chanspec = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 4
  %0 = ptrtoint ptr %chanspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chanspec, align 4
  %and = and i32 %1, 65535
  %readback = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 32
  %2 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %readback, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp13.not = icmp eq i32 %7, 0
  br i1 %cmp13.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx1 = getelementptr i32, ptr %data, i32 %i.014
  %8 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1, align 4
  tail call fastcc void @das08_ao_set_data(ptr noundef %dev, i32 noundef %and, i32 noundef %9)
  %inc = add nuw i32 %i.014, 1
  %10 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n, align 4
  %cmp = icmp ult i32 %inc, %11
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %val.0.lcssa = phi i32 [ %5, %entry.for.end_crit_edge ], [ %9, %for.body.for.end_crit_edge ]
  %12 = ptrtoint ptr %readback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %readback, align 4
  %arrayidx3 = getelementptr i32, ptr %13, i32 %and
  %14 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %val.0.lcssa, ptr %arrayidx3, align 4
  %15 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n, align 4
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_alloc_subdev_readback(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @das08_ao_set_data(ptr nocapture noundef readonly %dev, i32 noundef %chan, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %board_ptr = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 9
  %0 = ptrtoint ptr %board_ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %board_ptr, align 4
  %conv = trunc i32 %data to i8
  %shr = lshr i32 %data, 8
  %conv2 = trunc i32 %shr to i8
  %is_jr = getelementptr inbounds %struct.das08_board_struct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %is_jr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_jr, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4
  tail call void @arm_heavy_mb() #4
  %iobase25 = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %4 = ptrtoint ptr %iobase25 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %iobase25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %chan)
  %tobool26.not = icmp eq i32 %chan, 0
  br i1 %tobool.not, label %do.body22, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cond = select i1 %tobool26.not, i32 4, i32 6
  %add = add i32 %5, %cond
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %6 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %conv) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !62
  tail call void @arm_heavy_mb() #4
  %7 = ptrtoint ptr %iobase25 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iobase25, align 4
  %cond11 = select i1 %tobool26.not, i32 5, i32 7
  %add12 = add i32 %8, %cond11
  %and13 = and i32 %add12, 1048575
  %add14 = or i32 %and13, -18874368
  %9 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %conv2) #4, !srcloc !56
  %10 = ptrtoint ptr %iobase25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %iobase25, align 4
  %add17 = add i32 %11, 3
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %12 = inttoptr i32 %add19 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !63
  br label %if.end

do.body22:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %cond27 = select i1 %tobool26.not, i32 8, i32 10
  %add28 = add i32 %5, %cond27
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %14 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %conv) #4, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !64
  tail call void @arm_heavy_mb() #4
  %15 = ptrtoint ptr %iobase25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %iobase25, align 4
  %cond37 = select i1 %tobool26.not, i32 9, i32 11
  %add38 = add i32 %16, %cond37
  %and39 = and i32 %add38, 1048575
  %add40 = or i32 %and39, -18874368
  %17 = inttoptr i32 %add40 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv2) #4, !srcloc !56
  %18 = ptrtoint ptr %iobase25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %iobase25, align 4
  %add44 = add i32 %19, 8
  %and45 = and i32 %add44, 1048575
  %add46 = or i32 %and45, -18874368
  %20 = inttoptr i32 %add46 to ptr
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %20) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !65
  br label %if.end

if.end:                                           ; preds = %do.body22, %do.body
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08jr_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iobase, align 4
  %add = add i32 %2, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !66
  %conv = zext i8 %4 to i32
  %arrayidx3 = getelementptr i32, ptr %data, i32 1
  %5 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %arrayidx3, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %6 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n, align 4
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08_di_insn_bits(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readonly %insn, ptr nocapture noundef writeonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %data, align 4
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %1 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %iobase, align 4
  %add = add i32 %2, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !67
  %5 = lshr i8 %4, 4
  %6 = and i8 %5, 7
  %7 = zext i8 %6 to i32
  %arrayidx4 = getelementptr i32, ptr %data, i32 1
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %arrayidx4, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %9 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n, align 4
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08jr_do_insn_bits(ptr nocapture noundef readonly %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !68
  tail call void @arm_heavy_mb() #4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %conv = trunc i32 %1 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %2 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %iobase, align 4
  %add = add i32 %3, 3
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv) #4, !srcloc !56
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  %state3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %5 = ptrtoint ptr %state3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state3, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %8 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %n, align 4
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08_do_insn_bits(ptr noundef %dev, ptr noundef %s, ptr nocapture noundef readonly %insn, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %call = tail call i32 @comedi_dio_update_state(ptr noundef %s, ptr noundef %data) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %spinlock = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %spinlock) #4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, -241
  store i32 %and, ptr %1, align 4
  %state = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  %shl = shl i32 %5, 4
  %and1 = and i32 %shl, 240
  %or = or i32 %and1, %and
  store i32 %or, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !69
  tail call void @arm_heavy_mb() #4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %conv = trunc i32 %7 to i8
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %8 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %iobase, align 4
  %add = add i32 %9, 2
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %10 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %conv) #4, !srcloc !56
  tail call void @_raw_spin_unlock(ptr noundef %spinlock) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %state8 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 29
  %11 = ptrtoint ptr %state8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state8, align 4
  %arrayidx = getelementptr i32, ptr %data, i32 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx, align 4
  %n = getelementptr inbounds %struct.comedi_insn, ptr %insn, i32 0, i32 1
  %14 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n, align 4
  ret i32 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @subdev_8255_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @comedi_8254_init(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @comedi_8254_subdevice_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @das08_init() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @das08_exit() #2 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_timeout(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @das08_ai_eoc(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %s, ptr nocapture noundef readnone %insn, i32 noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %iobase = getelementptr inbounds %struct.comedi_device, ptr %dev, i32 0, i32 18
  %0 = ptrtoint ptr %iobase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %iobase, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #4, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %3)
  %cmp = icmp sgt i8 %3, -1
  %. = select i1 %cmp, i32 0, i32 -16
  ret i32 %.
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_dio_update_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__ksymtab_das08_common_attach, !1, !"__ksymtab_das08_common_attach", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/das08.c", i32 454, i32 1}
!2 = !{ptr @__initcall__kmod_das08__229_460_das08_init6, !3, !"__initcall__kmod_das08__229_460_das08_init6", i1 false, i1 false}
!3 = !{!"../drivers/comedi/drivers/das08.c", i32 460, i32 1}
!4 = !{ptr @__exitcall_das08_exit, !5, !"__exitcall_das08_exit", i1 false, i1 false}
!5 = !{!"../drivers/comedi/drivers/das08.c", i32 465, i32 1}
!6 = !{ptr @__UNIQUE_ID_author230, !7, !"__UNIQUE_ID_author230", i1 false, i1 false}
!7 = !{!"../drivers/comedi/drivers/das08.c", i32 467, i32 1}
!8 = !{ptr @__UNIQUE_ID_description231, !9, !"__UNIQUE_ID_description231", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/das08.c", i32 468, i32 1}
!10 = !{ptr @__UNIQUE_ID_file232, !11, !"__UNIQUE_ID_file232", i1 false, i1 false}
!11 = !{!"../drivers/comedi/drivers/das08.c", i32 469, i32 1}
!12 = !{ptr @__UNIQUE_ID_license233, !11, !"__UNIQUE_ID_license233", i1 false, i1 false}
!13 = !{ptr @das08_ai_lranges, !14, !"das08_ai_lranges", i1 false, i1 false}
!14 = !{!"../drivers/comedi/drivers/das08.c", i32 132, i32 42}
!15 = !{ptr @das08_pgh_ai_range, !16, !"das08_pgh_ai_range", i1 false, i1 false}
!16 = !{!"../drivers/comedi/drivers/das08.c", i32 101, i32 35}
!17 = !{ptr @das08_pgl_ai_range, !18, !"das08_pgl_ai_range", i1 false, i1 false}
!18 = !{!"../drivers/comedi/drivers/das08.c", i32 87, i32 35}
!19 = !{ptr @das08_pgm_ai_range, !20, !"das08_pgm_ai_range", i1 false, i1 false}
!20 = !{!"../drivers/comedi/drivers/das08.c", i32 118, i32 35}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/comedi/drivers/das08.c", i32 205, i32 5}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @das08_ai_insn_read._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @das08_ai_insn_read._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/comedi/drivers/das08.c", i32 242, i32 4}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @das08_ai_insn_read._entry.8, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @das08_ai_insn_read._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @das08_ai_gainlists, !35, !"das08_ai_gainlists", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/das08.c", i32 146, i32 25}
!36 = !{ptr @das08_pgh_ai_gainlist, !37, !"das08_pgh_ai_gainlist", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/das08.c", i32 140, i32 18}
!38 = !{ptr @das08_pgl_ai_gainlist, !39, !"das08_pgl_ai_gainlist", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/das08.c", i32 143, i32 18}
!40 = !{ptr @das08_pgm_ai_gainlist, !41, !"das08_pgm_ai_gainlist", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/das08.c", i32 144, i32 18}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i8 0, i8 2}
!52 = !{i64 6270193}
!53 = !{i64 2153920940}
!54 = !{i64 2153921242}
!55 = !{i64 2153921527}
!56 = !{i64 6269798}
!57 = !{i64 2153921938}
!58 = !{i64 2153922367}
!59 = !{i64 2153805854}
!60 = !{i64 2153924182}
!61 = !{i64 2153924484}
!62 = !{i64 2153928549}
!63 = !{i64 2153928998}
!64 = !{i64 2153929673}
!65 = !{i64 2153930122}
!66 = !{i64 2153927518}
!67 = !{i64 2153926782}
!68 = !{i64 2153927747}
!69 = !{i64 2153927089}
!70 = !{i64 2153920487}
