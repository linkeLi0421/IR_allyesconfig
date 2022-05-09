; ModuleID = '/llk/IR_all_yes/drivers/staging/fbtft/fbtft-io.c_pt.bc'
source_filename = "../drivers/staging/fbtft/fbtft-io.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+fbtft_write_spi\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_write_spi\09\09\09\09"
module asm "\09.long\09__crc_fbtft_write_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_write_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_write_spi\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_write_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fbtft_write_spi_emulate_9\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_write_spi_emulate_9\09\09\09\09"
module asm "\09.long\09__crc_fbtft_write_spi_emulate_9\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_write_spi_emulate_9:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_write_spi_emulate_9\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_write_spi_emulate_9:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fbtft_read_spi\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_read_spi\09\09\09\09"
module asm "\09.long\09__crc_fbtft_read_spi\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_read_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_read_spi\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_read_spi:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fbtft_write_gpio8_wr\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_write_gpio8_wr\09\09\09\09"
module asm "\09.long\09__crc_fbtft_write_gpio8_wr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_write_gpio8_wr:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_write_gpio8_wr\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_write_gpio8_wr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fbtft_write_gpio16_wr\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_write_gpio16_wr\09\09\09\09"
module asm "\09.long\09__crc_fbtft_write_gpio16_wr\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_write_gpio16_wr:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_write_gpio16_wr\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_write_gpio16_wr:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+fbtft_write_gpio16_wr_latched\22, \22a\22\09"
module asm "\09.weak\09__crc_fbtft_write_gpio16_wr_latched\09\09\09\09"
module asm "\09.long\09__crc_fbtft_write_gpio16_wr_latched\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fbtft_write_gpio16_wr_latched:\09\09\09\09\09"
module asm "\09.asciz \09\22fbtft_write_gpio16_wr_latched\22\09\09\09\09\09"
module asm "__kstrtabns_fbtft_write_gpio16_wr_latched:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.fbtft_par = type { ptr, ptr, ptr, ptr, ptr, [16 x i32], %struct.anon.79, ptr, i8, %struct.fbtft_ops, %struct.spinlock, i32, i32, %struct.anon.80, ptr, %struct.anon.81, i32, i8, i64, i8, ptr, i8 }
%struct.anon.79 = type { ptr, i32 }
%struct.fbtft_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.80 = type { ptr, ptr, ptr, ptr, ptr, ptr, [16 x ptr], [16 x ptr], [16 x ptr] }
%struct.anon.81 = type { %struct.mutex, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.78, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.78 = type { ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(len=%zu): \00", [18 x i8] zeroinitializer }, align 32
@__func__.fbtft_write_spi = private unnamed_addr constant [16 x i8] c"fbtft_write_spi\00", align 1
@fbtft_write_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.fbtft_write_spi, ptr @.str.2, i32 21, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: par->spi is unexpectedly NULL\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/staging/fbtft/fbtft-io.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fbtft_write_spi._entry_ptr = internal global ptr @fbtft_write_spi._entry, section ".printk_index", align 4
@__kstrtab_fbtft_write_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_write_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_write_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_write_spi to i32), ptr @__kstrtab_fbtft_write_spi, ptr @__kstrtabns_fbtft_write_spi }, section "___ksymtab+fbtft_write_spi", align 4
@__func__.fbtft_write_spi_emulate_9 = private unnamed_addr constant [26 x i8] c"fbtft_write_spi_emulate_9\00", align 1
@fbtft_write_spi_emulate_9._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.fbtft_write_spi_emulate_9, ptr @.str.2, i32 54, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: error: par->extra is NULL\0A\00", [33 x i8] zeroinitializer }, align 32
@fbtft_write_spi_emulate_9._entry_ptr = internal global ptr @fbtft_write_spi_emulate_9._entry, section ".printk_index", align 4
@fbtft_write_spi_emulate_9._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @__func__.fbtft_write_spi_emulate_9, ptr @.str.2, i32 59, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"error: len=%zu must be divisible by 8\0A\00", [57 x i8] zeroinitializer }, align 32
@fbtft_write_spi_emulate_9._entry_ptr.8 = internal global ptr @fbtft_write_spi_emulate_9._entry.6, section ".printk_index", align 4
@__kstrtab_fbtft_write_spi_emulate_9 = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_write_spi_emulate_9 = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_write_spi_emulate_9 = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_write_spi_emulate_9 to i32), ptr @__kstrtab_fbtft_write_spi_emulate_9, ptr @__kstrtabns_fbtft_write_spi_emulate_9 }, section "___ksymtab+fbtft_write_spi_emulate_9", align 4
@fbtft_read_spi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.9, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fbtft_read_spi\00", [17 x i8] zeroinitializer }, align 32
@fbtft_read_spi._entry_ptr = internal global ptr @fbtft_read_spi._entry, section ".printk_index", align 4
@fbtft_read_spi._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.9, ptr @.str.2, i32 106, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"len=%zu can't be larger than 32 when using 'startbyte'\0A\00", [40 x i8] zeroinitializer }, align 32
@fbtft_read_spi._entry_ptr.12 = internal global ptr @fbtft_read_spi._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s(len=%zu) txbuf => \00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s(len=%zu) buf <= \00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_fbtft_read_spi = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_read_spi = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_read_spi = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_read_spi to i32), ptr @__kstrtab_fbtft_read_spi, ptr @__kstrtabns_fbtft_read_spi }, section "___ksymtab+fbtft_read_spi", align 4
@fbtft_write_gpio8_wr.prev_data = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__func__.fbtft_write_gpio8_wr = private unnamed_addr constant [21 x i8] c"fbtft_write_gpio8_wr\00", align 1
@__kstrtab_fbtft_write_gpio8_wr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_write_gpio8_wr = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_write_gpio8_wr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_write_gpio8_wr to i32), ptr @__kstrtab_fbtft_write_gpio8_wr, ptr @__kstrtabns_fbtft_write_gpio8_wr }, section "___ksymtab+fbtft_write_gpio8_wr", align 4
@fbtft_write_gpio16_wr.prev_data = internal global { i16, [30 x i8] } zeroinitializer, align 32
@__func__.fbtft_write_gpio16_wr = private unnamed_addr constant [22 x i8] c"fbtft_write_gpio16_wr\00", align 1
@__kstrtab_fbtft_write_gpio16_wr = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_write_gpio16_wr = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_write_gpio16_wr = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_write_gpio16_wr to i32), ptr @__kstrtab_fbtft_write_gpio16_wr, ptr @__kstrtabns_fbtft_write_gpio16_wr }, section "___ksymtab+fbtft_write_gpio16_wr", align 4
@fbtft_write_gpio16_wr_latched._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 233, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: function not implemented\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fbtft_write_gpio16_wr_latched\00", [34 x i8] zeroinitializer }, align 32
@fbtft_write_gpio16_wr_latched._entry_ptr = internal global ptr @fbtft_write_gpio16_wr_latched._entry, section ".printk_index", align 4
@__kstrtab_fbtft_write_gpio16_wr_latched = external dso_local constant [0 x i8], align 1
@__kstrtabns_fbtft_write_gpio16_wr_latched = external dso_local constant [0 x i8], align 1
@__ksymtab_fbtft_write_gpio16_wr_latched = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fbtft_write_gpio16_wr_latched to i32), ptr @__kstrtab_fbtft_write_gpio16_wr_latched, ptr @__kstrtabns_fbtft_write_gpio16_wr_latched }, section "___ksymtab+fbtft_write_gpio16_wr_latched", align 4
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 16, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 20, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 53, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 58, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 97, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 104, i32 4 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 111, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 119, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 135, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"prev_data\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 185, i32 13 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [36 x i8] c"../drivers/staging/fbtft/fbtft-io.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 233, i32 2 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_fbtft_read_spi, ptr @__ksymtab_fbtft_write_gpio16_wr, ptr @__ksymtab_fbtft_write_gpio16_wr_latched, ptr @__ksymtab_fbtft_write_gpio8_wr, ptr @__ksymtab_fbtft_write_spi, ptr @__ksymtab_fbtft_write_spi_emulate_9, ptr @fbtft_read_spi._entry, ptr @fbtft_read_spi._entry.10, ptr @fbtft_read_spi._entry_ptr, ptr @fbtft_read_spi._entry_ptr.12, ptr @fbtft_write_gpio16_wr_latched._entry, ptr @fbtft_write_gpio16_wr_latched._entry_ptr, ptr @fbtft_write_spi._entry, ptr @fbtft_write_spi._entry_ptr, ptr @fbtft_write_spi_emulate_9._entry, ptr @fbtft_write_spi_emulate_9._entry.6, ptr @fbtft_write_spi_emulate_9._entry_ptr, ptr @fbtft_write_spi_emulate_9._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @fbtft_write_gpio8_wr.prev_data, ptr @fbtft_write_gpio16_wr.prev_data, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_spi_emulate_9._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_spi_emulate_9._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_read_spi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_read_spi._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_gpio8_wr.prev_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_gpio16_wr.prev_data to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fbtft_write_gpio16_wr_latched._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_write_spi(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #5
  %0 = getelementptr inbounds i8, ptr %t, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %t, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %len1, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %4 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %debug, align 8
  %and = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !66

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %6 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %7, i32 0, i32 21
  %8 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %9, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fbtft_write_spi, i32 noundef %len) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %10 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %par, align 8
  %tobool4.not = icmp eq ptr %11, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %info9 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %12 = ptrtoint ptr %info9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %info9, align 8
  %device10 = getelementptr inbounds %struct.fb_info, ptr %13, i32 0, i32 21
  %14 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.fbtft_write_spi) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %16 = getelementptr inbounds i8, ptr %m, i32 8
  %17 = call ptr @memset(ptr %16, i32 0, i32 40)
  %18 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %20 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end11.spi_message_add_tail.exit_crit_edge

