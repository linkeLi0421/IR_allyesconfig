; ModuleID = '/llk/IR_all_yes/drivers/firmware/broadcom/bcm47xx_nvram.c_pt.bc'
source_filename = "../drivers/firmware/broadcom/bcm47xx_nvram.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+bcm47xx_nvram_getenv\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm47xx_nvram_getenv\09\09\09\09"
module asm "\09.long\09__crc_bcm47xx_nvram_getenv\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_getenv:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_getenv\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_getenv:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bcm47xx_nvram_gpio_pin\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm47xx_nvram_gpio_pin\09\09\09\09"
module asm "\09.long\09__crc_bcm47xx_nvram_gpio_pin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_gpio_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_gpio_pin\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_gpio_pin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+bcm47xx_nvram_get_contents\22, \22a\22\09"
module asm "\09.weak\09__crc_bcm47xx_nvram_get_contents\09\09\09\09"
module asm "\09.long\09__crc_bcm47xx_nvram_get_contents\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_bcm47xx_nvram_get_contents:\09\09\09\09\09"
module asm "\09.asciz \09\22bcm47xx_nvram_get_contents\22\09\09\09\09\09"
module asm "__kstrtabns_bcm47xx_nvram_get_contents:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvram_header = type { i32, i32, i32, i32, i32 }

@nvram_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@nvram_buf = internal global { [65536 x i8], [16384 x i8] } zeroinitializer, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__kstrtab_bcm47xx_nvram_getenv = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_getenv = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_getenv = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_getenv to i32), ptr @__kstrtab_bcm47xx_nvram_getenv, ptr @__kstrtabns_bcm47xx_nvram_getenv }, section "___ksymtab+bcm47xx_nvram_getenv", align 4
@__const.bcm47xx_nvram_gpio_pin.nvram_var = private unnamed_addr constant [7 x i8] c"gpioXX\00", align 1
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"gpio%i\00", [25 x i8] zeroinitializer }, align 32
@__kstrtab_bcm47xx_nvram_gpio_pin = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_gpio_pin = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_gpio_pin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_gpio_pin to i32), ptr @__kstrtab_bcm47xx_nvram_gpio_pin, ptr @__kstrtabns_bcm47xx_nvram_gpio_pin }, section "___ksymtab+bcm47xx_nvram_gpio_pin", align 4
@__kstrtab_bcm47xx_nvram_get_contents = external dso_local constant [0 x i8], align 1
@__kstrtabns_bcm47xx_nvram_get_contents = external dso_local constant [0 x i8], align 1
@__ksymtab_bcm47xx_nvram_get_contents = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @bcm47xx_nvram_get_contents to i32), ptr @__kstrtab_bcm47xx_nvram_get_contents, ptr @__kstrtabns_bcm47xx_nvram_get_contents }, section "___ksymtab+bcm47xx_nvram_get_contents", align 4
@__UNIQUE_ID_file172 = internal constant [59 x i8] c"bcm47xx_nvram.file=drivers/firmware/broadcom/bcm47xx_nvram\00", section ".modinfo", align 1
@__UNIQUE_ID_license173 = internal constant [29 x i8] c"bcm47xx_nvram.license=GPL v2\00", section ".modinfo", align 1
@bcm47xx_nvram_find_and_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 79, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014nvram already initialized\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"bcm47xx_nvram_find_and_copy\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/firmware/broadcom/bcm47xx_nvram.c\00", [54 x i8] zeroinitializer }, align 32
@bcm47xx_nvram_find_and_copy._entry_ptr = internal global ptr @bcm47xx_nvram_find_and_copy._entry, section ".printk_index", align 4
@bcm47xx_nvram_find_and_copy._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\013no nvram found\0A\00", [46 x i8] zeroinitializer }, align 32
@bcm47xx_nvram_find_and_copy._entry_ptr.7 = internal global ptr @bcm47xx_nvram_find_and_copy._entry.5, section ".printk_index", align 4
@bcm47xx_nvram_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 55, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\013The nvram size according to the header seems to be bigger than the partition on flash\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm47xx_nvram_copy\00", [45 x i8] zeroinitializer }, align 32
@bcm47xx_nvram_copy._entry_ptr = internal global ptr @bcm47xx_nvram_copy._entry, section ".printk_index", align 4
@bcm47xx_nvram_copy._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.4, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [109 x i8], [51 x i8] } { [109 x i8] c"\013nvram on flash (%zu bytes) is bigger than the reserved space in memory, will just copy the first %i bytes\0A\00", [51 x i8] zeroinitializer }, align 32
@bcm47xx_nvram_copy._entry_ptr.12 = internal global ptr @bcm47xx_nvram_copy._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nvram\00", [26 x i8] zeroinitializer }, align 32
@nvram_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.14, ptr @.str.4, i32 154, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nvram_init\00", [21 x i8] zeroinitializer }, align 32
@nvram_init._entry_ptr = internal global ptr @nvram_init._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"nvram_len\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 34, i32 15 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"nvram_buf\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 33, i32 13 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 191, i32 34 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 206, i32 48 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 79, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 104, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 55, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 59, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 144, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [45 x i8] c"../drivers/firmware/broadcom/bcm47xx_nvram.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 153, i32 4 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_file172, ptr @__UNIQUE_ID_license173, ptr @__ksymtab_bcm47xx_nvram_get_contents, ptr @__ksymtab_bcm47xx_nvram_getenv, ptr @__ksymtab_bcm47xx_nvram_gpio_pin, ptr @bcm47xx_nvram_copy._entry, ptr @bcm47xx_nvram_copy._entry.10, ptr @bcm47xx_nvram_copy._entry_ptr, ptr @bcm47xx_nvram_copy._entry_ptr.12, ptr @bcm47xx_nvram_find_and_copy._entry, ptr @bcm47xx_nvram_find_and_copy._entry.5, ptr @bcm47xx_nvram_find_and_copy._entry_ptr, ptr @bcm47xx_nvram_find_and_copy._entry_ptr.7, ptr @nvram_init._entry, ptr @nvram_init._entry_ptr, ptr @nvram_len, ptr @nvram_buf, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_buf to i32), i32 65536, i32 81920, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_nvram_find_and_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_nvram_find_and_copy._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_nvram_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm47xx_nvram_copy._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 109, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvram_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_init_from_mem(i32 noundef %base, i32 noundef %lim) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef %base, i32 noundef %lim) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @nvram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %do.end.i

