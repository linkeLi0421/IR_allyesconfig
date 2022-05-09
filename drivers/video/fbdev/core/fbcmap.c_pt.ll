; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/core/fbcmap.c_pt.bc'
source_filename = "../drivers/video/fbdev/core/fbcmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fb_alloc_cmap\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_alloc_cmap\09\09\09\09"
module asm "\09.long\09__crc_fb_alloc_cmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_alloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_alloc_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_alloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_dealloc_cmap\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_dealloc_cmap\09\09\09\09"
module asm "\09.long\09__crc_fb_dealloc_cmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_dealloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_dealloc_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_dealloc_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_copy_cmap\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_copy_cmap\09\09\09\09"
module asm "\09.long\09__crc_fb_copy_cmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_copy_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_copy_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_copy_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_set_cmap\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_set_cmap\09\09\09\09"
module asm "\09.long\09__crc_fb_set_cmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_set_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_set_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_set_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_default_cmap\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_default_cmap\09\09\09\09"
module asm "\09.long\09__crc_fb_default_cmap\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_default_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_default_cmap\22\09\09\09\09\09"
module asm "__kstrtabns_fb_default_cmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fb_invert_cmaps\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_invert_cmaps\09\09\09\09"
module asm "\09.long\09__crc_fb_invert_cmaps\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_invert_cmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_invert_cmaps\22\09\09\09\09\09"
module asm "__kstrtabns_fb_invert_cmaps:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.fb_cmap_user = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }
%struct.fb_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@default_2_colors = internal constant { %struct.fb_cmap, [40 x i8] } { %struct.fb_cmap { i32 0, i32 2, ptr @red2, ptr @green2, ptr @blue2, ptr null }, [40 x i8] zeroinitializer }, align 32
@default_4_colors = internal constant { %struct.fb_cmap, [40 x i8] } { %struct.fb_cmap { i32 0, i32 4, ptr @red4, ptr @green4, ptr @blue4, ptr null }, [40 x i8] zeroinitializer }, align 32
@default_8_colors = internal constant { %struct.fb_cmap, [40 x i8] } { %struct.fb_cmap { i32 0, i32 8, ptr @red8, ptr @green8, ptr @blue8, ptr null }, [40 x i8] zeroinitializer }, align 32
@default_16_colors = internal constant { %struct.fb_cmap, [40 x i8] } { %struct.fb_cmap { i32 0, i32 16, ptr @red16, ptr @green16, ptr @blue16, ptr null }, [40 x i8] zeroinitializer }, align 32
@red2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@green2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@blue2 = internal global [2 x i16] [i16 0, i16 -21846], section ".data..read_mostly", align 2
@red4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@green4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@blue4 = internal global [4 x i16] [i16 0, i16 -21846, i16 21845, i16 -1], section ".data..read_mostly", align 2
@red8 = internal global [8 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846], section ".data..read_mostly", align 2
@green8 = internal global [8 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846], section ".data..read_mostly", align 2
@blue8 = internal global [8 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846], section ".data..read_mostly", align 2
@red16 = internal global [16 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -21846, i16 -21846, i16 -21846, i16 -21846, i16 21845, i16 21845, i16 21845, i16 21845, i16 -1, i16 -1, i16 -1, i16 -1], section ".data..read_mostly", align 2
@green16 = internal global [16 x i16] [i16 0, i16 0, i16 -21846, i16 -21846, i16 0, i16 0, i16 21845, i16 -21846, i16 21845, i16 21845, i16 -1, i16 -1, i16 21845, i16 21845, i16 -1, i16 -1], section ".data..read_mostly", align 2
@blue16 = internal global [16 x i16] [i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 0, i16 -21846, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1, i16 21845, i16 -1], section ".data..read_mostly", align 2
@__kstrtab_fb_alloc_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_alloc_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_alloc_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_alloc_cmap to i32), ptr @__kstrtab_fb_alloc_cmap, ptr @__kstrtabns_fb_alloc_cmap }, section "___ksymtab+fb_alloc_cmap", align 4
@__kstrtab_fb_dealloc_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_dealloc_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_dealloc_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_dealloc_cmap to i32), ptr @__kstrtab_fb_dealloc_cmap, ptr @__kstrtabns_fb_dealloc_cmap }, section "___ksymtab+fb_dealloc_cmap", align 4
@__kstrtab_fb_copy_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_copy_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_copy_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_copy_cmap to i32), ptr @__kstrtab_fb_copy_cmap, ptr @__kstrtabns_fb_copy_cmap }, section "___ksymtab+fb_copy_cmap", align 4
@__kstrtab_fb_set_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_set_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_set_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_set_cmap to i32), ptr @__kstrtab_fb_set_cmap, ptr @__kstrtabns_fb_set_cmap }, section "___ksymtab+fb_set_cmap", align 4
@__kstrtab_fb_default_cmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_default_cmap = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_default_cmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_default_cmap to i32), ptr @__kstrtab_fb_default_cmap, ptr @__kstrtabns_fb_default_cmap }, section "___ksymtab+fb_default_cmap", align 4
@__kstrtab_fb_invert_cmaps = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_invert_cmaps = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_invert_cmaps = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_invert_cmaps to i32), ptr @__kstrtab_fb_invert_cmaps, ptr @__kstrtabns_fb_invert_cmaps }, section "___ksymtab+fb_invert_cmaps", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@___asan_gen_.3 = private unnamed_addr constant [17 x i8] c"default_2_colors\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 63, i32 29 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"default_4_colors\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 69, i32 29 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"default_8_colors\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 66, i32 29 }
@___asan_gen_.12 = private unnamed_addr constant [18 x i8] c"default_16_colors\00", align 1
@___asan_gen_.13 = private constant [37 x i8] c"../drivers/video/fbdev/core/fbcmap.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 72, i32 29 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 230, i32 6 }
@___asan_gen_.19 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 214, i32 2 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 174, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__ksymtab_fb_alloc_cmap, ptr @__ksymtab_fb_copy_cmap, ptr @__ksymtab_fb_dealloc_cmap, ptr @__ksymtab_fb_default_cmap, ptr @__ksymtab_fb_invert_cmaps, ptr @__ksymtab_fb_set_cmap, ptr @default_2_colors, ptr @default_4_colors, ptr @default_8_colors, ptr @default_16_colors, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_2_colors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_4_colors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_8_colors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_16_colors to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_alloc_cmap_gfp(ptr noundef %cmap, i32 noundef %len, i32 noundef %transp, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = shl i32 %len, 1
  %len1 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %0 = ptrtoint ptr %len1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %len)
  %cmp.not = icmp eq i32 %1, %len
  br i1 %cmp.not, label %entry.if.end27_crit_edge, label %if.then

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then:                                          ; preds = %entry
  %red.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %2 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %red.i, align 4
  tail call void @kfree(ptr noundef %3) #9
  %green.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %4 = ptrtoint ptr %green.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %green.i, align 4
  tail call void @kfree(ptr noundef %5) #9
  %blue.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %6 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %blue.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %transp.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 5
  %8 = ptrtoint ptr %transp.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transp.i, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = call ptr @memset(ptr %len1, i32 0, i32 20)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %if.then
  %or.i = or i32 %flags, 8448
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #12
  %11 = ptrtoint ptr %red.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %red.i, align 4
  %tobool4.not199 = icmp eq ptr %call9.i.i, null
  br i1 %tobool4.not199, label %if.end.fail_crit_edge, label %kzalloc.exit101.thread205

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