if.end11.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end11.spi_message_add_tail.exit_crit_edge
  %26 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %par, align 8
  %call = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %m) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_message_add_tail.exit, %do.end8
  %retval.0 = phi i32 [ %call, %spi_message_add_tail.exit ], [ -1, %do.end8 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fbtft_dbg_hex(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_write_spi_emulate_9(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.spi_message, align 4
  %t.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extra = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 20
  %0 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extra, align 4
  %div84 = lshr i32 %len, 1
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %2 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %debug, align 8
  %and = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !66

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %5, i32 0, i32 21
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %7, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fbtft_write_spi_emulate_9, i32 noundef %len) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  %8 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %extra, align 4
  %tobool4.not = icmp eq ptr %9, null
  br i1 %tobool4.not, label %do.end8, label %if.end11

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %info9 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %10 = ptrtoint ptr %info9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info9, align 8
  %device10 = getelementptr inbounds %struct.fb_info, ptr %11, i32 0, i32 21
  %12 = ptrtoint ptr %device10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device10, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.fbtft_write_spi_emulate_9) #8
  br label %cleanup

if.end11:                                         ; preds = %do.end
  %rem = and i32 %len, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp eq i32 %rem, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end15

for.cond.preheader:                               ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp1989.not = icmp ult i32 %len, 2
  br i1 %cmp1989.not, label %for.cond.preheader.for.end45_crit_edge, label %for.cond20.preheader.preheader

for.cond.preheader.for.end45_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end45

for.cond20.preheader.preheader:                   ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div84, i32 8)
  %14 = add nsw i32 %umax, -1
  %15 = lshr i32 %14, 3
  %16 = add nuw nsw i32 %15, 1
  br label %for.cond20.preheader

