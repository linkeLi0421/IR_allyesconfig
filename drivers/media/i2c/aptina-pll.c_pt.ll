; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/aptina-pll.c_pt.bc'
source_filename = "../drivers/media/i2c/aptina-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+aptina_pll_calculate\22, \22a\22\09"
module asm "\09.weak\09__crc_aptina_pll_calculate\09\09\09\09"
module asm "\09.long\09__crc_aptina_pll_calculate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_aptina_pll_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22aptina_pll_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_aptina_pll_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.aptina_pll = type { i32, i32, i32, i32, i32 }
%struct.aptina_pll_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@aptina_pll_calculate.__UNIQUE_ID_ddebug170 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 7, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aptina_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"aptina_pll_calculate\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/media/i2c/aptina-pll.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"PLL: ext clock %u pix clock %u\0A\00", [32 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 32, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pll: invalid external clock frequency.\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry_ptr = internal global ptr @aptina_pll_calculate._entry, section ".printk_index", align 4
@aptina_pll_calculate._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 37, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"pll: invalid pixel clock frequency.\0A\00", [59 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry_ptr.9 = internal global ptr @aptina_pll_calculate._entry.7, section ".printk_index", align 4
@aptina_pll_calculate.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pll: mf min %u max %u\0A\00", [41 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 67, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pll: no valid combined N*P1 divisor.\0A\00", [58 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry_ptr.13 = internal global ptr @aptina_pll_calculate._entry.11, section ".printk_index", align 4
@aptina_pll_calculate._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"pll: P1 minimum value must be >0.\0A\00", [61 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry_ptr.16 = internal global ptr @aptina_pll_calculate._entry.14, section ".printk_index", align 4
@aptina_pll_calculate.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.17, i8 0, i8 37, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"PLL: N %u M %u P1 %u\0A\00", [42 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 153, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"pll: no valid N and P1 divisors found.\0A\00", [56 x i8] zeroinitializer }, align 32
@aptina_pll_calculate._entry_ptr.20 = internal global ptr @aptina_pll_calculate._entry.18, section ".printk_index", align 4
@__kstrtab_aptina_pll_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_aptina_pll_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_aptina_pll_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @aptina_pll_calculate to i32), ptr @__kstrtab_aptina_pll_calculate, ptr @__kstrtabns_aptina_pll_calculate }, section "___ksymtab_gpl+aptina_pll_calculate", align 4
@__UNIQUE_ID_description189 = internal constant [42 x i8] c"aptina_pll.description=Aptina PLL Helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_author190 = internal constant [71 x i8] c"aptina_pll.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [45 x i8] c"aptina_pll.file=drivers/media/i2c/aptina-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [26 x i8] c"aptina_pll.license=GPL v2\00", section ".modinfo", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 27, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 32, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 37, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 65, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 67, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 124, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 149, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [34 x i8] c"../drivers/media/i2c/aptina-pll.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 153, i32 2 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author190, ptr @__UNIQUE_ID_description189, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__ksymtab_aptina_pll_calculate, ptr @aptina_pll_calculate._entry, ptr @aptina_pll_calculate._entry.11, ptr @aptina_pll_calculate._entry.14, ptr @aptina_pll_calculate._entry.18, ptr @aptina_pll_calculate._entry.7, ptr @aptina_pll_calculate._entry_ptr, ptr @aptina_pll_calculate._entry_ptr.13, ptr @aptina_pll_calculate._entry_ptr.16, ptr @aptina_pll_calculate._entry_ptr.20, ptr @aptina_pll_calculate._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.19], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aptina_pll_calculate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aptina_pll_calculate._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aptina_pll_calculate._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aptina_pll_calculate._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aptina_pll_calculate._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @aptina_pll_calculate(ptr noundef %dev, ptr nocapture noundef readonly %limits, ptr nocapture noundef %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug170, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aptina_pll_calculate, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pll, align 4
  %pix_clock = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 1
  %2 = ptrtoint ptr %pix_clock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pix_clock, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aptina_pll_calculate.__UNIQUE_ID_ddebug170, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %1, i32 noundef %3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pll, align 4
  %6 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %limits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp = icmp ult i32 %5, %7
  br i1 %cmp, label %do.end.do.end9_crit_edge, label %lor.lhs.false

do.end.do.end9_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

lor.lhs.false:                                    ; preds = %do.end
  %ext_clock_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 1
  %8 = ptrtoint ptr %ext_clock_max to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ext_clock_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp5 = icmp ugt i32 %5, %9
  br i1 %cmp5, label %lor.lhs.false.do.end9_crit_edge, label %if.end10

lor.lhs.false.do.end9_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end9

do.end9:                                          ; preds = %lor.lhs.false.do.end9_crit_edge, %do.end.do.end9_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.4) #8
  br label %cleanup197