kzalloc.exit101.thread205:                        ; preds = %if.end
  %call9.i.i98 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #12
  %12 = ptrtoint ptr %green.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call9.i.i98, ptr %green.i, align 4
  %tobool9.not207 = icmp eq ptr %call9.i.i98, null
  br i1 %tobool9.not207, label %kzalloc.exit101.thread205.fail_crit_edge, label %if.end8.i.i140

kzalloc.exit101.thread205.fail_crit_edge:         ; preds = %kzalloc.exit101.thread205
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end8.i.i140:                                   ; preds = %kzalloc.exit101.thread205
  %call9.i.i139 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #12
  %13 = ptrtoint ptr %blue.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call9.i.i139, ptr %blue.i, align 4
  %tobool14.not = icmp eq ptr %call9.i.i139, null
  br i1 %tobool14.not, label %if.end8.i.i140.fail_crit_edge, label %if.end16

if.end8.i.i140.fail_crit_edge:                    ; preds = %if.end8.i.i140
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end16:                                         ; preds = %if.end8.i.i140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transp)
  %tobool17.not = icmp eq i32 %transp, 0
  br i1 %tobool17.not, label %if.end27.sink.split, label %if.end8.i.i181

if.end8.i.i181:                                   ; preds = %if.end16
  %call9.i.i180 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef %or.i) #12
  %14 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call9.i.i180, ptr %transp.i, align 4
  %tobool22.not = icmp eq ptr %call9.i.i180, null
  br i1 %tobool22.not, label %if.end8.i.i181.fail_crit_edge, label %if.end8.i.i181.if.end27_crit_edge

if.end8.i.i181.if.end27_crit_edge:                ; preds = %if.end8.i.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end8.i.i181.fail_crit_edge:                    ; preds = %if.end8.i.i181
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end27.sink.split:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %transp.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %transp.i, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.end27.sink.split, %if.end8.i.i181.if.end27_crit_edge, %entry.if.end27_crit_edge
  %16 = ptrtoint ptr %cmap to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %cmap, align 4
  %17 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp.i = icmp slt i32 %len, 3
  br i1 %cmp.i, label %if.end27.fb_default_cmap.exit_crit_edge, label %if.end.i

if.end27.fb_default_cmap.exit_crit_edge:          ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %fb_default_cmap.exit

if.end.i:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp1.i = icmp ult i32 %len, 5
  br i1 %cmp1.i, label %if.end.i.fb_default_cmap.exit_crit_edge, label %if.end3.i

if.end.i.fb_default_cmap.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fb_default_cmap.exit

if.end3.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp4.i = icmp ult i32 %len, 9
  %default_8_colors.default_16_colors.i = select i1 %cmp4.i, ptr @default_8_colors, ptr @default_16_colors
  br label %fb_default_cmap.exit

fb_default_cmap.exit:                             ; preds = %if.end3.i, %if.end.i.fb_default_cmap.exit_crit_edge, %if.end27.fb_default_cmap.exit_crit_edge
  %retval.0.i = phi ptr [ @default_2_colors, %if.end27.fb_default_cmap.exit_crit_edge ], [ @default_4_colors, %if.end.i.fb_default_cmap.exit_crit_edge ], [ %default_8_colors.default_16_colors.i, %if.end3.i ]
  %18 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %retval.0.i, align 4
  %len.i184 = getelementptr inbounds %struct.fb_cmap, ptr %retval.0.i, i32 0, i32 1
  %20 = ptrtoint ptr %len.i184 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i184, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp7.not.i = icmp ne i32 %21, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %len)
  %cmp9.not.i = icmp ult i32 %19, %len
  %or.cond = select i1 %cmp7.not.i, i1 %cmp9.not.i, i1 false
  br i1 %or.cond, label %if.end11.i, label %fb_default_cmap.exit.fail_crit_edge

fb_default_cmap.exit.fail_crit_edge:              ; preds = %fb_default_cmap.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end11.i:                                       ; preds = %fb_default_cmap.exit
  %sub13.i = sub i32 %len, %19
  %22 = tail call i32 @llvm.umin.i32(i32 %sub13.i, i32 %21) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp17.i = icmp eq i32 %22, 0
  br i1 %cmp17.i, label %if.end11.i.fail_crit_edge, label %if.end19.i

if.end11.i.fail_crit_edge:                        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail

if.end19.i:                                       ; preds = %if.end11.i
  %mul.i = shl i32 %22, 1
  %red.i185 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %23 = ptrtoint ptr %red.i185 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %red.i185, align 4
  %add.ptr.i = getelementptr i16, ptr %24, i32 %19
  %red20.i = getelementptr inbounds %struct.fb_cmap, ptr %retval.0.i, i32 0, i32 2
  %25 = ptrtoint ptr %red20.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %red20.i, align 4
  %27 = call ptr @memcpy(ptr %add.ptr.i, ptr %26, i32 %mul.i)
  %green.i186 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %28 = ptrtoint ptr %green.i186 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %green.i186, align 4
  %add.ptr22.i = getelementptr i16, ptr %29, i32 %19
  %green23.i = getelementptr inbounds %struct.fb_cmap, ptr %retval.0.i, i32 0, i32 3
  %30 = ptrtoint ptr %green23.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %green23.i, align 4
  %32 = call ptr @memcpy(ptr %add.ptr22.i, ptr %31, i32 %mul.i)
  %blue.i187 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %33 = ptrtoint ptr %blue.i187 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %blue.i187, align 4
  %add.ptr25.i = getelementptr i16, ptr %34, i32 %19
  %blue26.i = getelementptr inbounds %struct.fb_cmap, ptr %retval.0.i, i32 0, i32 4
  %35 = ptrtoint ptr %blue26.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %blue26.i, align 4
  %37 = call ptr @memcpy(ptr %add.ptr25.i, ptr %36, i32 %mul.i)
  %transp.i188 = getelementptr inbounds %struct.fb_cmap, ptr %retval.0.i, i32 0, i32 5
  %38 = ptrtoint ptr %transp.i188 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %transp.i188, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end19.i.cleanup_crit_edge, label %land.lhs.true.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end19.i
  %transp28.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 5
  %40 = ptrtoint ptr %transp28.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %transp28.i, align 4
  %tobool29.not.i = icmp eq ptr %41, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then30.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32.i = getelementptr i16, ptr %41, i32 %19
  %42 = call ptr @memcpy(ptr %add.ptr32.i, ptr %39, i32 %mul.i)
  br label %cleanup