do.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %info16 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %17 = ptrtoint ptr %info16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %info16, align 8
  %device17 = getelementptr inbounds %struct.fb_info, ptr %18, i32 0, i32 21
  %19 = ptrtoint ptr %device17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7, i32 noundef %len) #8
  br label %cleanup

for.cond20.preheader:                             ; preds = %for.cond20.preheader.for.cond20.preheader_crit_edge, %for.cond20.preheader.preheader
  %added.092 = phi i32 [ %inc43, %for.cond20.preheader.for.cond20.preheader_crit_edge ], [ 0, %for.cond20.preheader.preheader ]
  %dst.091 = phi ptr [ %incdec.ptr42, %for.cond20.preheader.for.cond20.preheader_crit_edge ], [ %1, %for.cond20.preheader.preheader ]
  %src.090 = phi ptr [ %incdec.ptr38, %for.cond20.preheader.for.cond20.preheader_crit_edge ], [ %buf, %for.cond20.preheader.preheader ]
  %21 = ptrtoint ptr %src.090 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %src.090, align 2
  %conv = zext i16 %22 to i32
  %and23 = lshr i32 %conv, 8
  %and23.lobit = and i32 %and23, 1
  %23 = zext i32 %and23.lobit to i64
  %and27 = and i32 %conv, 255
  %24 = zext i32 %and27 to i64
  %shl = shl nuw i64 %23, 63
  %shl30 = shl nuw nsw i64 %24, 55
  %or31 = or i64 %shl30, %shl
  %incdec.ptr = getelementptr i16, ptr %src.090, i32 1
  %25 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %incdec.ptr, align 2
  %conv.1 = zext i16 %26 to i32
  %and23.1 = lshr i32 %conv.1, 8
  %and23.lobit.1 = and i32 %and23.1, 1
  %27 = zext i32 %and23.lobit.1 to i64
  %and27.1 = and i32 %conv.1, 255
  %28 = zext i32 %and27.1 to i64
  %shl.1 = shl nuw nsw i64 %27, 54
  %shl30.1 = shl nuw nsw i64 %28, 46
  %or.1 = or i64 %shl30.1, %or31
  %or31.1 = or i64 %or.1, %shl.1
  %incdec.ptr.1 = getelementptr i16, ptr %src.090, i32 2
  %29 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %incdec.ptr.1, align 2
  %conv.2 = zext i16 %30 to i32
  %and23.2 = lshr i32 %conv.2, 8
  %and23.lobit.2 = and i32 %and23.2, 1
  %31 = zext i32 %and23.lobit.2 to i64
  %and27.2 = and i32 %conv.2, 255
  %32 = zext i32 %and27.2 to i64
  %shl.2 = shl nuw nsw i64 %31, 45
  %shl30.2 = shl nuw nsw i64 %32, 37
  %or.2 = or i64 %shl30.2, %or31.1
  %or31.2 = or i64 %or.2, %shl.2
  %incdec.ptr.2 = getelementptr i16, ptr %src.090, i32 3
  %33 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %incdec.ptr.2, align 2
  %conv.3 = zext i16 %34 to i32
  %and23.3 = lshr i32 %conv.3, 8
  %and23.lobit.3 = and i32 %and23.3, 1
  %35 = zext i32 %and23.lobit.3 to i64
  %and27.3 = and i32 %conv.3, 255
  %36 = zext i32 %and27.3 to i64
  %shl.3 = shl nuw nsw i64 %35, 36
  %shl30.3 = shl nuw nsw i64 %36, 28
  %or.3 = or i64 %shl30.3, %or31.2
  %or31.3 = or i64 %or.3, %shl.3
  %incdec.ptr.3 = getelementptr i16, ptr %src.090, i32 4
  %37 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %incdec.ptr.3, align 2
  %conv.4 = zext i16 %38 to i32
  %39 = shl i32 %conv.4, 19
  %40 = and i32 %39, 134217728
  %shl.4 = zext i32 %40 to i64
  %and27.4 = shl i32 %conv.4, 19
  %41 = and i32 %and27.4, 133693440
  %shl30.4 = zext i32 %41 to i64
  %or.4 = or i64 %or31.3, %shl30.4
  %or31.4 = or i64 %or.4, %shl.4
  %incdec.ptr.4 = getelementptr i16, ptr %src.090, i32 5
  %42 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %incdec.ptr.4, align 2
  %conv.5 = zext i16 %43 to i32
  %44 = shl nuw nsw i32 %conv.5, 10
  %45 = and i32 %44, 262144
  %shl.5 = zext i32 %45 to i64
  %and27.5 = shl nuw nsw i32 %conv.5, 10
  %46 = and i32 %and27.5, 261120
  %shl30.5 = zext i32 %46 to i64
  %or.5 = or i64 %or31.4, %shl30.5
  %or31.5 = or i64 %or.5, %shl.5
  %incdec.ptr.5 = getelementptr i16, ptr %src.090, i32 6
  %47 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %incdec.ptr.5, align 2
  %conv.6 = zext i16 %48 to i32
  %49 = shl nuw nsw i32 %conv.6, 1
  %50 = and i32 %49, 512
  %shl.6 = zext i32 %50 to i64
  %and27.6 = shl nuw nsw i32 %conv.6, 1
  %51 = and i32 %and27.6, 510
  %shl30.6 = zext i32 %51 to i64
  %or.6 = or i64 %or31.5, %shl30.6
  %or31.6 = or i64 %or.6, %shl.6
  %uglygep94 = getelementptr i8, ptr %src.090, i32 14
  %52 = ptrtoint ptr %uglygep94 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %uglygep94, align 2
  %54 = lshr i16 %53, 8
  %.lobit = and i16 %54, 1
  %55 = zext i16 %.lobit to i64
  %or37 = or i64 %or31.6, %55
  %56 = ptrtoint ptr %dst.091 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or37, ptr %dst.091, align 8
  %add.ptr = getelementptr i8, ptr %dst.091, i32 8
  %incdec.ptr38 = getelementptr i8, ptr %src.090, i32 16
  %57 = load i16, ptr %uglygep94, align 2
  %conv41 = trunc i16 %57 to i8
  %incdec.ptr42 = getelementptr i8, ptr %dst.091, i32 9
  %58 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv41, ptr %add.ptr, align 1
  %inc43 = add nuw nsw i32 %added.092, 1
  %exitcond.not = icmp eq i32 %added.092, %15
  br i1 %exitcond.not, label %for.cond20.preheader.for.end45_crit_edge, label %for.cond20.preheader.for.cond20.preheader_crit_edge