for.cond.preheader.i:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 131072, i32 %lim)
  %cmp.not42.i = icmp ult i32 %lim, 131072
  br i1 %cmp.not42.i, label %for.cond.preheader.i.for.end8.i_crit_edge, label %for.cond.preheader.i.for.cond1.preheader.i_crit_edge

for.cond.preheader.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  br label %for.cond1.preheader.i

for.cond.preheader.i.for.end8.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end8.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #10
  br label %bcm47xx_nvram_find_and_copy.exit

for.cond1.preheader.i:                            ; preds = %for.cond1.3.i.for.cond1.preheader.i_crit_edge, %for.cond.preheader.i.for.cond1.preheader.i_crit_edge
  %flash_size.043.i = phi i32 [ %shl.i, %for.cond1.3.i.for.cond1.preheader.i_crit_edge ], [ 131072, %for.cond.preheader.i.for.cond1.preheader.i_crit_edge ]
  %sub.i = add i32 %flash_size.043.i, -24576
  %add.ptr.i = getelementptr i8, ptr %call, i32 %sub.i
  %1 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %2)
  %cmp.i.i = icmp eq i32 %2, 1213418566
  br i1 %cmp.i.i, label %for.cond1.preheader.i.found.i_crit_edge, label %for.cond1.i

for.cond1.preheader.i.found.i_crit_edge:          ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