fail:                                             ; preds = %if.end11.i.fail_crit_edge, %fb_default_cmap.exit.fail_crit_edge, %if.end8.i.i181.fail_crit_edge, %if.end8.i.i140.fail_crit_edge, %kzalloc.exit101.thread205.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ -12, %if.end8.i.i181.fail_crit_edge ], [ -12, %if.end8.i.i140.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ], [ -12, %kzalloc.exit101.thread205.fail_crit_edge ], [ -22, %fb_default_cmap.exit.fail_crit_edge ], [ -22, %if.end11.i.fail_crit_edge ]
  %red.i190 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %43 = ptrtoint ptr %red.i190 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %red.i190, align 4
  tail call void @kfree(ptr noundef %44) #9
  %green.i191 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %45 = ptrtoint ptr %green.i191 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %green.i191, align 4
  tail call void @kfree(ptr noundef %46) #9
  %blue.i192 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %47 = ptrtoint ptr %blue.i192 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %blue.i192, align 4
  tail call void @kfree(ptr noundef %48) #9
  %transp.i193 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 5
  %49 = ptrtoint ptr %transp.i193 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %transp.i193, align 4
  tail call void @kfree(ptr noundef %50) #9
  %51 = call ptr @memset(ptr %len1, i32 0, i32 20)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.then30.i, %land.lhs.true.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.then30.i ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_dealloc_cmap(ptr nocapture noundef %cmap) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %red = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %0 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %red, align 4
  tail call void @kfree(ptr noundef %1) #9
  %green = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %2 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %green, align 4
  tail call void @kfree(ptr noundef %3) #9
  %blue = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %4 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blue, align 4
  tail call void @kfree(ptr noundef %5) #9
  %transp = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 5
  %6 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transp, align 4
  tail call void @kfree(ptr noundef %7) #9
  %len = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %8 = call ptr @memset(ptr %len, i32 0, i32 20)
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @fb_copy_cmap(ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %to, align 4
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from, align 4
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %1)
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %3)
  %len = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7.not = icmp ugt i32 %7, %5
  br i1 %cmp7.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len8 = getelementptr inbounds %struct.fb_cmap, ptr %to, i32 0, i32 1
  %8 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp9.not = icmp ugt i32 %9, %4
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %sub13 = sub i32 %9, %4
  %sub15 = sub i32 %7, %5
  %10 = tail call i32 @llvm.umin.i32(i32 %sub13, i32 %sub15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17 = icmp eq i32 %10, 0
  br i1 %cmp17, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %mul = shl i32 %10, 1
  %red = getelementptr inbounds %struct.fb_cmap, ptr %to, i32 0, i32 2
  %11 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %red, align 4
  %add.ptr = getelementptr i16, ptr %12, i32 %4
  %red20 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 2
  %13 = ptrtoint ptr %red20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %red20, align 4
  %add.ptr21 = getelementptr i16, ptr %14, i32 %5
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr21, i32 %mul)
  %green = getelementptr inbounds %struct.fb_cmap, ptr %to, i32 0, i32 3
  %16 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %green, align 4
  %add.ptr22 = getelementptr i16, ptr %17, i32 %4
  %green23 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 3
  %18 = ptrtoint ptr %green23 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %green23, align 4
  %add.ptr24 = getelementptr i16, ptr %19, i32 %5
  %20 = call ptr @memcpy(ptr %add.ptr22, ptr %add.ptr24, i32 %mul)
  %blue = getelementptr inbounds %struct.fb_cmap, ptr %to, i32 0, i32 4
  %21 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blue, align 4
  %add.ptr25 = getelementptr i16, ptr %22, i32 %4
  %blue26 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 4
  %23 = ptrtoint ptr %blue26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blue26, align 4
  %add.ptr27 = getelementptr i16, ptr %24, i32 %5
  %25 = call ptr @memcpy(ptr %add.ptr25, ptr %add.ptr27, i32 %mul)
  %transp = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 5
  %26 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transp, align 4
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %if.end19.cleanup_crit_edge, label %land.lhs.true

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end19
  %transp28 = getelementptr inbounds %struct.fb_cmap, ptr %to, i32 0, i32 5
  %28 = ptrtoint ptr %transp28 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transp28, align 4
  %tobool29.not = icmp eq ptr %29, null
  br i1 %tobool29.not, label %land.lhs.true.cleanup_crit_edge, label %if.then30

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32 = getelementptr i16, ptr %29, i32 %4
  %add.ptr34 = getelementptr i16, ptr %27, i32 %5
  %30 = call ptr @memcpy(ptr %add.ptr32, ptr %add.ptr34, i32 %mul)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %land.lhs.true.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ 0, %if.then30 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @fb_default_cmap(i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %len)
  %cmp = icmp slt i32 %len, 3
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp1 = icmp ult i32 %len, 5
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %len)
  %cmp4 = icmp ult i32 %len, 9
  %default_8_colors.default_16_colors = select i1 %cmp4, ptr @default_8_colors, ptr @default_16_colors
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ @default_2_colors, %entry.return_crit_edge ], [ @default_4_colors, %if.end.return_crit_edge ], [ %default_8_colors.default_16_colors, %if.end3 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_alloc_cmap(ptr noundef %cmap, i32 noundef %len, i32 noundef %transp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fb_alloc_cmap_gfp(ptr noundef %cmap, i32 noundef %len, i32 noundef %transp, i32 noundef 2592)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_cmap_to_user(ptr nocapture noundef readonly %from, ptr nocapture noundef readonly %to) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %to to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %to, align 4
  %2 = ptrtoint ptr %from to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %from, align 4
  %4 = tail call i32 @llvm.usub.sat.i32(i32 %3, i32 %1)
  %5 = tail call i32 @llvm.usub.sat.i32(i32 %1, i32 %3)
  %len = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %5)
  %cmp7.not = icmp ugt i32 %7, %5
  br i1 %cmp7.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len8 = getelementptr inbounds %struct.fb_cmap_user, ptr %to, i32 0, i32 1
  %8 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %4)
  %cmp9.not = icmp ugt i32 %9, %4
  br i1 %cmp9.not, label %if.end11, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false
  %sub13 = sub i32 %9, %4
  %sub15 = sub i32 %7, %5
  %10 = tail call i32 @llvm.umin.i32(i32 %sub13, i32 %sub15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp17 = icmp eq i32 %10, 0
  br i1 %cmp17, label %if.end11.cleanup_crit_edge, label %if.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  %mul = shl i32 %10, 1
  %red = getelementptr inbounds %struct.fb_cmap_user, ptr %to, i32 0, i32 2
  %11 = ptrtoint ptr %red to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %red, align 4
  %add.ptr = getelementptr i16, ptr %12, i32 %4
  %red20 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 2
  %13 = ptrtoint ptr %red20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %red20, align 4
  %add.ptr21 = getelementptr i16, ptr %14, i32 %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end19
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !61

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %cleanup

if.then.i.i.i:                                    ; preds = %if.end19
  tail call void @__check_object_size(ptr noundef %add.ptr21, i32 noundef %mul, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %15 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr, i32 %mul, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr21, i32 noundef %mul) #9
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr, ptr noundef %add.ptr21, i32 noundef %mul) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %mul, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %mul, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool.not, label %if.end23, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %copy_to_user.exit
  %green = getelementptr inbounds %struct.fb_cmap_user, ptr %to, i32 0, i32 3
  %16 = ptrtoint ptr %green to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %green, align 4
  %add.ptr24 = getelementptr i16, ptr %17, i32 %4
  %green25 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 3
  %18 = ptrtoint ptr %green25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %green25, align 4
  %add.ptr26 = getelementptr i16, ptr %19, i32 %5
  tail call void @__check_object_size(ptr noundef %add.ptr26, i32 noundef %mul, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i107 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i107, label %if.end23.copy_to_user.exit116_crit_edge, label %if.end.i.i111

if.end23.copy_to_user.exit116_crit_edge:          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit116

if.end.i.i111:                                    ; preds = %if.end23
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr24, i32 %mul, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i109 = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i109)
  %cmp.i6.i110 = icmp eq i32 %asmresult.i.i109, 0
  br i1 %cmp.i6.i110, label %if.then2.i.i114, label %if.end.i.i111.copy_to_user.exit116_crit_edge

if.end.i.i111.copy_to_user.exit116_crit_edge:     ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit116

if.then2.i.i114:                                  ; preds = %if.end.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i112 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr26, i32 noundef %mul) #9
  %call.i12.i.i113 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr24, ptr noundef %add.ptr26, i32 noundef %mul) #9
  br label %copy_to_user.exit116