if.end10:                                         ; preds = %lor.lhs.false
  %pix_clock11 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 1
  %10 = ptrtoint ptr %pix_clock11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pix_clock11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp12 = icmp eq i32 %11, 0
  br i1 %cmp12, label %if.end10.do.end19_crit_edge, label %lor.lhs.false13

if.end10.do.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

lor.lhs.false13:                                  ; preds = %if.end10
  %pix_clock_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 6
  %12 = ptrtoint ptr %pix_clock_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pix_clock_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp15 = icmp ugt i32 %11, %13
  br i1 %cmp15, label %lor.lhs.false13.do.end19_crit_edge, label %if.end20

lor.lhs.false13.do.end19_crit_edge:               ; preds = %lor.lhs.false13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end19

do.end19:                                         ; preds = %lor.lhs.false13.do.end19_crit_edge, %if.end10.do.end19_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup197

if.end20:                                         ; preds = %lor.lhs.false13
  %call23 = tail call i32 @gcd(i32 noundef %11, i32 noundef %5) #9
  %div25 = udiv i32 %11, %call23
  %m = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 3
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div25, ptr %m, align 4
  %div27 = udiv i32 %5, %call23
  %m_min = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 9
  %15 = ptrtoint ptr %m_min to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %m_min, align 4
  %add = add i32 %div25, -1
  %sub = add i32 %add, %16
  %div30 = udiv i32 %sub, %div25
  %out_clock_min = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 4
  %17 = ptrtoint ptr %out_clock_min to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %out_clock_min, align 4
  %n_min = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 7
  %19 = ptrtoint ptr %n_min to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_min, align 4
  %div32 = udiv i32 %5, %20
  %mul = mul i32 %div32, %div25
  %div34 = udiv i32 %18, %mul
  %21 = tail call i32 @llvm.umax.i32(i32 %div30, i32 %div34)
  %p1_min38 = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 11
  %22 = ptrtoint ptr %p1_min38 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %p1_min38, align 4
  %mul39 = mul i32 %23, %20
  %div40 = udiv i32 %mul39, %div27
  %24 = tail call i32 @llvm.umax.i32(i32 %21, i32 %div40)
  %m_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 10
  %25 = ptrtoint ptr %m_max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m_max, align 4
  %div48 = udiv i32 %26, %div25
  %out_clock_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 5
  %27 = ptrtoint ptr %out_clock_max to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %out_clock_max, align 4
  %n_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 8
  %29 = ptrtoint ptr %n_max to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %n_max, align 4
  %div50 = udiv i32 %5, %30
  %mul52 = mul i32 %div50, %div25
  %div53 = udiv i32 %28, %mul52
  %31 = tail call i32 @llvm.umin.i32(i32 %div48, i32 %div53)
  %p1_max61 = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 12
  %32 = ptrtoint ptr %p1_max61 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %p1_max61, align 4
  %mul62 = mul i32 %33, %30
  %add63 = add i32 %div27, -1
  %sub64 = add i32 %add63, %mul62
  %div65 = udiv i32 %sub64, %div27
  %34 = tail call i32 @llvm.umin.i32(i32 %31, i32 %div65)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aptina_pll_calculate, %if.then84)) #5
          to label %do.end87 [label %if.then84], !srcloc !52