for.cond1.i:                                      ; preds = %for.cond1.preheader.i
  %sub.1.i = add i32 %flash_size.043.i, -32768
  %add.ptr.1.i = getelementptr i8, ptr %call, i32 %sub.1.i
  %3 = ptrtoint ptr %add.ptr.1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %4)
  %cmp.i.1.i = icmp eq i32 %4, 1213418566
  br i1 %cmp.i.1.i, label %for.cond1.i.found.i_crit_edge, label %for.cond1.1.i

for.cond1.i.found.i_crit_edge:                    ; preds = %for.cond1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

for.cond1.1.i:                                    ; preds = %for.cond1.i
  %sub.2.i = add i32 %flash_size.043.i, -61440
  %add.ptr.2.i = getelementptr i8, ptr %call, i32 %sub.2.i
  %5 = ptrtoint ptr %add.ptr.2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %6)
  %cmp.i.2.i = icmp eq i32 %6, 1213418566
  br i1 %cmp.i.2.i, label %for.cond1.1.i.found.i_crit_edge, label %for.cond1.2.i

for.cond1.1.i.found.i_crit_edge:                  ; preds = %for.cond1.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

for.cond1.2.i:                                    ; preds = %for.cond1.1.i
  %sub.3.i = add i32 %flash_size.043.i, -65536
  %add.ptr.3.i = getelementptr i8, ptr %call, i32 %sub.3.i
  %7 = ptrtoint ptr %add.ptr.3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %8)
  %cmp.i.3.i = icmp eq i32 %8, 1213418566
  br i1 %cmp.i.3.i, label %for.cond1.2.i.found.i_crit_edge, label %for.cond1.3.i

for.cond1.2.i.found.i_crit_edge:                  ; preds = %for.cond1.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

for.cond1.3.i:                                    ; preds = %for.cond1.2.i
  %shl.i = shl i32 %flash_size.043.i, 1
  %cmp.not.i = icmp ugt i32 %shl.i, %lim
  br i1 %cmp.not.i, label %for.cond1.3.i.for.end8.i_crit_edge, label %for.cond1.3.i.for.cond1.preheader.i_crit_edge

for.cond1.3.i.for.cond1.preheader.i_crit_edge:    ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond1.preheader.i

for.cond1.3.i.for.end8.i_crit_edge:               ; preds = %for.cond1.3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end8.i

for.end8.i:                                       ; preds = %for.cond1.3.i.for.end8.i_crit_edge, %for.cond.preheader.i.for.end8.i_crit_edge
  %add.ptr9.i = getelementptr i8, ptr %call, i32 4096
  %9 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr9.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %10)
  %cmp.i38.i = icmp eq i32 %10, 1213418566
  br i1 %cmp.i38.i, label %for.end8.i.found.i_crit_edge, label %if.end12.i

for.end8.i.found.i_crit_edge:                     ; preds = %for.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

if.end12.i:                                       ; preds = %for.end8.i
  %add.ptr13.i = getelementptr i8, ptr %call, i32 1024
  %11 = ptrtoint ptr %add.ptr13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %12)
  %cmp.i39.i = icmp eq i32 %12, 1213418566
  br i1 %cmp.i39.i, label %if.end12.i.found.i_crit_edge, label %do.end19.i

if.end12.i.found.i_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %found.i

do.end19.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #9
  %call21.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %bcm47xx_nvram_find_and_copy.exit

found.i:                                          ; preds = %if.end12.i.found.i_crit_edge, %for.end8.i.found.i_crit_edge, %for.cond1.2.i.found.i_crit_edge, %for.cond1.1.i.found.i_crit_edge, %for.cond1.i.found.i_crit_edge, %for.cond1.preheader.i.found.i_crit_edge
  %offset.0.i = phi i32 [ 4096, %for.end8.i.found.i_crit_edge ], [ 1024, %if.end12.i.found.i_crit_edge ], [ %sub.i, %for.cond1.preheader.i.found.i_crit_edge ], [ %sub.1.i, %for.cond1.i.found.i_crit_edge ], [ %sub.2.i, %for.cond1.1.i.found.i_crit_edge ], [ %sub.3.i, %for.cond1.2.i.found.i_crit_edge ]
  %add.ptr22.i = getelementptr i8, ptr %call, i32 %offset.0.i
  %sub23.i = sub i32 %lim, %offset.0.i
  %len.i.i = getelementptr inbounds %struct.nvram_header, ptr %add.ptr22.i, i32 0, i32 1
  %13 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %sub23.i)
  %cmp.i40.i = icmp ugt i32 %14, %sub23.i
  br i1 %cmp.i40.i, label %do.end.i.i, label %found.i.if.end.i.i_crit_edge