copy_to_user.exit116:                             ; preds = %if.then2.i.i114, %if.end.i.i111.copy_to_user.exit116_crit_edge, %if.end23.copy_to_user.exit116_crit_edge
  %n.addr.0.i115 = phi i32 [ %mul, %if.end23.copy_to_user.exit116_crit_edge ], [ %call.i12.i.i113, %if.then2.i.i114 ], [ %mul, %if.end.i.i111.copy_to_user.exit116_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i115)
  %tobool28.not = icmp eq i32 %n.addr.0.i115, 0
  br i1 %tobool28.not, label %if.end30, label %copy_to_user.exit116.cleanup_crit_edge

copy_to_user.exit116.cleanup_crit_edge:           ; preds = %copy_to_user.exit116
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30:                                         ; preds = %copy_to_user.exit116
  %blue = getelementptr inbounds %struct.fb_cmap_user, ptr %to, i32 0, i32 4
  %21 = ptrtoint ptr %blue to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %blue, align 4
  %add.ptr31 = getelementptr i16, ptr %22, i32 %4
  %blue32 = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 4
  %23 = ptrtoint ptr %blue32 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blue32, align 4
  %add.ptr33 = getelementptr i16, ptr %24, i32 %5
  tail call void @__check_object_size(ptr noundef %add.ptr33, i32 noundef %mul, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i130 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i130, label %if.end30.copy_to_user.exit139_crit_edge, label %if.end.i.i134

if.end30.copy_to_user.exit139_crit_edge:          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit139

if.end.i.i134:                                    ; preds = %if.end30
  %25 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr31, i32 %mul, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i132 = extractvalue { i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i132)
  %cmp.i6.i133 = icmp eq i32 %asmresult.i.i132, 0
  br i1 %cmp.i6.i133, label %if.then2.i.i137, label %if.end.i.i134.copy_to_user.exit139_crit_edge

if.end.i.i134.copy_to_user.exit139_crit_edge:     ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit139

if.then2.i.i137:                                  ; preds = %if.end.i.i134
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i135 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr33, i32 noundef %mul) #9
  %call.i12.i.i136 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr31, ptr noundef %add.ptr33, i32 noundef %mul) #9
  br label %copy_to_user.exit139

copy_to_user.exit139:                             ; preds = %if.then2.i.i137, %if.end.i.i134.copy_to_user.exit139_crit_edge, %if.end30.copy_to_user.exit139_crit_edge
  %n.addr.0.i138 = phi i32 [ %mul, %if.end30.copy_to_user.exit139_crit_edge ], [ %call.i12.i.i136, %if.then2.i.i137 ], [ %mul, %if.end.i.i134.copy_to_user.exit139_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i138)
  %tobool35.not = icmp eq i32 %n.addr.0.i138, 0
  br i1 %tobool35.not, label %if.end37, label %copy_to_user.exit139.cleanup_crit_edge

copy_to_user.exit139.cleanup_crit_edge:           ; preds = %copy_to_user.exit139
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end37:                                         ; preds = %copy_to_user.exit139
  %transp = getelementptr inbounds %struct.fb_cmap, ptr %from, i32 0, i32 5
  %26 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %transp, align 4
  %tobool38.not = icmp eq ptr %27, null
  br i1 %tobool38.not, label %if.end37.if.end50_crit_edge, label %land.lhs.true

if.end37.if.end50_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

land.lhs.true:                                    ; preds = %if.end37
  %transp39 = getelementptr inbounds %struct.fb_cmap_user, ptr %to, i32 0, i32 5
  %28 = ptrtoint ptr %transp39 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %transp39, align 4
  %tobool40.not = icmp eq ptr %29, null
  br i1 %tobool40.not, label %land.lhs.true.if.end50_crit_edge, label %if.then41

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then41:                                        ; preds = %land.lhs.true
  %add.ptr43 = getelementptr i16, ptr %29, i32 %4
  %add.ptr45 = getelementptr i16, ptr %27, i32 %5
  tail call void @__check_object_size(ptr noundef %add.ptr45, i32 noundef %mul, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 174) #9
  %call.i.i153 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i153, label %if.then41.copy_to_user.exit162_crit_edge, label %if.end.i.i157

if.then41.copy_to_user.exit162_crit_edge:         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit162

if.end.i.i157:                                    ; preds = %if.then41
  %30 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr43, i32 %mul, i32 -1226833920) #13, !srcloc !62
  %asmresult.i.i155 = extractvalue { i32, i32 } %30, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i155)
  %cmp.i6.i156 = icmp eq i32 %asmresult.i.i155, 0
  br i1 %cmp.i6.i156, label %if.then2.i.i160, label %if.end.i.i157.copy_to_user.exit162_crit_edge

if.end.i.i157.copy_to_user.exit162_crit_edge:     ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit162

if.then2.i.i160:                                  ; preds = %if.end.i.i157
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i158 = tail call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr45, i32 noundef %mul) #9
  %call.i12.i.i159 = tail call i32 @arm_copy_to_user(ptr noundef %add.ptr43, ptr noundef %add.ptr45, i32 noundef %mul) #9
  br label %copy_to_user.exit162

copy_to_user.exit162:                             ; preds = %if.then2.i.i160, %if.end.i.i157.copy_to_user.exit162_crit_edge, %if.then41.copy_to_user.exit162_crit_edge
  %n.addr.0.i161 = phi i32 [ %mul, %if.then41.copy_to_user.exit162_crit_edge ], [ %call.i12.i.i159, %if.then2.i.i160 ], [ %mul, %if.end.i.i157.copy_to_user.exit162_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i161)
  %tobool47.not = icmp eq i32 %n.addr.0.i161, 0
  br i1 %tobool47.not, label %copy_to_user.exit162.if.end50_crit_edge, label %copy_to_user.exit162.cleanup_crit_edge

copy_to_user.exit162.cleanup_crit_edge:           ; preds = %copy_to_user.exit162
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