for.cond20.preheader.for.cond20.preheader_crit_edge: ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond20.preheader

for.cond20.preheader.for.end45_crit_edge:         ; preds = %for.cond20.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end45

for.end45:                                        ; preds = %for.cond20.preheader.for.end45_crit_edge, %for.cond.preheader.for.end45_crit_edge
  %added.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end45_crit_edge ], [ %16, %for.cond20.preheader.for.end45_crit_edge ]
  %59 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %par, align 8
  %61 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %extra, align 4
  %add47 = add i32 %added.0.lcssa, %div84
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t.i) #5
  %63 = getelementptr inbounds i8, ptr %t.i, i32 4
  %64 = call ptr @memset(ptr %63, i32 0, i32 92)
  %65 = ptrtoint ptr %t.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %t.i, align 4
  %len1.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 2
  %66 = ptrtoint ptr %len1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add47, ptr %len1.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  %67 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %68 = call ptr @memset(ptr %67, i32 0, i32 40)
  %69 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %70 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %resources.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %71 = ptrtoint ptr %resources.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %resources.i.i.i.i.i, ptr %resources.i.i.i.i.i, align 4
  %prev.i2.i.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %72 = ptrtoint ptr %prev.i2.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %resources.i.i.i.i.i, ptr %prev.i2.i.i.i.i.i, align 4
  %transfer_list.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18
  %call.i.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %for.end45.spi_write.exit_crit_edge