found.i.if.end.i.i_crit_edge:                     ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %found.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %found.i.if.end.i.i_crit_edge
  %copy_size.0.i.i = phi i32 [ %sub23.i, %do.end.i.i ], [ %14, %found.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %copy_size.0.i.i)
  %cmp1.i.i = icmp ugt i32 %copy_size.0.i.i, 65535
  br i1 %cmp1.i.i, label %do.end5.i.i, label %if.end.i.i.bcm47xx_nvram_copy.exit.i_crit_edge

if.end.i.i.bcm47xx_nvram_copy.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bcm47xx_nvram_copy.exit.i

do.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call7.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %copy_size.0.i.i, i32 noundef 65535) #10
  br label %bcm47xx_nvram_copy.exit.i

bcm47xx_nvram_copy.exit.i:                        ; preds = %do.end5.i.i, %if.end.i.i.bcm47xx_nvram_copy.exit.i_crit_edge
  %copy_size.1.i.i = phi i32 [ 65535, %do.end5.i.i ], [ %copy_size.0.i.i, %if.end.i.i.bcm47xx_nvram_copy.exit.i_crit_edge ]
  %sub.i.i = add nuw nsw i32 %copy_size.1.i.i, 3
  %div15.i.i = lshr i32 %sub.i.i, 2
  tail call void @__ioread32_copy(ptr noundef nonnull @nvram_buf, ptr noundef %add.ptr22.i, i32 noundef %div15.i.i) #7
  store i8 0, ptr getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 65535), align 1
  store i32 %copy_size.1.i.i, ptr @nvram_len, align 4
  br label %bcm47xx_nvram_find_and_copy.exit

bcm47xx_nvram_find_and_copy.exit:                 ; preds = %bcm47xx_nvram_copy.exit.i, %do.end19.i, %do.end.i
  %retval.0.i = phi i32 [ -17, %do.end.i ], [ 0, %bcm47xx_nvram_copy.exit.i ], [ -6, %do.end19.i ]
  tail call void @iounmap(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %bcm47xx_nvram_find_and_copy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %bcm47xx_nvram_find_and_copy.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_getenv(ptr noundef readonly %name, ptr nocapture noundef writeonly %val, i32 noundef %val_len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %name, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr @nvram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool1.not = icmp eq i32 %0, 0
  br i1 %tobool1.not, label %if.then2, label %if.end.land.rhs.preheader_crit_edge

if.end.land.rhs.preheader_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

if.then2:                                         ; preds = %if.end
  %call = tail call fastcc i32 @nvram_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %if.then2.land.rhs.preheader_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then2.land.rhs.preheader_crit_edge:            ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.preheader

land.rhs.preheader:                               ; preds = %if.then2.land.rhs.preheader_crit_edge, %if.end.land.rhs.preheader_crit_edge
  br label %land.rhs

land.rhs:                                         ; preds = %if.end23.land.rhs_crit_edge, %land.rhs.preheader
  %var.044 = phi ptr [ %add.ptr26, %if.end23.land.rhs_crit_edge ], [ getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 20), %land.rhs.preheader ]
  %1 = ptrtoint ptr %var.044 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %var.044, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %land.rhs.cleanup_crit_edge, label %while.body

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %land.rhs
  %call8 = tail call ptr @strchr(ptr noundef %var.044, i32 noundef 61)
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %while.body.cleanup_crit_edge, label %if.end11

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %call8, i32 1
  %sub.ptr.lhs.cast = ptrtoint ptr %call8 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %var.044 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call12 = tail call i32 @strlen(ptr noundef nonnull %name) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub, i32 %call12)
  %cmp13 = icmp eq i32 %sub.ptr.sub, %call12
  br i1 %cmp13, label %land.lhs.true, label %if.end11.if.end23_crit_edge

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