copy_to_user.exit162.if.end50_crit_edge:          ; preds = %copy_to_user.exit162
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.end50:                                         ; preds = %copy_to_user.exit162.if.end50_crit_edge, %land.lhs.true.if.end50_crit_edge, %if.end37.if.end50_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end50, %copy_to_user.exit162.cleanup_crit_edge, %copy_to_user.exit139.cleanup_crit_edge, %copy_to_user.exit116.cleanup_crit_edge, %copy_to_user.exit.cleanup_crit_edge, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end50 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end11.cleanup_crit_edge ], [ -14, %copy_to_user.exit.cleanup_crit_edge ], [ -14, %copy_to_user.exit116.cleanup_crit_edge ], [ -14, %copy_to_user.exit139.cleanup_crit_edge ], [ -14, %copy_to_user.exit162.cleanup_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_set_cmap(ptr noundef %cmap, ptr noundef %info) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %red1 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 2
  %0 = ptrtoint ptr %red1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %red1, align 4
  %green2 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 3
  %2 = ptrtoint ptr %green2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %green2, align 4
  %blue3 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 4
  %4 = ptrtoint ptr %blue3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %blue3, align 4
  %transp4 = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 5
  %6 = ptrtoint ptr %transp4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %transp4, align 4
  %8 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cmap, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp slt i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fbops = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 20
  %10 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fbops, align 4
  %fb_setcolreg = getelementptr inbounds %struct.fb_ops, ptr %11, i32 0, i32 7
  %12 = ptrtoint ptr %fb_setcolreg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fb_setcolreg, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %fb_setcmap = getelementptr inbounds %struct.fb_ops, ptr %11, i32 0, i32 8
  %14 = ptrtoint ptr %fb_setcmap to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fb_setcmap, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %fb_setcmap9 = getelementptr inbounds %struct.fb_ops, ptr %11, i32 0, i32 8
  %16 = ptrtoint ptr %fb_setcmap9 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fb_setcmap9, align 4
  %tobool10.not = icmp eq ptr %17, null
  br i1 %tobool10.not, label %for.cond.preheader, label %if.end31

for.cond.preheader:                               ; preds = %if.end
  %len = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1470.not = icmp eq i32 %19, 0
  br i1 %cmp1470.not, label %for.cond.preheader.if.then34_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.then34_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %htransp.077 = phi i32 [ %htransp.1, %for.inc.for.body_crit_edge ], [ 65535, %for.cond.preheader.for.body_crit_edge ]
  %transp.076 = phi ptr [ %transp.1, %for.inc.for.body_crit_edge ], [ %7, %for.cond.preheader.for.body_crit_edge ]
  %blue.075 = phi ptr [ %incdec.ptr17, %for.inc.for.body_crit_edge ], [ %5, %for.cond.preheader.for.body_crit_edge ]
  %green.074 = phi ptr [ %incdec.ptr15, %for.inc.for.body_crit_edge ], [ %3, %for.cond.preheader.for.body_crit_edge ]
  %red.073 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %1, %for.cond.preheader.for.body_crit_edge ]
  %start.072 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ %9, %for.cond.preheader.for.body_crit_edge ]
  %i.071 = phi i32 [ %inc30, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %incdec.ptr = getelementptr i16, ptr %red.073, i32 1
  %20 = ptrtoint ptr %red.073 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %red.073, align 2
  %conv = zext i16 %21 to i32
  %incdec.ptr15 = getelementptr i16, ptr %green.074, i32 1
  %22 = ptrtoint ptr %green.074 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %green.074, align 2
  %conv16 = zext i16 %23 to i32
  %incdec.ptr17 = getelementptr i16, ptr %blue.075, i32 1
  %24 = ptrtoint ptr %blue.075 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %blue.075, align 2
  %conv18 = zext i16 %25 to i32
  %tobool19.not = icmp eq ptr %transp.076, null
  br i1 %tobool19.not, label %for.body.if.end23_crit_edge, label %if.then20

for.body.if.end23_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %incdec.ptr21 = getelementptr i16, ptr %transp.076, i32 1
  %26 = ptrtoint ptr %transp.076 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %transp.076, align 2
  %conv22 = zext i16 %27 to i32
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %for.body.if.end23_crit_edge
  %transp.1 = phi ptr [ %incdec.ptr21, %if.then20 ], [ null, %for.body.if.end23_crit_edge ]
  %htransp.1 = phi i32 [ %conv22, %if.then20 ], [ %htransp.077, %for.body.if.end23_crit_edge ]
  %28 = ptrtoint ptr %fbops to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fbops, align 4
  %fb_setcolreg25 = getelementptr inbounds %struct.fb_ops, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %fb_setcolreg25 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fb_setcolreg25, align 4
  %call26 = tail call i32 %31(i32 noundef %start.072, i32 noundef %conv, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %htransp.1, ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.inc, label %if.end23.if.then34_crit_edge

if.end23.if.then34_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.inc:                                          ; preds = %if.end23
  %inc = add i32 %start.072, 1
  %inc30 = add nuw i32 %i.071, 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %cmp14 = icmp ult i32 %inc30, %33
  br i1 %cmp14, label %for.inc.for.body_crit_edge, label %for.inc.if.then34_crit_edge

for.inc.if.then34_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end31:                                         ; preds = %if.end
  %call = tail call i32 %17(ptr noundef %cmap, ptr noundef %info) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32 = icmp eq i32 %call, 0
  br i1 %cmp32, label %if.end31.if.then34_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end31.if.then34_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34

if.then34:                                        ; preds = %if.end31.if.then34_crit_edge, %for.inc.if.then34_crit_edge, %if.end23.if.then34_crit_edge, %for.cond.preheader.if.then34_crit_edge
  %cmap35 = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12
  %34 = ptrtoint ptr %cmap35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cmap35, align 4
  %36 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cmap, align 4
  %38 = tail call i32 @llvm.usub.sat.i32(i32 %37, i32 %35) #9
  %39 = tail call i32 @llvm.usub.sat.i32(i32 %35, i32 %37) #9
  %len.i = getelementptr inbounds %struct.fb_cmap, ptr %cmap, i32 0, i32 1
  %40 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %39)
  %cmp7.not.i = icmp ugt i32 %41, %39
  br i1 %cmp7.not.i, label %lor.lhs.false.i, label %if.then34.cleanup_crit_edge

if.then34.cleanup_crit_edge:                      ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.then34
  %len8.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %len8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %38)
  %cmp9.not.i = icmp ugt i32 %43, %38
  br i1 %cmp9.not.i, label %if.end11.i, label %lor.lhs.false.i.cleanup_crit_edge

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11.i:                                       ; preds = %lor.lhs.false.i
  %sub13.i = sub i32 %43, %38
  %sub15.i = sub i32 %41, %39
  %44 = tail call i32 @llvm.umin.i32(i32 %sub13.i, i32 %sub15.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp17.i = icmp eq i32 %44, 0
  br i1 %cmp17.i, label %if.end11.i.cleanup_crit_edge, label %if.end19.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end19.i:                                       ; preds = %if.end11.i
  %mul.i = shl i32 %44, 1
  %red.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 2
  %45 = ptrtoint ptr %red.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %red.i, align 4
  %add.ptr.i = getelementptr i16, ptr %46, i32 %38
  %47 = ptrtoint ptr %red1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %red1, align 4
  %add.ptr21.i = getelementptr i16, ptr %48, i32 %39
  %49 = call ptr @memcpy(ptr %add.ptr.i, ptr %add.ptr21.i, i32 %mul.i)
  %green.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 3
  %50 = ptrtoint ptr %green.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %green.i, align 4
  %add.ptr22.i = getelementptr i16, ptr %51, i32 %38
  %52 = ptrtoint ptr %green2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %green2, align 4
  %add.ptr24.i = getelementptr i16, ptr %53, i32 %39
  %54 = call ptr @memcpy(ptr %add.ptr22.i, ptr %add.ptr24.i, i32 %mul.i)
  %blue.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 4
  %55 = ptrtoint ptr %blue.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %blue.i, align 4
  %add.ptr25.i = getelementptr i16, ptr %56, i32 %38
  %57 = ptrtoint ptr %blue3 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %blue3, align 4
  %add.ptr27.i = getelementptr i16, ptr %58, i32 %39
  %59 = call ptr @memcpy(ptr %add.ptr25.i, ptr %add.ptr27.i, i32 %mul.i)
  %60 = ptrtoint ptr %transp4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %transp4, align 4
  %tobool.not.i = icmp eq ptr %61, null
  br i1 %tobool.not.i, label %if.end19.i.cleanup_crit_edge, label %land.lhs.true.i

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end19.i
  %transp28.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 12, i32 5
  %62 = ptrtoint ptr %transp28.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %transp28.i, align 4
  %tobool29.not.i = icmp eq ptr %63, null
  br i1 %tobool29.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then30.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then30.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr32.i = getelementptr i16, ptr %63, i32 %38
  %add.ptr34.i = getelementptr i16, ptr %61, i32 %39
  %64 = call ptr @memcpy(ptr %add.ptr32.i, ptr %add.ptr34.i, i32 %mul.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then30.i, %land.lhs.true.i.cleanup_crit_edge, %if.end19.i.cleanup_crit_edge, %if.end11.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.then34.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end31.cleanup_crit_edge ], [ 0, %if.then34.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.end11.i.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ], [ 0, %land.lhs.true.i.cleanup_crit_edge ], [ 0, %if.then30.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fb_set_user_cmap(ptr nocapture noundef readonly %cmap, ptr noundef %info) local_unnamed_addr #0 align 64 {
entry:
  %umap = alloca %struct.fb_cmap, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %len = getelementptr inbounds %struct.fb_cmap_user, ptr %cmap, i32 0, i32 1
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  %mul = shl i32 %1, 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %umap) #9
  %2 = getelementptr inbounds %struct.fb_cmap, ptr %umap, i32 0, i32 2
  %3 = getelementptr inbounds %struct.fb_cmap, ptr %umap, i32 0, i32 3
  %4 = getelementptr inbounds %struct.fb_cmap, ptr %umap, i32 0, i32 4
  %5 = getelementptr inbounds %struct.fb_cmap, ptr %umap, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp = icmp slt i32 %mul, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %1)
  %cmp2 = icmp ult i32 %mul, %1
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = call ptr @memset(ptr %umap, i32 0, i32 24)
  %transp = getelementptr inbounds %struct.fb_cmap_user, ptr %cmap, i32 0, i32 5
  %7 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %transp, align 4
  %cmp4 = icmp ne ptr %8, null
  %conv = zext i1 %cmp4 to i32
  %call = call i32 @fb_alloc_cmap_gfp(ptr noundef nonnull %umap, i32 noundef %1, i32 noundef %conv, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %red7 = getelementptr inbounds %struct.fb_cmap_user, ptr %cmap, i32 0, i32 2
  %11 = ptrtoint ptr %red7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %red7, align 4
  call void @__check_object_size(ptr noundef %10, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.end6.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end6.if.end.i.i_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end6
  %13 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %12, i32 %mul, i32 -1226833920) #13, !srcloc !63
  %asmresult.i.i = extractvalue { i32, i32 } %13, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !61

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %10, i32 noundef %mul) #9
  %14 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 4
  %16 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #7, !srcloc !64
  %and.i.i.i.i = and i32 %16, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %10, ptr noundef %12, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %16) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end6.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.end6.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %lor.lhs.false10, label %if.then11.i.i, !prof !61

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %sub.i.i
  %17 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %out