for.end45.spi_write.exit_crit_edge:               ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_write.exit

if.end.i.i.i.i.i.i:                               ; preds = %for.end45
  call void @__sanitizer_cov_trace_pc() #7
  %73 = ptrtoint ptr %prev.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %transfer_list.i.i.i.i, ptr %prev.i.i.i.i.i.i, align 4
  %74 = ptrtoint ptr %transfer_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t.i, i32 0, i32 18, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %76 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %transfer_list.i.i.i.i, ptr %msg.i.i, align 4
  br label %spi_write.exit

spi_write.exit:                                   ; preds = %if.end.i.i.i.i.i.i, %for.end45.spi_write.exit_crit_edge
  %call.i.i = call i32 @spi_sync(ptr noundef %60, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t.i) #5
  br label %cleanup

cleanup:                                          ; preds = %spi_write.exit, %do.end15, %do.end8
  %retval.0 = phi i32 [ -22, %do.end15 ], [ %call.i.i, %spi_write.exit ], [ -22, %do.end8 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_read_spi(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %txbuf = alloca [32 x i8], align 1
  %t = alloca %struct.spi_transfer, align 4
  %m = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %txbuf) #5
  %0 = call ptr @memset(ptr %txbuf, i32 0, i32 32)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #5
  %1 = call ptr @memset(ptr %t, i32 0, i32 96)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %2 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %rx_buf, align 4
  %len1 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %3 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %len, ptr %len1, align 4
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %4 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2000000, ptr %speed_hz, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #5
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %7 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %8, i32 0, i32 21
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %startbyte = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 8
  %11 = ptrtoint ptr %startbyte to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %startbyte, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool2.not = icmp eq i8 %12, 0
  br i1 %tobool2.not, label %if.end.if.end24_crit_edge, label %if.then3

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp = icmp ugt i32 %len, 32
  br i1 %cmp, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %info8 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %13 = ptrtoint ptr %info8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %info8, align 8
  %device9 = getelementptr inbounds %struct.fb_info, ptr %14, i32 0, i32 21
  %15 = ptrtoint ptr %device9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.11, i32 noundef %len) #8
  br label %cleanup

if.end10:                                         ; preds = %if.then3
  %17 = or i8 %12, 3
  %18 = ptrtoint ptr %txbuf to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %txbuf, align 1
  %19 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %txbuf, ptr %t, align 4
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %20 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %debug, align 8
  %and = and i32 %21, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %if.end10.if.end24_crit_edge, label %if.then17, !prof !66

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %info18 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %22 = ptrtoint ptr %info18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %info18, align 8
  %device19 = getelementptr inbounds %struct.fb_info, ptr %23, i32 0, i32 21
  %24 = ptrtoint ptr %device19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device19, align 4
  call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %25, i32 noundef 1, ptr noundef nonnull %txbuf, i32 noundef %len, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.9, i32 noundef %len) #5
  br label %if.end24

if.end24:                                         ; preds = %if.then17, %if.end10.if.end24_crit_edge, %if.end.if.end24_crit_edge
  %26 = getelementptr inbounds i8, ptr %m, i32 8
  %27 = call ptr @memset(ptr %26, i32 0, i32 40)
  %28 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %30 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %31 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end24.spi_message_add_tail.exit_crit_edge

if.end24.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %33 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %34 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %35 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end24.spi_message_add_tail.exit_crit_edge
  %36 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %par, align 8
  %call = call i32 @spi_sync(ptr noundef %37, ptr noundef nonnull %m) #5
  %debug27 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %38 = ptrtoint ptr %debug27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %debug27, align 8
  %and28 = and i32 %39, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %spi_message_add_tail.exit.cleanup_crit_edge, label %if.then36, !prof !66

spi_message_add_tail.exit.cleanup_crit_edge:      ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then36:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #7
  %info37 = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %40 = ptrtoint ptr %info37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %info37, align 8
  %device38 = getelementptr inbounds %struct.fb_info, ptr %41, i32 0, i32 21
  %42 = ptrtoint ptr %device38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device38, align 4
  call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %43, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.9, i32 noundef %len) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then36, %spi_message_add_tail.exit.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -22, %do.end7 ], [ -19, %do.end ], [ %call, %if.then36 ], [ %call, %spi_message_add_tail.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %txbuf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_write_gpio8_wr(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !66

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %5, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fbtft_write_gpio8_wr, i32 noundef %len) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not49 = icmp eq i32 %len, 0
  br i1 %tobool3.not49, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %wr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 3
  %arrayidx = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 0
  %arrayidx.1 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 1
  %arrayidx.2 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 2
  %arrayidx.3 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 3
  %arrayidx.4 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 4
  %arrayidx.5 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 5
  %arrayidx.6 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 6
  %arrayidx.7 = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %dec51.in = phi i32 [ %len, %while.body.lr.ph ], [ %dec51, %if.end27.while.body_crit_edge ]
  %buf.addr.050 = phi ptr [ %buf, %while.body.lr.ph ], [ %incdec.ptr, %if.end27.while.body_crit_edge ]
  %dec51 = add i32 %dec51.in, -1
  %6 = ptrtoint ptr %buf.addr.050 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %buf.addr.050, align 1
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  %10 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %10)
  %cmp = icmp eq i8 %7, %10
  br i1 %cmp, label %if.then6, label %for.body.preheader