land.lhs.true:                                    ; preds = %if.end11
  %call18 = tail call i32 @strncmp(ptr noundef %var.044, ptr noundef nonnull %name, i32 noundef %sub.ptr.sub)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp eq i32 %call18, 0
  br i1 %cmp19, label %if.then21, label %land.lhs.true.if.end23_crit_edge

land.lhs.true.if.end23_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %val, i32 noundef %val_len, ptr noundef nonnull @.str, ptr noundef %add.ptr)
  br label %cleanup

if.end23:                                         ; preds = %land.lhs.true.if.end23_crit_edge, %if.end11.if.end23_crit_edge
  %call24 = tail call i32 @strlen(ptr noundef %add.ptr) #11
  %add.ptr25 = getelementptr i8, ptr %call8, i32 2
  %add.ptr26 = getelementptr i8, ptr %add.ptr25, i32 %call24
  %cmp = icmp ult ptr %add.ptr26, getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 1, i32 0)
  br i1 %cmp, label %if.end23.land.rhs_crit_edge, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23.land.rhs_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %if.then21, %while.body.cleanup_crit_edge, %land.rhs.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then21 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.then2.cleanup_crit_edge ], [ -2, %if.end23.cleanup_crit_edge ], [ -2, %while.body.cleanup_crit_edge ], [ -2, %land.rhs.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nvram_init() unnamed_addr #0 align 64 {
entry:
  %header = alloca %struct.nvram_header, align 4
  %bytes_read = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %header) #7
  %0 = getelementptr inbounds %struct.nvram_header, ptr %header, i32 0, i32 1
  %1 = call ptr @memset(ptr %header, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bytes_read) #7
  %2 = ptrtoint ptr %bytes_read to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %bytes_read, align 4, !annotation !53
  %call = tail call ptr @get_mtd_device_nm(ptr noundef nonnull @.str.13) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @mtd_read(ptr noundef %call, i64 noundef 0, i32 noundef 20, ptr noundef nonnull %bytes_read, ptr noundef nonnull %header) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %3 = ptrtoint ptr %header to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %header, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1213418566, i32 %4)
  %cmp = icmp eq i32 %4, 1213418566
  br i1 %cmp, label %land.lhs.true3, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true3:                                   ; preds = %land.lhs.true
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %6)
  %cmp4 = icmp ugt i32 %6, 20
  br i1 %cmp4, label %if.then5, label %land.lhs.true3.cleanup_crit_edge

land.lhs.true3.cleanup_crit_edge:                 ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true3
  store i32 %6, ptr @nvram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %6)
  %cmp7 = icmp ugt i32 %6, 65535
  br i1 %cmp7, label %do.end, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end:                                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %6, i32 noundef 65536) #10
  store i32 65535, ptr @nvram_len, align 4
  br label %if.end10

if.end10:                                         ; preds = %do.end, %if.then5.if.end10_crit_edge
  %7 = load i32, ptr @nvram_len, align 4
  %call11 = call i32 @mtd_read(ptr noundef %call, i64 noundef 0, i32 noundef %7, ptr noundef nonnull @nvram_len, ptr noundef nonnull @nvram_buf) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true3.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call11, %if.end10 ], [ -19, %entry.cleanup_crit_edge ], [ -6, %land.lhs.true3.cleanup_crit_edge ], [ -6, %land.lhs.true.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bytes_read) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %header) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @bcm47xx_nvram_gpio_pin(ptr nocapture noundef readonly %name) #0 align 64 {