lor.lhs.false10:                                  ; preds = %if.end.i.i
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %green11 = getelementptr inbounds %struct.fb_cmap_user, ptr %cmap, i32 0, i32 3
  %20 = ptrtoint ptr %green11 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %green11, align 4
  call void @__check_object_size(ptr noundef %19, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i62 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i62, label %lor.lhs.false10.if.end.i.i76_crit_edge, label %land.lhs.true.i.i66

lor.lhs.false10.if.end.i.i76_crit_edge:           ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i76

land.lhs.true.i.i66:                              ; preds = %lor.lhs.false10
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %21, i32 %mul, i32 -1226833920) #13, !srcloc !63
  %asmresult.i.i64 = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i64)
  %cmp.i6.i65 = icmp eq i32 %asmresult.i.i64, 0
  br i1 %cmp.i6.i65, label %if.then.i7.i73, label %land.lhs.true.i.i66.if.end.i.i76_crit_edge, !prof !61

land.lhs.true.i.i66.if.end.i.i76_crit_edge:       ; preds = %land.lhs.true.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i76

if.then.i7.i73:                                   ; preds = %land.lhs.true.i.i66
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i67 = call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef %mul) #9
  %23 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i.i68 = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i68 to ptr
  %cpu_domain.i.i.i.i.i69 = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i69) #7, !srcloc !64
  %and.i.i.i.i70 = and i32 %25, -13
  %or.i.i.i.i71 = or i32 %and.i.i.i.i70, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i71) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %call1.i.i.i72 = call i32 @arm_copy_from_user(ptr noundef %19, ptr noundef %21, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  br label %if.end.i.i76

if.end.i.i76:                                     ; preds = %if.then.i7.i73, %land.lhs.true.i.i66.if.end.i.i76_crit_edge, %lor.lhs.false10.if.end.i.i76_crit_edge
  %res.0.i.i74 = phi i32 [ %mul, %lor.lhs.false10.if.end.i.i76_crit_edge ], [ %call1.i.i.i72, %if.then.i7.i73 ], [ %mul, %land.lhs.true.i.i66.if.end.i.i76_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i74)
  %tobool4.not.i.i75 = icmp eq i32 %res.0.i.i74, 0
  br i1 %tobool4.not.i.i75, label %lor.lhs.false14, label %if.then11.i.i79, !prof !61

if.then11.i.i79:                                  ; preds = %if.end.i.i76
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i77 = sub i32 %mul, %res.0.i.i74
  %add.ptr.i.i78 = getelementptr i8, ptr %19, i32 %sub.i.i77
  %26 = call ptr @memset(ptr %add.ptr.i.i78, i32 0, i32 %res.0.i.i74)
  br label %out

lor.lhs.false14:                                  ; preds = %if.end.i.i76
  %27 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %4, align 4
  %blue15 = getelementptr inbounds %struct.fb_cmap_user, ptr %cmap, i32 0, i32 4
  %29 = ptrtoint ptr %blue15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %blue15, align 4
  call void @__check_object_size(ptr noundef %28, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i95 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i95, label %lor.lhs.false14.if.end.i.i109_crit_edge, label %land.lhs.true.i.i99

lor.lhs.false14.if.end.i.i109_crit_edge:          ; preds = %lor.lhs.false14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i109

land.lhs.true.i.i99:                              ; preds = %lor.lhs.false14
  %31 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %30, i32 %mul, i32 -1226833920) #13, !srcloc !63
  %asmresult.i.i97 = extractvalue { i32, i32 } %31, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i97)
  %cmp.i6.i98 = icmp eq i32 %asmresult.i.i97, 0
  br i1 %cmp.i6.i98, label %if.then.i7.i106, label %land.lhs.true.i.i99.if.end.i.i109_crit_edge, !prof !61

land.lhs.true.i.i99.if.end.i.i109_crit_edge:      ; preds = %land.lhs.true.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i109

if.then.i7.i106:                                  ; preds = %land.lhs.true.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i100 = call zeroext i1 @__kasan_check_write(ptr noundef %28, i32 noundef %mul) #9
  %32 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i.i101 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i.i.i.i101 to ptr
  %cpu_domain.i.i.i.i.i102 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i102) #7, !srcloc !64
  %and.i.i.i.i103 = and i32 %34, -13
  %or.i.i.i.i104 = or i32 %and.i.i.i.i103, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i104) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %call1.i.i.i105 = call i32 @arm_copy_from_user(ptr noundef %28, ptr noundef %30, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  br label %if.end.i.i109

if.end.i.i109:                                    ; preds = %if.then.i7.i106, %land.lhs.true.i.i99.if.end.i.i109_crit_edge, %lor.lhs.false14.if.end.i.i109_crit_edge
  %res.0.i.i107 = phi i32 [ %mul, %lor.lhs.false14.if.end.i.i109_crit_edge ], [ %call1.i.i.i105, %if.then.i7.i106 ], [ %mul, %land.lhs.true.i.i99.if.end.i.i109_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i107)
  %tobool4.not.i.i108 = icmp eq i32 %res.0.i.i107, 0
  br i1 %tobool4.not.i.i108, label %lor.lhs.false18, label %if.then11.i.i112, !prof !61

if.then11.i.i112:                                 ; preds = %if.end.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i110 = sub i32 %mul, %res.0.i.i107
  %add.ptr.i.i111 = getelementptr i8, ptr %28, i32 %sub.i.i110
  %35 = call ptr @memset(ptr %add.ptr.i.i111, i32 0, i32 %res.0.i.i107)
  br label %out

lor.lhs.false18:                                  ; preds = %if.end.i.i109
  %36 = ptrtoint ptr %transp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %transp, align 4
  %tobool20.not = icmp eq ptr %37, null
  br i1 %tobool20.not, label %lor.lhs.false18.if.end26_crit_edge, label %land.lhs.true

lor.lhs.false18.if.end26_crit_edge:               ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

land.lhs.true:                                    ; preds = %lor.lhs.false18
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %5, align 4
  call void @__check_object_size(ptr noundef %39, i32 noundef %mul, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 156) #9
  %call.i.i128 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i128, label %land.lhs.true.if.end.i.i142_crit_edge, label %land.lhs.true.i.i132

land.lhs.true.if.end.i.i142_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i142

land.lhs.true.i.i132:                             ; preds = %land.lhs.true
  %40 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %37, i32 %mul, i32 -1226833920) #13, !srcloc !63
  %asmresult.i.i130 = extractvalue { i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i130)
  %cmp.i6.i131 = icmp eq i32 %asmresult.i.i130, 0
  br i1 %cmp.i6.i131, label %if.then.i7.i139, label %land.lhs.true.i.i132.if.end.i.i142_crit_edge, !prof !61