if.then84:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aptina_pll_calculate.__UNIQUE_ID_ddebug179, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %24, i32 noundef %34) #5
  br label %do.end87

do.end87:                                         ; preds = %if.then84, %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %34)
  %cmp88 = icmp ugt i32 %24, %34
  br i1 %cmp88, label %do.end92, label %if.end93

do.end92:                                         ; preds = %do.end87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #8
  br label %cleanup197

if.end93:                                         ; preds = %do.end87
  %35 = ptrtoint ptr %p1_min38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p1_min38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp95 = icmp eq i32 %36, 0
  br i1 %cmp95, label %do.end99, label %if.end100

do.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup197

if.end100:                                        ; preds = %if.end93
  %37 = ptrtoint ptr %out_clock_min to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %out_clock_min, align 4
  %mul103 = mul i32 %38, %div27
  %39 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll, align 4
  %41 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %m, align 4
  %mul106 = mul i32 %42, %40
  %add107 = add i32 %mul103, -1
  %sub108 = add i32 %add107, %mul106
  %div112 = udiv i32 %sub108, %mul106
  %43 = tail call i32 @llvm.umax.i32(i32 %36, i32 %div112)
  %44 = ptrtoint ptr %p1_max61 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %p1_max61, align 4
  %46 = ptrtoint ptr %out_clock_max to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %out_clock_max, align 4
  %mul121 = mul i32 %47, %div27
  %div125 = udiv i32 %mul121, %mul106
  %48 = tail call i32 @llvm.umin.i32(i32 %45, i32 %div125)
  %and = and i32 %48, -2
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %43)
  %cmp132.not322 = icmp ult i32 %and, %43
  br i1 %cmp132.not322, label %if.end100.do.end196_crit_edge, label %for.body.lr.ph

if.end100.do.end196_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end196

for.body.lr.ph:                                   ; preds = %if.end100
  %int_clock_max = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 3
  %49 = ptrtoint ptr %int_clock_max to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %int_clock_max, align 4
  %mul138 = mul i32 %50, %div27
  %int_clock_min = getelementptr inbounds %struct.aptina_pll_limits, ptr %limits, i32 0, i32 2
  %51 = ptrtoint ptr %int_clock_min to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %int_clock_min, align 4
  %mul156 = mul i32 %52, %div27
  br label %for.body

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %for.body.lr.ph
  %p1.0323 = phi i32 [ %and, %for.body.lr.ph ], [ %sub193, %for.inc.critedge.for.body_crit_edge ]
  %call133 = tail call i32 @gcd(i32 noundef %div27, i32 noundef %p1.0323) #9
  %div134 = udiv i32 %p1.0323, %call133
  %mul137 = mul i32 %p1.0323, %40
  %add139 = add i32 %mul137, -1
  %sub140 = add i32 %add139, %mul138
  %div143 = udiv i32 %sub140, %mul138
  %53 = tail call i32 @llvm.umax.i32(i32 %24, i32 %div143)
  %sub150 = add i32 %div134, -1
  %add151 = add i32 %sub150, %53
  %54 = urem i32 %add151, %div134
  %mul153 = sub i32 %add151, %54
  %div157 = udiv i32 %mul137, %mul156
  %55 = tail call i32 @llvm.umin.i32(i32 %34, i32 %div157)
  call void @__sanitizer_cov_trace_cmp4(i32 %mul153, i32 %55)
  %cmp164 = icmp ugt i32 %mul153, %55
  br i1 %cmp164, label %for.inc.critedge, label %if.end166