entry:
  %nvram_var = alloca [7 x i8], align 1
  %buf = alloca [30 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 7, ptr nonnull %nvram_var) #7
  %0 = call ptr @memcpy(ptr %nvram_var, ptr @__const.bcm47xx_nvram_gpio_pin.nvram_var, i32 7)
  call void @llvm.lifetime.start.p0(i64 30, ptr nonnull %buf) #7
  %1 = call ptr @memset(ptr %buf, i32 255, i32 30)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.019 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %nvram_var, i32 noundef 7, ptr noundef nonnull @.str.1, i32 noundef %i.019)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp1 = icmp slt i32 %call, 1
  br i1 %cmp1, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call4 = call i32 @bcm47xx_nvram_getenv(ptr noundef nonnull %nvram_var, ptr noundef nonnull %buf, i32 noundef 30)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 1
  br i1 %cmp5, label %if.end.for.inc_crit_edge, label %if.end7

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7:                                          ; preds = %if.end
  %call9 = call i32 @strcmp(ptr noundef %name, ptr noundef nonnull %buf) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end7.cleanup_crit_edge, label %if.end7.for.inc_crit_edge

if.end7.for.inc_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc:                                          ; preds = %if.end7.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.019, %if.end7.cleanup_crit_edge ], [ -2, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 30, ptr nonnull %buf) #7
  call void @llvm.lifetime.end.p0(i64 7, ptr nonnull %nvram_var) #7
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @bcm47xx_nvram_get_contents(ptr nocapture noundef %nvram_size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @nvram_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @nvram_init()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end3_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %1 = load i32, ptr @nvram_len, align 4
  %sub = add i32 %1, -20
  %2 = ptrtoint ptr %nvram_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %sub, ptr %nvram_size, align 4
  %call4 = tail call noalias ptr @vmalloc(i32 noundef %sub) #12
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %nvram_size to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nvram_size, align 4
  %5 = call ptr @memcpy(ptr %call4, ptr getelementptr inbounds ([65536 x i8], ptr @nvram_buf, i32 0, i32 20), i32 %4)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end3.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %call4, %if.end7 ], [ null, %if.then.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ioread32_copy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_mtd_device_nm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtd_read(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !34, !36, !37, !38, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 191, i32 34}
!2 = !{ptr @__ksymtab_bcm47xx_nvram_getenv, !3, !"__ksymtab_bcm47xx_nvram_getenv", i1 false, i1 false}
!3 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 196, i32 1}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 206, i32 48}
!6 = !{ptr @__ksymtab_bcm47xx_nvram_gpio_pin, !7, !"__ksymtab_bcm47xx_nvram_gpio_pin", i1 false, i1 false}
!7 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 217, i32 1}
!8 = !{ptr @__ksymtab_bcm47xx_nvram_get_contents, !9, !"__ksymtab_bcm47xx_nvram_get_contents", i1 false, i1 false}
!9 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 238, i32 1}
!10 = !{ptr @__UNIQUE_ID_file172, !11, !"__UNIQUE_ID_file172", i1 false, i1 false}
!11 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 240, i32 1}
!12 = !{ptr @__UNIQUE_ID_license173, !11, !"__UNIQUE_ID_license173", i1 false, i1 false}
!13 = !{ptr @nvram_buf, !14, !"nvram_buf", i1 false, i1 false}
!14 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 33, i32 13}
!15 = !{ptr @nvram_len, !16, !"nvram_len", i1 false, i1 false}
!16 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 34, i32 15}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 79, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @bcm47xx_nvram_find_and_copy._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @bcm47xx_nvram_find_and_copy._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 104, i32 2}
!25 = !{ptr @bcm47xx_nvram_find_and_copy._entry.5, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @bcm47xx_nvram_find_and_copy._entry_ptr.7, !24, !"_entry_ptr", i1 false, i1 false}
!27 = distinct !{null, !28, !"nvram_sizes", i1 false, i1 false}
!28 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 35, i32 18}
!29 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 55, i32 3}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bcm47xx_nvram_copy._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm47xx_nvram_copy._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 59, i32 3}
!36 = !{ptr @bcm47xx_nvram_copy._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @bcm47xx_nvram_copy._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 144, i32 26}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/firmware/broadcom/bcm47xx_nvram.c", i32 153, i32 4}
!42 = !{ptr @nvram_init._entry, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @nvram_init._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