land.lhs.true.i.i132.if.end.i.i142_crit_edge:     ; preds = %land.lhs.true.i.i132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i142

if.then.i7.i139:                                  ; preds = %land.lhs.true.i.i132
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i133 = call zeroext i1 @__kasan_check_write(ptr noundef %39, i32 noundef %mul) #9
  %41 = call i32 @llvm.read_register.i32(metadata !51) #9
  %and.i.i.i.i.i.i134 = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i.i.i.i134 to ptr
  %cpu_domain.i.i.i.i.i135 = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 4
  %43 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i135) #7, !srcloc !64
  %and.i.i.i.i136 = and i32 %43, -13
  %or.i.i.i.i137 = or i32 %and.i.i.i.i136, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i137) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  %call1.i.i.i138 = call i32 @arm_copy_from_user(ptr noundef %39, ptr noundef nonnull %37, i32 noundef %mul) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %43) #9, !srcloc !65
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !66
  br label %if.end.i.i142

if.end.i.i142:                                    ; preds = %if.then.i7.i139, %land.lhs.true.i.i132.if.end.i.i142_crit_edge, %land.lhs.true.if.end.i.i142_crit_edge
  %res.0.i.i140 = phi i32 [ %mul, %land.lhs.true.if.end.i.i142_crit_edge ], [ %call1.i.i.i138, %if.then.i7.i139 ], [ %mul, %land.lhs.true.i.i132.if.end.i.i142_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i140)
  %tobool4.not.i.i141 = icmp eq i32 %res.0.i.i140, 0
  br i1 %tobool4.not.i.i141, label %if.end.i.i142.if.end26_crit_edge, label %if.then11.i.i145, !prof !61

if.end.i.i142.if.end26_crit_edge:                 ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

if.then11.i.i145:                                 ; preds = %if.end.i.i142
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i143 = sub i32 %mul, %res.0.i.i140
  %add.ptr.i.i144 = getelementptr i8, ptr %39, i32 %sub.i.i143
  %44 = call ptr @memset(ptr %add.ptr.i.i144, i32 0, i32 %res.0.i.i140)
  br label %out

if.end26:                                         ; preds = %if.end.i.i142.if.end26_crit_edge, %lor.lhs.false18.if.end26_crit_edge
  %45 = ptrtoint ptr %cmap to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %cmap, align 4
  %47 = ptrtoint ptr %umap to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %umap, align 4
  %lock.i = getelementptr inbounds %struct.fb_info, ptr %info, i32 0, i32 4
  call void @mutex_lock_nested(ptr noundef %lock.i, i32 noundef 0) #9
  %call28 = call i32 @fb_set_cmap(ptr noundef nonnull %umap, ptr noundef %info)
  call void @mutex_unlock(ptr noundef %lock.i) #9
  br label %out