if.end166:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %mul167 = mul i32 %mul153, %div27
  %div168 = udiv i32 %mul167, %p1.0323
  %n = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 2
  %56 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %div168, ptr %n, align 4
  %mul170 = mul i32 %mul153, %42
  %57 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %mul170, ptr %m, align 4
  %p1171 = getelementptr inbounds %struct.aptina_pll, ptr %pll, i32 0, i32 4
  %58 = ptrtoint ptr %p1171 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %p1.0323, ptr %p1171, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@aptina_pll_calculate, %if.then184)) #5
          to label %cleanup197 [label %if.then184], !srcloc !52

if.then184:                                       ; preds = %if.end166
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %n to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %n, align 4
  %61 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %m, align 4
  %63 = ptrtoint ptr %p1171 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %p1171, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aptina_pll_calculate.__UNIQUE_ID_ddebug188, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %60, i32 noundef %62, i32 noundef %64) #5
  br label %cleanup197

for.inc.critedge:                                 ; preds = %for.body
  %sub193 = add i32 %p1.0323, -2
  %cmp132.not = icmp ult i32 %sub193, %43
  br i1 %cmp132.not, label %for.inc.critedge.do.end196_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.critedge.do.end196_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end196

do.end196:                                        ; preds = %for.inc.critedge.do.end196_crit_edge, %if.end100.do.end196_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %cleanup197

cleanup197:                                       ; preds = %do.end196, %if.then184, %if.end166, %do.end99, %do.end92, %do.end19, %do.end9
  %retval.2 = phi i32 [ -22, %do.end9 ], [ -22, %do.end19 ], [ -22, %do.end92 ], [ -22, %do.end99 ], [ -22, %do.end196 ], [ 0, %if.then184 ], [ 0, %if.end166 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !32, !33, !34, !36, !38, !40, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/aptina-pll.c", i32 27, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug170, !1, !"__UNIQUE_ID_ddebug170", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/aptina-pll.c", i32 32, i32 3}
!8 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @aptina_pll_calculate._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @aptina_pll_calculate._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/aptina-pll.c", i32 37, i32 3}
!14 = !{ptr @aptina_pll_calculate._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @aptina_pll_calculate._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/media/i2c/aptina-pll.c", i32 65, i32 2}
!18 = !{ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug179, !17, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/i2c/aptina-pll.c", i32 67, i32 3}
!21 = !{ptr @aptina_pll_calculate._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @aptina_pll_calculate._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.15, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/i2c/aptina-pll.c", i32 124, i32 3}
!25 = !{ptr @aptina_pll_calculate._entry.14, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @aptina_pll_calculate._entry_ptr.16, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/aptina-pll.c", i32 149, i32 3}
!29 = !{ptr @aptina_pll_calculate.__UNIQUE_ID_ddebug188, !28, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/aptina-pll.c", i32 153, i32 2}
!32 = !{ptr @aptina_pll_calculate._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @aptina_pll_calculate._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @__ksymtab_aptina_pll_calculate, !35, !"__ksymtab_aptina_pll_calculate", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/aptina-pll.c", i32 156, i32 1}
!36 = !{ptr @__UNIQUE_ID_description189, !37, !"__UNIQUE_ID_description189", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/aptina-pll.c", i32 158, i32 1}
!38 = !{ptr @__UNIQUE_ID_author190, !39, !"__UNIQUE_ID_author190", i1 false, i1 false}
!39 = !{!"../drivers/media/i2c/aptina-pll.c", i32 159, i32 1}
!40 = !{ptr @__UNIQUE_ID_file191, !41, !"__UNIQUE_ID_file191", i1 false, i1 false}
!41 = !{!"../drivers/media/i2c/aptina-pll.c", i32 160, i32 1}
!42 = !{ptr @__UNIQUE_ID_license192, !41, !"__UNIQUE_ID_license192", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148280897, i64 2148280902, i64 2148280915, i64 2148280959, i64 2148280993, i64 2148281014}