for.body.preheader:                               ; preds = %while.body
  %11 = and i8 %7, 1
  %12 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp15.not = icmp eq i8 %11, %13
  br i1 %cmp15.not, label %for.body.preheader.if.end21_crit_edge, label %if.then17

for.body.preheader.if.end21_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %15, i32 noundef 1) #5
  br label %if.end27

if.then17:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %and12 = zext i8 %11 to i32
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %and12) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.body.preheader.if.end21_crit_edge
  %18 = lshr i8 %7, 1
  %19 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %20 = lshr i8 %19, 1
  store i8 %20, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %21 = and i8 %18, 1
  %22 = and i8 %20, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %21, i8 %22)
  %cmp15.not.1 = icmp eq i8 %21, %22
  br i1 %cmp15.not.1, label %if.end21.if.end21.1_crit_edge, label %if.then17.1

if.end21.if.end21.1_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.1

if.then17.1:                                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %and12.1 = zext i8 %21 to i32
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx.1, align 4
  tail call void @gpiod_set_value(ptr noundef %24, i32 noundef %and12.1) #5
  br label %if.end21.1

if.end21.1:                                       ; preds = %if.then17.1, %if.end21.if.end21.1_crit_edge
  %25 = lshr i8 %7, 2
  %26 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %27 = lshr i8 %26, 1
  store i8 %27, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %28 = and i8 %25, 1
  %29 = and i8 %27, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %29)
  %cmp15.not.2 = icmp eq i8 %28, %29
  br i1 %cmp15.not.2, label %if.end21.1.if.end21.2_crit_edge, label %if.then17.2

if.end21.1.if.end21.2_crit_edge:                  ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.2

if.then17.2:                                      ; preds = %if.end21.1
  call void @__sanitizer_cov_trace_pc() #7
  %and12.2 = zext i8 %28 to i32
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.2, align 4
  tail call void @gpiod_set_value(ptr noundef %31, i32 noundef %and12.2) #5
  br label %if.end21.2

if.end21.2:                                       ; preds = %if.then17.2, %if.end21.1.if.end21.2_crit_edge
  %32 = lshr i8 %7, 3
  %33 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %34 = lshr i8 %33, 1
  store i8 %34, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %35 = and i8 %32, 1
  %36 = and i8 %34, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %36)
  %cmp15.not.3 = icmp eq i8 %35, %36
  br i1 %cmp15.not.3, label %if.end21.2.if.end21.3_crit_edge, label %if.then17.3

if.end21.2.if.end21.3_crit_edge:                  ; preds = %if.end21.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.3

if.then17.3:                                      ; preds = %if.end21.2
  call void @__sanitizer_cov_trace_pc() #7
  %and12.3 = zext i8 %35 to i32
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx.3, align 4
  tail call void @gpiod_set_value(ptr noundef %38, i32 noundef %and12.3) #5
  br label %if.end21.3

if.end21.3:                                       ; preds = %if.then17.3, %if.end21.2.if.end21.3_crit_edge
  %39 = lshr i8 %7, 4
  %40 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %41 = lshr i8 %40, 1
  store i8 %41, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %42 = and i8 %39, 1
  %43 = and i8 %41, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %42, i8 %43)
  %cmp15.not.4 = icmp eq i8 %42, %43
  br i1 %cmp15.not.4, label %if.end21.3.if.end21.4_crit_edge, label %if.then17.4

if.end21.3.if.end21.4_crit_edge:                  ; preds = %if.end21.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.4

if.then17.4:                                      ; preds = %if.end21.3
  call void @__sanitizer_cov_trace_pc() #7
  %and12.4 = zext i8 %42 to i32
  %44 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.4, align 4
  tail call void @gpiod_set_value(ptr noundef %45, i32 noundef %and12.4) #5
  br label %if.end21.4

if.end21.4:                                       ; preds = %if.then17.4, %if.end21.3.if.end21.4_crit_edge
  %46 = lshr i8 %7, 5
  %47 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %48 = lshr i8 %47, 1
  store i8 %48, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %49 = and i8 %46, 1
  %50 = and i8 %48, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %49, i8 %50)
  %cmp15.not.5 = icmp eq i8 %49, %50
  br i1 %cmp15.not.5, label %if.end21.4.if.end21.5_crit_edge, label %if.then17.5

if.end21.4.if.end21.5_crit_edge:                  ; preds = %if.end21.4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.5