out:                                              ; preds = %if.end26, %if.then11.i.i145, %if.then11.i.i112, %if.then11.i.i79, %if.then11.i.i
  %rc.0 = phi i32 [ %call28, %if.end26 ], [ -14, %if.then11.i.i ], [ -14, %if.then11.i.i79 ], [ -14, %if.then11.i.i112 ], [ -14, %if.then11.i.i145 ]
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  call void @kfree(ptr noundef %49) #9
  %50 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %3, align 4
  call void @kfree(ptr noundef %51) #9
  %52 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %4, align 4
  call void @kfree(ptr noundef %53) #9
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %5, align 4
  call void @kfree(ptr noundef %55) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %out ], [ -7, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %umap) #9
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fb_invert_cmaps() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i16, ptr @red2, align 2
  %neg = xor i16 %0, -1
  store i16 %neg, ptr @red2, align 2
  %1 = load i16, ptr @green2, align 2
  %neg5 = xor i16 %1, -1
  store i16 %neg5, ptr @green2, align 2
  %2 = load i16, ptr @blue2, align 2
  %neg10 = xor i16 %2, -1
  store i16 %neg10, ptr @blue2, align 2
  %3 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @red2, i32 0, i32 1), align 2
  %neg.1 = xor i16 %3, -1
  store i16 %neg.1, ptr getelementptr inbounds ([2 x i16], ptr @red2, i32 0, i32 1), align 2
  %4 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @green2, i32 0, i32 1), align 2
  %neg5.1 = xor i16 %4, -1
  store i16 %neg5.1, ptr getelementptr inbounds ([2 x i16], ptr @green2, i32 0, i32 1), align 2
  %5 = load i16, ptr getelementptr inbounds ([2 x i16], ptr @blue2, i32 0, i32 1), align 2
  %neg10.1 = xor i16 %5, -1
  store i16 %neg10.1, ptr getelementptr inbounds ([2 x i16], ptr @blue2, i32 0, i32 1), align 2
  %6 = load i16, ptr @red4, align 2
  %neg19 = xor i16 %6, -1
  store i16 %neg19, ptr @red4, align 2
  %7 = load i16, ptr @green4, align 2
  %neg24 = xor i16 %7, -1
  store i16 %neg24, ptr @green4, align 2
  %8 = load i16, ptr @blue4, align 2
  %neg29 = xor i16 %8, -1
  store i16 %neg29, ptr @blue4, align 2
  %9 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 1), align 2
  %neg19.1 = xor i16 %9, -1
  store i16 %neg19.1, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 1), align 2
  %10 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 1), align 2
  %neg24.1 = xor i16 %10, -1
  store i16 %neg24.1, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 1), align 2
  %11 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 1), align 2
  %neg29.1 = xor i16 %11, -1
  store i16 %neg29.1, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 1), align 2
  %12 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 2), align 2
  %neg19.2 = xor i16 %12, -1
  store i16 %neg19.2, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 2), align 2
  %13 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 2), align 2
  %neg24.2 = xor i16 %13, -1
  store i16 %neg24.2, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 2), align 2
  %14 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 2), align 2
  %neg29.2 = xor i16 %14, -1
  store i16 %neg29.2, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 2), align 2
  %15 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 3), align 2
  %neg19.3 = xor i16 %15, -1
  store i16 %neg19.3, ptr getelementptr inbounds ([4 x i16], ptr @red4, i32 0, i32 3), align 2
  %16 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 3), align 2
  %neg24.3 = xor i16 %16, -1
  store i16 %neg24.3, ptr getelementptr inbounds ([4 x i16], ptr @green4, i32 0, i32 3), align 2
  %17 = load i16, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 3), align 2
  %neg29.3 = xor i16 %17, -1
  store i16 %neg29.3, ptr getelementptr inbounds ([4 x i16], ptr @blue4, i32 0, i32 3), align 2
  %18 = load i16, ptr @red8, align 2
  %neg41 = xor i16 %18, -1
  store i16 %neg41, ptr @red8, align 2
  %19 = load i16, ptr @green8, align 2
  %neg46 = xor i16 %19, -1
  store i16 %neg46, ptr @green8, align 2
  %20 = load i16, ptr @blue8, align 2
  %neg51 = xor i16 %20, -1
  store i16 %neg51, ptr @blue8, align 2
  %21 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 1), align 2
  %neg41.1 = xor i16 %21, -1
  store i16 %neg41.1, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 1), align 2
  %22 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 1), align 2
  %neg46.1 = xor i16 %22, -1
  store i16 %neg46.1, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 1), align 2
  %23 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 1), align 2
  %neg51.1 = xor i16 %23, -1
  store i16 %neg51.1, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 1), align 2
  %24 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 2), align 2
  %neg41.2 = xor i16 %24, -1
  store i16 %neg41.2, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 2), align 2
  %25 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 2), align 2
  %neg46.2 = xor i16 %25, -1
  store i16 %neg46.2, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 2), align 2
  %26 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 2), align 2
  %neg51.2 = xor i16 %26, -1
  store i16 %neg51.2, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 2), align 2
  %27 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 3), align 2
  %neg41.3 = xor i16 %27, -1
  store i16 %neg41.3, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 3), align 2
  %28 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 3), align 2
  %neg46.3 = xor i16 %28, -1
  store i16 %neg46.3, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 3), align 2
  %29 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 3), align 2
  %neg51.3 = xor i16 %29, -1
  store i16 %neg51.3, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 3), align 2
  %30 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 4), align 2
  %neg41.4 = xor i16 %30, -1
  store i16 %neg41.4, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 4), align 2
  %31 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 4), align 2
  %neg46.4 = xor i16 %31, -1
  store i16 %neg46.4, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 4), align 2
  %32 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 4), align 2
  %neg51.4 = xor i16 %32, -1
  store i16 %neg51.4, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 4), align 2
  %33 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 5), align 2
  %neg41.5 = xor i16 %33, -1
  store i16 %neg41.5, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 5), align 2
  %34 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 5), align 2
  %neg46.5 = xor i16 %34, -1
  store i16 %neg46.5, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 5), align 2
  %35 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 5), align 2
  %neg51.5 = xor i16 %35, -1
  store i16 %neg51.5, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 5), align 2
  %36 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 6), align 2
  %neg41.6 = xor i16 %36, -1
  store i16 %neg41.6, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 6), align 2
  %37 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 6), align 2
  %neg46.6 = xor i16 %37, -1
  store i16 %neg46.6, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 6), align 2
  %38 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 6), align 2
  %neg51.6 = xor i16 %38, -1
  store i16 %neg51.6, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 6), align 2
  %39 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 7), align 2
  %neg41.7 = xor i16 %39, -1
  store i16 %neg41.7, ptr getelementptr inbounds ([8 x i16], ptr @red8, i32 0, i32 7), align 2
  %40 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 7), align 2
  %neg46.7 = xor i16 %40, -1
  store i16 %neg46.7, ptr getelementptr inbounds ([8 x i16], ptr @green8, i32 0, i32 7), align 2
  %41 = load i16, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 7), align 2
  %neg51.7 = xor i16 %41, -1
  store i16 %neg51.7, ptr getelementptr inbounds ([8 x i16], ptr @blue8, i32 0, i32 7), align 2
  br label %for.body60

for.body60:                                       ; preds = %for.body60.for.body60_crit_edge, %entry
  %i.3113 = phi i32 [ %inc77, %for.body60.for.body60_crit_edge ], [ 0, %entry ]
  %arrayidx61 = getelementptr [16 x i16], ptr @red16, i32 0, i32 %i.3113
  %42 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx61, align 2
  %neg63 = xor i16 %43, -1
  store i16 %neg63, ptr %arrayidx61, align 2
  %arrayidx66 = getelementptr [16 x i16], ptr @green16, i32 0, i32 %i.3113
  %44 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx66, align 2
  %neg68 = xor i16 %45, -1
  store i16 %neg68, ptr %arrayidx66, align 2
  %arrayidx71 = getelementptr [16 x i16], ptr @blue16, i32 0, i32 %i.3113
  %46 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %arrayidx71, align 2
  %neg73 = xor i16 %47, -1
  store i16 %neg73, ptr %arrayidx71, align 2
  %inc77 = add nuw nsw i32 %i.3113, 1
  %exitcond.not = icmp eq i32 %inc77, 16
  br i1 %exitcond.not, label %for.end78, label %for.body60.for.body60_crit_edge

for.body60.for.body60_crit_edge:                  ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body60

for.end78:                                        ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #11
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__ksymtab_fb_alloc_cmap, !1, !"__ksymtab_fb_alloc_cmap", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 357, i32 1}
!2 = !{ptr @__ksymtab_fb_dealloc_cmap, !3, !"__ksymtab_fb_dealloc_cmap", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 358, i32 1}
!4 = !{ptr @__ksymtab_fb_copy_cmap, !5, !"__ksymtab_fb_copy_cmap", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 359, i32 1}
!6 = !{ptr @__ksymtab_fb_set_cmap, !7, !"__ksymtab_fb_set_cmap", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 360, i32 1}
!8 = !{ptr @__ksymtab_fb_default_cmap, !9, !"__ksymtab_fb_default_cmap", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 361, i32 1}
!10 = !{ptr @__ksymtab_fb_invert_cmaps, !11, !"__ksymtab_fb_invert_cmaps", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 362, i32 1}
!12 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!13 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!14 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!19 = !{ptr @default_2_colors, !20, !"default_2_colors", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 63, i32 29}
!21 = !{ptr @default_4_colors, !22, !"default_4_colors", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 69, i32 29}
!23 = !{ptr @default_8_colors, !24, !"default_8_colors", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 66, i32 29}
!25 = !{ptr @default_16_colors, !26, !"default_16_colors", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 72, i32 29}
!27 = !{ptr @red2, !28, !"red2", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 20, i32 12}
!29 = !{ptr @green2, !30, !"green2", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 23, i32 12}
!31 = !{ptr @blue2, !32, !"blue2", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 26, i32 12}
!33 = !{ptr @red4, !34, !"red4", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 30, i32 12}
!35 = !{ptr @green4, !36, !"green4", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 33, i32 12}
!37 = !{ptr @blue4, !38, !"blue4", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 36, i32 12}
!39 = !{ptr @red8, !40, !"red8", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 40, i32 12}
!41 = !{ptr @green8, !42, !"green8", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 43, i32 12}
!43 = !{ptr @blue8, !44, !"blue8", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 46, i32 12}
!45 = !{ptr @red16, !46, !"red16", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 50, i32 12}
!47 = !{ptr @green16, !48, !"green16", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 54, i32 12}
!49 = !{ptr @blue16, !50, !"blue16", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/core/fbcmap.c", i32 58, i32 12}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{i64 2153440335, i64 2153440360}
!63 = !{i64 2153439654, i64 2153439679}
!64 = !{i64 5935209}
!65 = !{i64 5935406}
!66 = !{i64 2153420639}