if.then17.5:                                      ; preds = %if.end21.4
  call void @__sanitizer_cov_trace_pc() #7
  %and12.5 = zext i8 %49 to i32
  %51 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.5, align 4
  tail call void @gpiod_set_value(ptr noundef %52, i32 noundef %and12.5) #5
  br label %if.end21.5

if.end21.5:                                       ; preds = %if.then17.5, %if.end21.4.if.end21.5_crit_edge
  %53 = lshr i8 %7, 6
  %54 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %55 = lshr i8 %54, 1
  store i8 %55, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %56 = and i8 %53, 1
  %57 = and i8 %55, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %56, i8 %57)
  %cmp15.not.6 = icmp eq i8 %56, %57
  br i1 %cmp15.not.6, label %if.end21.5.if.end21.6_crit_edge, label %if.then17.6

if.end21.5.if.end21.6_crit_edge:                  ; preds = %if.end21.5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.6

if.then17.6:                                      ; preds = %if.end21.5
  call void @__sanitizer_cov_trace_pc() #7
  %and12.6 = zext i8 %56 to i32
  %58 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %arrayidx.6, align 4
  tail call void @gpiod_set_value(ptr noundef %59, i32 noundef %and12.6) #5
  br label %if.end21.6

if.end21.6:                                       ; preds = %if.then17.6, %if.end21.5.if.end21.6_crit_edge
  %60 = lshr i8 %7, 7
  %61 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %62 = lshr i8 %61, 1
  store i8 %62, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %63 = and i8 %62, 1
  call void @__sanitizer_cov_trace_cmp1(i8 %60, i8 %63)
  %cmp15.not.7 = icmp eq i8 %60, %63
  br i1 %cmp15.not.7, label %if.end21.6.if.end21.7_crit_edge, label %if.then17.7

if.end21.6.if.end21.7_crit_edge:                  ; preds = %if.end21.6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.7

if.then17.7:                                      ; preds = %if.end21.6
  call void @__sanitizer_cov_trace_pc() #7
  %and12.7 = zext i8 %60 to i32
  %64 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx.7, align 4
  tail call void @gpiod_set_value(ptr noundef %65, i32 noundef %and12.7) #5
  br label %if.end21.7

if.end21.7:                                       ; preds = %if.then17.7, %if.end21.6.if.end21.7_crit_edge
  %66 = load i8, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %67 = lshr i8 %66, 1
  store i8 %67, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  br label %if.end27

if.end27:                                         ; preds = %if.end21.7, %if.then6
  %68 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %69, i32 noundef 0) #5
  %70 = ptrtoint ptr %buf.addr.050 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %buf.addr.050, align 1
  store i8 %71, ptr @fbtft_write_gpio8_wr.prev_data, align 1
  %incdec.ptr = getelementptr i8, ptr %buf.addr.050, i32 1
  %tobool3.not = icmp eq i32 %dec51, 0
  br i1 %tobool3.not, label %if.end27.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %do.end.while.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_write_gpio16_wr(ptr nocapture noundef readonly %par, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %debug = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 16
  %0 = ptrtoint ptr %debug to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %debug, align 8
  %and = and i32 %1, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.then, !prof !66

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ...) @fbtft_dbg_hex(ptr noundef %5, i32 noundef 1, ptr noundef %buf, i32 noundef %len, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fbtft_write_gpio16_wr, i32 noundef %len) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry.do.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool3.not49 = icmp eq i32 %len, 0
  br i1 %tobool3.not49, label %do.end.while.end_crit_edge, label %while.body.lr.ph

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %do.end
  %wr = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 3
  br label %while.body

while.body:                                       ; preds = %if.end27.while.body_crit_edge, %while.body.lr.ph
  %len.addr.051 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %if.end27.while.body_crit_edge ]
  %buf.addr.050 = phi ptr [ %buf, %while.body.lr.ph ], [ %add.ptr, %if.end27.while.body_crit_edge ]
  %6 = ptrtoint ptr %buf.addr.050 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %buf.addr.050, align 2
  %8 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 1) #5
  %10 = load i16, ptr @fbtft_write_gpio16_wr.prev_data, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %7, i16 %10)
  %cmp = icmp eq i16 %7, %10
  br i1 %cmp, label %if.then6, label %while.body.for.body_crit_edge

while.body.for.body_crit_edge:                    ; preds = %while.body
  br label %for.body

if.then6:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #5
  br label %if.end27

for.body:                                         ; preds = %if.end21.for.body_crit_edge, %while.body.for.body_crit_edge
  %i.047 = phi i32 [ %inc, %if.end21.for.body_crit_edge ], [ 0, %while.body.for.body_crit_edge ]
  %data.046 = phi i16 [ %18, %if.end21.for.body_crit_edge ], [ %7, %while.body.for.body_crit_edge ]
  %13 = and i16 %data.046, 1
  %14 = load i16, ptr @fbtft_write_gpio16_wr.prev_data, align 2
  %15 = and i16 %14, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp15.not = icmp eq i16 %13, %15
  br i1 %cmp15.not, label %for.body.if.end21_crit_edge, label %if.then17

for.body.if.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %and12 = zext i16 %13 to i32
  %arrayidx = getelementptr %struct.fbtft_par, ptr %par, i32 0, i32 13, i32 6, i32 %i.047
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef %and12) #5
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %for.body.if.end21_crit_edge
  %18 = lshr i16 %data.046, 1
  %19 = load i16, ptr @fbtft_write_gpio16_wr.prev_data, align 2
  %20 = lshr i16 %19, 1
  store i16 %20, ptr @fbtft_write_gpio16_wr.prev_data, align 2
  %inc = add nuw nsw i32 %i.047, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %if.end21.if.end27_crit_edge, label %if.end21.for.body_crit_edge

if.end21.for.body_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end21.if.end27_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.end27:                                         ; preds = %if.end21.if.end27_crit_edge, %if.then6
  %21 = ptrtoint ptr %wr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %wr, align 4
  tail call void @gpiod_set_value(ptr noundef %22, i32 noundef 0) #5
  %23 = ptrtoint ptr %buf.addr.050 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %buf.addr.050, align 2
  store i16 %24, ptr @fbtft_write_gpio16_wr.prev_data, align 2
  %add.ptr = getelementptr i8, ptr %buf.addr.050, i32 2
  %sub = add i32 %len.addr.051, -2
  %tobool3.not = icmp eq i32 %sub, 0
  br i1 %tobool3.not, label %if.end27.while.end_crit_edge, label %if.end27.while.body_crit_edge

if.end27.while.body_crit_edge:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

if.end27.while.end_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %if.end27.while.end_crit_edge, %do.end.while.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @fbtft_write_gpio16_wr_latched(ptr nocapture noundef readonly %par, ptr nocapture readnone %buf, i32 %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %info = getelementptr inbounds %struct.fbtft_par, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 8
  %device = getelementptr inbounds %struct.fb_info, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16) #8
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !12, !14, !16, !17, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 16, i32 2}
!2 = !{ptr @__func__.fbtft_write_spi, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 20, i32 3}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @fbtft_write_spi._entry, !4, !"_entry", i1 false, i1 false}
!9 = !{ptr @fbtft_write_spi._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_fbtft_write_spi, !11, !"__ksymtab_fbtft_write_spi", i1 false, i1 false}
!11 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 29, i32 1}
!12 = !{ptr @__func__.fbtft_write_spi_emulate_9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 49, i32 2}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 53, i32 3}
!16 = !{ptr @fbtft_write_spi_emulate_9._entry, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @fbtft_write_spi_emulate_9._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 58, i32 3}
!20 = !{ptr @fbtft_write_spi_emulate_9._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @fbtft_write_spi_emulate_9._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @__ksymtab_fbtft_write_spi_emulate_9, !23, !"__ksymtab_fbtft_write_spi_emulate_9", i1 false, i1 false}
!23 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 83, i32 1}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 97, i32 3}
!26 = !{ptr @fbtft_read_spi._entry, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @fbtft_read_spi._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 104, i32 4}
!30 = !{ptr @fbtft_read_spi._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @fbtft_read_spi._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 111, i32 3}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 119, i32 2}
!36 = !{ptr @__ksymtab_fbtft_read_spi, !37, !"__ksymtab_fbtft_read_spi", i1 false, i1 false}
!37 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 124, i32 1}
!38 = !{ptr @fbtft_write_gpio8_wr.prev_data, !39, !"prev_data", i1 false, i1 false}
!39 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 135, i32 12}
!40 = !{ptr @__func__.fbtft_write_gpio8_wr, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 138, i32 2}
!42 = !{ptr @__ksymtab_fbtft_write_gpio8_wr, !43, !"__ksymtab_fbtft_write_gpio8_wr", i1 false, i1 false}
!43 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 178, i32 1}
!44 = !{ptr @fbtft_write_gpio16_wr.prev_data, !45, !"prev_data", i1 false, i1 false}
!45 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 185, i32 13}
!46 = !{ptr @__func__.fbtft_write_gpio16_wr, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 188, i32 2}
!48 = !{ptr @__ksymtab_fbtft_write_gpio16_wr, !49, !"__ksymtab_fbtft_write_gpio16_wr", i1 false, i1 false}
!49 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 229, i32 1}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 233, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @fbtft_write_gpio16_wr_latched._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @fbtft_write_gpio16_wr_latched._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__ksymtab_fbtft_write_gpio16_wr_latched, !56, !"__ksymtab_fbtft_write_gpio16_wr_latched", i1 false, i1 false}
!56 = !{!"../drivers/staging/fbtft/fbtft-io.c", i32 236, i32 1}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 2000, i32 1}
