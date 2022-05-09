; ModuleID = '/llk/IR_all_yes/drivers/comedi/drivers/ni_tiocmd.c_pt.bc'
source_filename = "../drivers/comedi/drivers/ni_tiocmd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ni_tio_cmd\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_cmd\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_cmd\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_cmd\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_cmd:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ni_tio_cmdtest\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_cmdtest\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_cmdtest\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_cmdtest:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_cmdtest\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_cmdtest:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ni_tio_cancel\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_cancel\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_cancel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ni_tio_acknowledge\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_acknowledge\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_acknowledge\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_acknowledge:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_acknowledge\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_acknowledge:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ni_tio_handle_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_handle_interrupt\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_handle_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_handle_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_handle_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_handle_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+ni_tio_set_mite_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_ni_tio_set_mite_channel\09\09\09\09"
module asm "\09.long\09__crc_ni_tio_set_mite_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ni_tio_set_mite_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22ni_tio_set_mite_channel\22\09\09\09\09\09"
module asm "__kstrtabns_ni_tio_set_mite_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.comedi_subdevice = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ni_gpct = type { ptr, i32, i32, i64, ptr, %struct.spinlock }
%struct.comedi_device = type { i32, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, %struct.spinlock, %struct.mutex, %struct.rw_semaphore, %struct.kref, i32, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ni_gpct_device = type { ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.spinlock, ptr }
%struct.comedi_async = type { ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.comedi_cmd, %struct.wait_queue_head, i32, ptr }
%struct.comedi_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.mite_channel = type { ptr, i32, i32, i32, ptr }

@ni_tio_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 215, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"commands only supported with DMA.  \00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ni_tio_cmd\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/comedi/drivers/ni_tiocmd.c\00", [61 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ni_tio_cmd._entry_ptr = internal global ptr @ni_tio_cmd._entry, section ".printk_index", align 4
@ni_tio_cmd._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Interrupt-driven commands not yet implemented.\0A\00", [48 x i8] zeroinitializer }, align 32
@ni_tio_cmd._entry_ptr.7 = internal global ptr @ni_tio_cmd._entry.5, section ".printk_index", align 4
@__kstrtab_ni_tio_cmd = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_cmd = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_cmd = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_cmd to i32), ptr @__kstrtab_ni_tio_cmd, ptr @__kstrtabns_ni_tio_cmd }, section "___ksymtab_gpl+ni_tio_cmd", align 4
@__kstrtab_ni_tio_cmdtest = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_cmdtest = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_cmdtest = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_cmdtest to i32), ptr @__kstrtab_ni_tio_cmdtest, ptr @__kstrtabns_ni_tio_cmdtest }, section "___ksymtab_gpl+ni_tio_cmdtest", align 4
@__kstrtab_ni_tio_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_cancel to i32), ptr @__kstrtab_ni_tio_cancel, ptr @__kstrtabns_ni_tio_cancel }, section "___ksymtab_gpl+ni_tio_cancel", align 4
@__kstrtab_ni_tio_acknowledge = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_acknowledge = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_acknowledge = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_acknowledge to i32), ptr @__kstrtab_ni_tio_acknowledge, ptr @__kstrtabns_ni_tio_acknowledge }, section "___ksymtab_gpl+ni_tio_acknowledge", align 4
@ni_tio_handle_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.2, i32 461, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Gi_Gate_Error detected.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ni_tio_handle_interrupt\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@ni_tio_handle_interrupt._entry_ptr = internal global ptr @ni_tio_handle_interrupt._entry, section ".printk_index", align 4
@ni_tio_handle_interrupt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.9, ptr @.str.2, i32 472, ptr @.str.10, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Gi_DRQ_Error detected.\0A\00", [36 x i8] zeroinitializer }, align 32
@ni_tio_handle_interrupt._entry_ptr.13 = internal global ptr @ni_tio_handle_interrupt._entry.11, section ".printk_index", align 4
@__kstrtab_ni_tio_handle_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_handle_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_handle_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_handle_interrupt to i32), ptr @__kstrtab_ni_tio_handle_interrupt, ptr @__kstrtabns_ni_tio_handle_interrupt }, section "___ksymtab_gpl+ni_tio_handle_interrupt", align 4
@__kstrtab_ni_tio_set_mite_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_ni_tio_set_mite_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_ni_tio_set_mite_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ni_tio_set_mite_channel to i32), ptr @__kstrtab_ni_tio_set_mite_channel, ptr @__kstrtabns_ni_tio_set_mite_channel }, section "___ksymtab_gpl+ni_tio_set_mite_channel", align 4
@__initcall__kmod_ni_tiocmd__229_501_ni_tiocmd_init_module6 = internal global ptr @ni_tiocmd_init_module, section ".initcall6.init", align 4
@__exitcall_ni_tiocmd_cleanup_module = internal global ptr @ni_tiocmd_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [44 x i8] c"ni_tiocmd.author=Comedi <comedi@comedi.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [77 x i8] c"ni_tiocmd.description=Comedi command support for NI general-purpose counters\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [48 x i8] c"ni_tiocmd.file=drivers/comedi/drivers/ni_tiocmd\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [22 x i8] c"ni_tiocmd.license=GPL\00", section ".modinfo", align 1
@ni_tio_output_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"output commands not yet implemented.\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ni_tio_output_cmd\00", [46 x i8] zeroinitializer }, align 32
@ni_tio_output_cmd._entry_ptr = internal global ptr @ni_tio_output_cmd._entry, section ".printk_index", align 4
@ni_tio_acknowledge_and_confirm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 435, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: Gi_Permanent_Stale_Data detected.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ni_tio_acknowledge_and_confirm\00", [33 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ni_tio_acknowledge_and_confirm._entry_ptr = internal global ptr @ni_tio_acknowledge_and_confirm._entry, section ".printk_index", align 4
@switch.table.ni_tio_cmd = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 16, i32 32, i32 32], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 64]
@__sancov_gen_cov_switch_values.19 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 128, i64 256]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 214, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 216, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 460, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 471, i32 4 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 155, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [38 x i8] c"../drivers/comedi/drivers/ni_tiocmd.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 433, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [24 x i8] c"switch.table.ni_tio_cmd\00", align 1
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_ni_tiocmd_cleanup_module, ptr @__initcall__kmod_ni_tiocmd__229_501_ni_tiocmd_init_module6, ptr @__ksymtab_ni_tio_acknowledge, ptr @__ksymtab_ni_tio_cancel, ptr @__ksymtab_ni_tio_cmd, ptr @__ksymtab_ni_tio_cmdtest, ptr @__ksymtab_ni_tio_handle_interrupt, ptr @__ksymtab_ni_tio_set_mite_channel, ptr @ni_tio_acknowledge_and_confirm._entry, ptr @ni_tio_acknowledge_and_confirm._entry_ptr, ptr @ni_tio_cmd._entry, ptr @ni_tio_cmd._entry.5, ptr @ni_tio_cmd._entry_ptr, ptr @ni_tio_cmd._entry_ptr.7, ptr @ni_tio_handle_interrupt._entry, ptr @ni_tio_handle_interrupt._entry.11, ptr @ni_tio_handle_interrupt._entry_ptr, ptr @ni_tio_handle_interrupt._entry_ptr.13, ptr @ni_tio_output_cmd._entry, ptr @ni_tio_output_cmd._entry_ptr, ptr @ni_tiocmd_cleanup_module, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @switch.table.ni_tio_cmd], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_cmd._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_handle_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_handle_interrupt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_output_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ni_tio_acknowledge_and_confirm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ni_tio_cmd to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_tio_cmd(ptr nocapture readnone %dev, ptr noundef %s) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async1 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async1, align 4
  %lock = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 5
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mite_chan = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %mite_chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mite_chan, align 8
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end10, label %if.else

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 8
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str) #9
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %class_dev17 = getelementptr inbounds %struct.comedi_device, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %class_dev17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %class_dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.6) #9
  br label %if.end29

if.else:                                          ; preds = %entry
  %18 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %async1, align 4
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %private, align 4
  %counter_index.i = getelementptr inbounds %struct.ni_gpct, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %counter_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %counter_index.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %routing_tables2.i = getelementptr inbounds %struct.ni_gpct_device, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %routing_tables2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %routing_tables2.i, align 4
  %scan_begin_src.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 4
  %28 = ptrtoint ptr %scan_begin_src.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scan_begin_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %29)
  %cmp.i = icmp eq i32 %29, 64
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %scan_begin_arg.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 5
  br label %if.then7.i

if.else.i:                                        ; preds = %if.else
  %convert_src.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 6
  %30 = ptrtoint ptr %convert_src.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %convert_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %31)
  %cmp4.i = icmp eq i32 %31, 64
  br i1 %cmp4.i, label %if.then5.i, label %if.else.i.if.end19.i_crit_edge

if.else.i.if.end19.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  %convert_arg.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 7
  br label %if.then7.i

if.then7.i:                                       ; preds = %if.then5.i, %if.then.i
  %gate_source.0.ph.in.i = phi ptr [ %scan_begin_arg.i, %if.then.i ], [ %convert_arg.i, %if.then5.i ]
  %32 = ptrtoint ptr %gate_source.0.ph.in.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %gate_source.0.ph.i = load i32, ptr %gate_source.0.ph.in.i, align 4
  %and.i = and i32 %gate_source.0.ph.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i)
  %cmp8.i = icmp ugt i32 %and.i, 32767
  br i1 %cmp8.i, label %ni_get_reg_value.exit.i, label %if.else16.i

ni_get_reg_value.exit.i:                          ; preds = %if.then7.i
  %and11.i = and i32 %23, 7
  %add.i = add nuw nsw i32 %and11.i, 32852
  %call4.i.i.i = tail call signext i8 @ni_route_to_register(i32 noundef %and.i, i32 noundef %add.i, ptr noundef %27) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call4.i.i.i)
  %cmp12.i = icmp slt i8 %call4.i.i.i, 0
  br i1 %cmp12.i, label %ni_get_reg_value.exit.i.if.end29_crit_edge, label %cleanup.i

ni_get_reg_value.exit.i.if.end29_crit_edge:       ; preds = %ni_get_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

cleanup.i:                                        ; preds = %ni_get_reg_value.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i56.i = zext i8 %call4.i.i.i to i32
  %call15.i = tail call i32 @ni_tio_set_gate_src_raw(ptr noundef %21, i32 noundef 0, i32 noundef %conv.i56.i) #6
  br label %if.end19.i

if.else16.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = tail call i32 @ni_tio_set_gate_src(ptr noundef %21, i32 noundef 0, i32 noundef %gate_source.0.ph.i) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.else16.i, %cleanup.i, %if.else.i.if.end19.i_crit_edge
  %retval3.1.i = phi i32 [ %call15.i, %cleanup.i ], [ %call17.i, %if.else16.i ], [ 0, %if.else.i.if.end19.i_crit_edge ]
  %flags.i = getelementptr inbounds %struct.comedi_async, ptr %19, i32 0, i32 17, i32 1
  %33 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags.i, align 4
  %and20.i = and i32 %34, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.i)
  %tobool21.not.i = icmp eq i32 %and20.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.ni_tio_cmd_setup.exit_crit_edge, label %if.then22.i

if.end19.i.ni_tio_cmd_setup.exit_crit_edge:       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_tio_cmd_setup.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %add23.i = add i32 %23, 66
  %rem.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool24.not.i = icmp eq i32 %rem.i, 0
  %cond.i = select i1 %tobool24.not.i, i32 256, i32 1024
  tail call void @ni_tio_set_bits(ptr noundef %21, i32 noundef %add23.i, i32 noundef %cond.i, i32 noundef %cond.i) #6
  br label %ni_tio_cmd_setup.exit

ni_tio_cmd_setup.exit:                            ; preds = %if.then22.i, %if.end19.i.ni_tio_cmd_setup.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval3.1.i)
  %cmp19 = icmp eq i32 %retval3.1.i, 0
  br i1 %cmp19, label %if.then21, label %ni_tio_cmd_setup.exit.if.end29_crit_edge

ni_tio_cmd_setup.exit.if.end29_crit_edge:         ; preds = %ni_tio_cmd_setup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then21:                                        ; preds = %ni_tio_cmd_setup.exit
  %flags22 = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 1
  %35 = ptrtoint ptr %flags22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags22, align 4
  %and = and i32 %36, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %private, align 4
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %38, align 8
  br i1 %tobool23.not, label %if.else26, label %if.then24

if.then24:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %class_dev.i = getelementptr inbounds %struct.comedi_device, ptr %42, i32 0, i32 4
  %43 = ptrtoint ptr %class_dev.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %class_dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.14) #9
  br label %if.end29

if.else26:                                        ; preds = %if.then21
  %routing_tables2.i42 = getelementptr inbounds %struct.ni_gpct_device, ptr %40, i32 0, i32 9
  %45 = ptrtoint ptr %routing_tables2.i42 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %routing_tables2.i42, align 4
  %counter_index.i43 = getelementptr inbounds %struct.ni_gpct, ptr %38, i32 0, i32 1
  %47 = ptrtoint ptr %counter_index.i43 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %counter_index.i43, align 4
  %49 = ptrtoint ptr %async1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %async1, align 4
  %prealloc_bufsz.i = getelementptr inbounds %struct.comedi_async, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prealloc_bufsz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %prealloc_bufsz.i, align 4
  %call.i = tail call i32 @comedi_buf_write_alloc(ptr noundef %s, i32 noundef %52) #6
  %mite_chan.i = getelementptr inbounds %struct.ni_gpct, ptr %38, i32 0, i32 4
  %53 = ptrtoint ptr %mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %mite_chan.i, align 8
  %dir.i = getelementptr inbounds %struct.mite_channel, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %dir.i, align 4
  %variant.i = getelementptr inbounds %struct.ni_gpct_device, ptr %40, i32 0, i32 3
  %56 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %57)
  %58 = icmp ult i32 %57, 3
  br i1 %58, label %switch.lookup, label %if.else26.sw.epilog.i_crit_edge

if.else26.sw.epilog.i_crit_edge:                  ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.ni_tio_cmd, i32 0, i32 %57
  %59 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %59)
  %switch.load = load i32, ptr %switch.gep, align 4
  %60 = ptrtoint ptr %mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mite_chan.i, align 8
  tail call void @mite_prep_dma(ptr noundef %61, i32 noundef %switch.load, i32 noundef 32) #6
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %if.else26.sw.epilog.i_crit_edge
  %add.i44 = add i32 %48, 4
  tail call void @ni_tio_set_bits(ptr noundef %38, i32 noundef %add.i44, i32 noundef 2, i32 noundef 0) #6
  %62 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %38, align 8
  %64 = ptrtoint ptr %counter_index.i43 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %counter_index.i43, align 4
  %add.i.i = add i32 %65, 28
  tail call void @ni_tio_set_bits(ptr noundef %38, i32 noundef %add.i.i, i32 noundef 3, i32 noundef 1) #6
  %variant.i.i = getelementptr inbounds %struct.ni_gpct_device, ptr %63, i32 0, i32 3
  %66 = ptrtoint ptr %variant.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %variant.i.i, align 4
  %.off.i.i = add i32 %67, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i.i)
  %switch.i.i = icmp ult i32 %.off.i.i, 2
  br i1 %switch.i.i, label %sw.bb.i.i, label %sw.epilog.i.ni_tio_configure_dma.exit.i_crit_edge

sw.epilog.i.ni_tio_configure_dma.exit.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_tio_configure_dma.exit.i

sw.bb.i.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i.i = add i32 %65, 48
  tail call void @ni_tio_set_bits(ptr noundef %38, i32 noundef %add15.i.i, i32 noundef 7, i32 noundef 5) #6
  br label %ni_tio_configure_dma.exit.i

ni_tio_configure_dma.exit.i:                      ; preds = %sw.bb.i.i, %sw.epilog.i.ni_tio_configure_dma.exit.i_crit_edge
  %start_src.i = getelementptr inbounds %struct.comedi_async, ptr %50, i32 0, i32 17, i32 2
  %68 = ptrtoint ptr %start_src.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %start_src.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %69)
  %cmp.i45 = icmp eq i32 %69, 128
  %inttrig.i = getelementptr inbounds %struct.comedi_async, ptr %50, i32 0, i32 20
  br i1 %cmp.i45, label %if.then.i46, label %if.else.i47

if.then.i46:                                      ; preds = %ni_tio_configure_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %inttrig.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @ni_tio_input_inttrig, ptr %inttrig.i, align 4
  br label %if.end29

if.else.i47:                                      ; preds = %ni_tio_configure_dma.exit.i
  %71 = ptrtoint ptr %inttrig.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr null, ptr %inttrig.i, align 4
  %72 = ptrtoint ptr %mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mite_chan.i, align 8
  tail call void @mite_dma_arm(ptr noundef %73) #6
  %74 = ptrtoint ptr %start_src.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %start_src.i, align 4
  %76 = zext i32 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values)
  switch i32 %75, label %if.else.i47.if.end29_crit_edge [
    i32 2, label %if.then12.i
    i32 64, label %if.then17.i
  ]

if.else.i47.if.end29_crit_edge:                   ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then12.i:                                      ; preds = %if.else.i47
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = tail call i32 @ni_tio_arm(ptr noundef %38, i1 noundef zeroext true, i32 noundef 0) #6
  br label %if.end29

if.then17.i:                                      ; preds = %if.else.i47
  %start_arg.i = getelementptr inbounds %struct.comedi_async, ptr %50, i32 0, i32 17, i32 3
  %77 = ptrtoint ptr %start_arg.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %start_arg.i, align 4
  %and.i48 = and i32 %78, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 32767, i32 %and.i48)
  %cmp18.i = icmp ugt i32 %and.i48, 32767
  br i1 %cmp18.i, label %ni_get_reg_value.exit.i51, label %if.then17.i.if.end.i_crit_edge

if.then17.i.if.end.i_crit_edge:                   ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

ni_get_reg_value.exit.i51:                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #8
  %and20.i49 = and i32 %48, 7
  %add21.i = add nuw nsw i32 %and20.i49, 32892
  %call4.i.i.i50 = tail call signext i8 @ni_route_to_register(i32 noundef %and.i48, i32 noundef %add21.i, ptr noundef %46) #6
  %conv.i.i = sext i8 %call4.i.i.i50 to i32
  %or.i = or i32 %conv.i.i, 4096
  br label %if.end.i

if.end.i:                                         ; preds = %ni_get_reg_value.exit.i51, %if.then17.i.if.end.i_crit_edge
  %reg.0.i = phi i32 [ %or.i, %ni_get_reg_value.exit.i51 ], [ %and.i48, %if.then17.i.if.end.i_crit_edge ]
  %call23.i = tail call i32 @ni_tio_arm(ptr noundef %38, i1 noundef zeroext true, i32 noundef %reg.0.i) #6
  br label %if.end29

if.end29:                                         ; preds = %if.end.i, %if.then12.i, %if.else.i47.if.end29_crit_edge, %if.then.i46, %if.then24, %ni_tio_cmd_setup.exit.if.end29_crit_edge, %ni_get_reg_value.exit.i.if.end29_crit_edge, %do.end10
  %retval3.0 = phi i32 [ -524, %if.then24 ], [ %retval3.1.i, %ni_tio_cmd_setup.exit.if.end29_crit_edge ], [ -5, %do.end10 ], [ 0, %if.then.i46 ], [ %call13.i, %if.then12.i ], [ %call23.i, %if.end.i ], [ 0, %if.else.i47.if.end29_crit_edge ], [ -22, %ni_get_reg_value.exit.i.if.end29_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #6
  ret i32 %retval3.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_tio_cmdtest(ptr nocapture readnone %dev, ptr nocapture noundef readonly %s, ptr nocapture noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %counter_index = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %counter_index, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %routing_tables1 = getelementptr inbounds %struct.ni_gpct_device, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %routing_tables1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %routing_tables1, align 4
  %variant.i = getelementptr inbounds %struct.ni_gpct_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %variant.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i.not = icmp eq i32 %9, 0
  %spec.select = select i1 %cmp.i.not, i32 386, i32 450
  %start_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 2
  %10 = ptrtoint ptr %start_src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start_src, align 4
  %and.i = and i32 %spec.select, %11
  store i32 %and.i, ptr %start_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i114 = icmp ne i32 %and.i, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %11)
  %cmp1.not.i = icmp eq i32 %and.i, %11
  %or.cond.i = and i1 %cmp.i114, %cmp1.not.i
  %scan_begin_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 4
  %12 = ptrtoint ptr %scan_begin_src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scan_begin_src, align 4
  %and.i115 = and i32 %13, 324
  store i32 %and.i115, ptr %scan_begin_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i115)
  %cmp.i116 = icmp ne i32 %and.i115, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i115, i32 %13)
  %cmp1.not.i117 = icmp eq i32 %and.i115, %13
  %or.cond.i118 = and i1 %cmp.i116, %cmp1.not.i117
  %14 = select i1 %or.cond.i, i1 %or.cond.i118, i1 false
  %convert_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 6
  %15 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %convert_src, align 4
  %and.i120 = and i32 %16, 322
  store i32 %and.i120, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i120)
  %cmp.i121 = icmp ne i32 %and.i120, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i120, i32 %16)
  %cmp1.not.i122 = icmp eq i32 %and.i120, %16
  %or.cond.i123 = and i1 %cmp.i121, %cmp1.not.i122
  %17 = select i1 %14, i1 %or.cond.i123, i1 false
  %scan_end_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 8
  %18 = ptrtoint ptr %scan_end_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scan_end_src, align 4
  %and.i125 = and i32 %19, 32
  store i32 %and.i125, ptr %scan_end_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i125)
  %cmp.i126 = icmp ne i32 %and.i125, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i125, i32 %19)
  %cmp1.not.i127 = icmp eq i32 %and.i125, %19
  %or.cond.i128 = and i1 %cmp.i126, %cmp1.not.i127
  %20 = select i1 %17, i1 %or.cond.i128, i1 false
  %stop_src = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 10
  %21 = ptrtoint ptr %stop_src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %stop_src, align 4
  %and.i130 = and i32 %22, 1
  store i32 %and.i130, ptr %stop_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %23 = icmp eq i32 %22, 1
  %24 = select i1 %20, i1 %23, i1 false
  br i1 %24, label %if.end14, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %entry
  %25 = tail call i32 @llvm.ctpop.i32(i32 %11) #6, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp.not.i = icmp ult i32 %25, 2
  %26 = tail call i32 @llvm.ctpop.i32(i32 %13) #6, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp.not.i135 = icmp ult i32 %26, 2
  %27 = tail call i32 @llvm.ctpop.i32(i32 %16) #6, !range !65
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %cmp.not.i137 = icmp ult i32 %27, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.not = icmp eq i32 %16, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp26.not = icmp eq i32 %13, 4
  %or.cond = select i1 %cmp.not, i1 true, i1 %cmp26.not
  %28 = select i1 %or.cond, i1 %cmp.not.i, i1 false
  %29 = select i1 %28, i1 %cmp.not.i135, i1 false
  %or.cond171 = select i1 %29, i1 %cmp.not.i137, i1 false
  br i1 %or.cond171, label %if.end32, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end14
  %30 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %11, label %if.end32.sw.epilog_crit_edge [
    i32 2, label %if.end32.sw.bb_crit_edge
    i32 128, label %if.end32.sw.bb_crit_edge172
    i32 256, label %if.end32.sw.bb_crit_edge173
  ]

if.end32.sw.bb_crit_edge173:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end32.sw.bb_crit_edge172:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end32.sw.bb_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end32.sw.bb_crit_edge, %if.end32.sw.bb_crit_edge172, %if.end32.sw.bb_crit_edge173
  %start_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 3
  %31 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.not.i139 = icmp eq i32 %32, 0
  br i1 %cmp.not.i139, label %sw.bb.sw.epilog_crit_edge, label %if.then.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %start_arg to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %start_arg, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %sw.bb.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge
  %err.1 = phi i32 [ 0, %if.end32.sw.epilog_crit_edge ], [ -22, %if.then.i ], [ 0, %sw.bb.sw.epilog_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp37.not = icmp eq i32 %13, 64
  %scan_begin_arg41 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 5
  %34 = ptrtoint ptr %scan_begin_arg41 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scan_begin_arg41, align 4
  br i1 %cmp37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp.not.i141 = icmp eq i32 %35, 0
  br i1 %cmp.not.i141, label %if.then38.if.end45_crit_edge, label %if.then.i142

if.then38.if.end45_crit_edge:                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then.i142:                                     ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %scan_begin_arg41 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %scan_begin_arg41, align 4
  br label %if.end45

if.else:                                          ; preds = %sw.epilog
  %and = and i32 %35, 65535
  %and42 = and i32 %3, 7
  %add = add nuw nsw i32 %and42, 32852
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and)
  %cmp.i.i.i = icmp ult i32 %and, 32768
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.end3.i.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i = trunc i32 %35 to i8
  %call.i.i.i.i = tail call i32 @ni_find_route_source(i8 noundef zeroext %conv.i.i.i, i32 noundef %add, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %call.i.i.i.i, -1
  %conv..i.i.i = select i1 %cmp.i.i.i.i, i8 %conv.i.i.i, i8 -1
  br label %ni_check_trigger_arg.exit

if.end3.i.i.i:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i = tail call signext i8 @ni_route_to_register(i32 noundef %and, i32 noundef %add, ptr noundef %7) #6
  br label %ni_check_trigger_arg.exit

ni_check_trigger_arg.exit:                        ; preds = %if.end3.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i8 [ %call4.i.i.i, %if.end3.i.i.i ], [ %conv..i.i.i, %if.then.i.i.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i.i)
  %cmp.i.i = icmp slt i8 %retval.0.i.i.i, 0
  %..i.i = select i1 %cmp.i.i, i32 -22, i32 0
  br label %if.end45

if.end45:                                         ; preds = %ni_check_trigger_arg.exit, %if.then.i142, %if.then38.if.end45_crit_edge
  %call39.pn = phi i32 [ %..i.i, %ni_check_trigger_arg.exit ], [ -22, %if.then.i142 ], [ 0, %if.then38.if.end45_crit_edge ]
  %err.2 = or i32 %call39.pn, %err.1
  %37 = ptrtoint ptr %convert_src to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %convert_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %38)
  %cmp47.not = icmp eq i32 %38, 64
  %convert_arg52 = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 7
  %39 = ptrtoint ptr %convert_arg52 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %convert_arg52, align 4
  br i1 %cmp47.not, label %if.else51, label %if.then48

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %cmp.not.i145 = icmp eq i32 %40, 0
  br i1 %cmp.not.i145, label %if.then48.if.end58_crit_edge, label %if.then.i146

if.then48.if.end58_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then.i146:                                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %convert_arg52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %convert_arg52, align 4
  br label %if.end58

if.else51:                                        ; preds = %if.end45
  %and53 = and i32 %40, 65535
  %and54 = and i32 %3, 7
  %add55 = add nuw nsw i32 %and54, 32852
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %and53)
  %cmp.i.i.i149 = icmp ult i32 %and53, 32768
  br i1 %cmp.i.i.i149, label %if.then.i.i.i154, label %if.end3.i.i.i156

if.then.i.i.i154:                                 ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i.i150 = trunc i32 %40 to i8
  %call.i.i.i.i151 = tail call i32 @ni_find_route_source(i8 noundef zeroext %conv.i.i.i150, i32 noundef %add55, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i151)
  %cmp.i.i.i.i152 = icmp sgt i32 %call.i.i.i.i151, -1
  %conv..i.i.i153 = select i1 %cmp.i.i.i.i152, i8 %conv.i.i.i150, i8 -1
  br label %ni_check_trigger_arg.exit160

if.end3.i.i.i156:                                 ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #8
  %call4.i.i.i155 = tail call signext i8 @ni_route_to_register(i32 noundef %and53, i32 noundef %add55, ptr noundef %7) #6
  br label %ni_check_trigger_arg.exit160

ni_check_trigger_arg.exit160:                     ; preds = %if.end3.i.i.i156, %if.then.i.i.i154
  %retval.0.i.i.i157 = phi i8 [ %call4.i.i.i155, %if.end3.i.i.i156 ], [ %conv..i.i.i153, %if.then.i.i.i154 ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %retval.0.i.i.i157)
  %cmp.i.i158 = icmp slt i8 %retval.0.i.i.i157, 0
  %..i.i159 = select i1 %cmp.i.i158, i32 -22, i32 0
  br label %if.end58

if.end58:                                         ; preds = %ni_check_trigger_arg.exit160, %if.then.i146, %if.then48.if.end58_crit_edge
  %call49.pn = phi i32 [ %..i.i159, %ni_check_trigger_arg.exit160 ], [ -22, %if.then.i146 ], [ 0, %if.then48.if.end58_crit_edge ]
  %err.3 = or i32 %err.2, %call49.pn
  %scan_end_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 9
  %chanlist_len = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 13
  %42 = ptrtoint ptr %chanlist_len to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chanlist_len, align 4
  %44 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %scan_end_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %43)
  %cmp.not.i161 = icmp eq i32 %45, %43
  br i1 %cmp.not.i161, label %if.end58.comedi_check_trigger_arg_is.exit164_crit_edge, label %if.then.i162

if.end58.comedi_check_trigger_arg_is.exit164_crit_edge: ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit164

if.then.i162:                                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %scan_end_arg to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %scan_end_arg, align 4
  br label %comedi_check_trigger_arg_is.exit164

comedi_check_trigger_arg_is.exit164:              ; preds = %if.then.i162, %if.end58.comedi_check_trigger_arg_is.exit164_crit_edge
  %retval.0.i163 = phi i32 [ -22, %if.then.i162 ], [ 0, %if.end58.comedi_check_trigger_arg_is.exit164_crit_edge ]
  %or60 = or i32 %err.3, %retval.0.i163
  %stop_arg = getelementptr inbounds %struct.comedi_cmd, ptr %cmd, i32 0, i32 11
  %47 = ptrtoint ptr %stop_arg to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %stop_arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp.not.i165 = icmp eq i32 %48, 0
  br i1 %cmp.not.i165, label %comedi_check_trigger_arg_is.exit164.comedi_check_trigger_arg_is.exit168_crit_edge, label %if.then.i166

comedi_check_trigger_arg_is.exit164.comedi_check_trigger_arg_is.exit168_crit_edge: ; preds = %comedi_check_trigger_arg_is.exit164
  call void @__sanitizer_cov_trace_pc() #8
  br label %comedi_check_trigger_arg_is.exit168

if.then.i166:                                     ; preds = %comedi_check_trigger_arg_is.exit164
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %stop_arg to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %stop_arg, align 4
  br label %comedi_check_trigger_arg_is.exit168

comedi_check_trigger_arg_is.exit168:              ; preds = %if.then.i166, %comedi_check_trigger_arg_is.exit164.comedi_check_trigger_arg_is.exit168_crit_edge
  %retval.0.i167 = phi i32 [ -22, %if.then.i166 ], [ 0, %comedi_check_trigger_arg_is.exit164.comedi_check_trigger_arg_is.exit168_crit_edge ]
  %or62 = or i32 %or60, %retval.0.i167
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or62)
  %tobool63.not = icmp eq i32 %or62, 0
  %. = select i1 %tobool63.not, i32 0, i32 3
  br label %cleanup

cleanup:                                          ; preds = %comedi_check_trigger_arg_is.exit168, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %entry.cleanup_crit_edge ], [ %., %comedi_check_trigger_arg_is.exit168 ], [ 2, %if.end14.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ni_tio_cancel(ptr noundef %counter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_index = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter_index, align 4
  %call = tail call i32 @ni_tio_arm(ptr noundef %counter, i1 noundef zeroext false, i32 noundef 0) #6
  %lock = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mite_chan = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 4
  %2 = ptrtoint ptr %mite_chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mite_chan, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mite_dma_disarm(ptr noundef nonnull %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #6
  %4 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %counter, align 8
  %6 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %counter_index, align 4
  %add.i = add i32 %7, 28
  tail call void @ni_tio_set_bits(ptr noundef %counter, i32 noundef %add.i, i32 noundef 3, i32 noundef 0) #6
  %variant.i = getelementptr inbounds %struct.ni_gpct_device, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %variant.i, align 4
  %.off.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %sw.bb.i, label %if.end.ni_tio_configure_dma.exit_crit_edge

if.end.ni_tio_configure_dma.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %ni_tio_configure_dma.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %add15.i = add i32 %7, 48
  tail call void @ni_tio_set_bits(ptr noundef %counter, i32 noundef %add15.i, i32 noundef 7, i32 noundef 2) #6
  br label %ni_tio_configure_dma.exit

ni_tio_configure_dma.exit:                        ; preds = %sw.bb.i, %if.end.ni_tio_configure_dma.exit_crit_edge
  %add = add i32 %1, 66
  %rem = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool8.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool8.not, i32 256, i32 1024
  tail call void @ni_tio_set_bits(ptr noundef %counter, i32 noundef %add, i32 noundef %cond, i32 noundef 0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_arm(ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_dma_disarm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_set_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_tio_acknowledge(ptr noundef %counter) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ni_tio_acknowledge_and_confirm(ptr noundef %counter, ptr noundef null, ptr noundef null, ptr noundef null)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ni_tio_acknowledge_and_confirm(ptr noundef %counter, ptr noundef writeonly %gate_error, ptr noundef writeonly %tc_error, ptr noundef writeonly %perm_stale_data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_index = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter_index, align 4
  %div112 = lshr i32 %1, 1
  %add = add nuw i32 %div112, 40
  %call = tail call i32 @ni_tio_read(ptr noundef %counter, i32 noundef %add) #6
  %add1 = add i32 %1, 62
  %call2 = tail call i32 @ni_tio_read(ptr noundef %counter, i32 noundef %add1) #6
  %tobool.not = icmp eq ptr %gate_error, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %gate_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %gate_error, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %tobool4.not = icmp eq ptr %tc_error, null
  br i1 %tobool4.not, label %if.end.if.end6_crit_edge, label %if.then5

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %tc_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %tc_error, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.end.if.end6_crit_edge
  %tobool7.not = icmp eq ptr %perm_stale_data, null
  br i1 %tobool7.not, label %if.end6.if.end9_crit_edge, label %if.then8

if.end6.if.end9_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %perm_stale_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %perm_stale_data, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end6.if.end9_crit_edge
  %rem = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool11.not = icmp eq i32 %rem, 0
  %cond = select i1 %tobool11.not, i32 16384, i32 32768
  %and = and i32 %cond, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.end9.if.end23_crit_edge, label %if.then13

if.end9.if.end23_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then13:                                        ; preds = %if.end9
  %cond16 = select i1 %tobool11.not, i32 32, i32 2
  br i1 %tobool.not, label %if.then13.if.end23_crit_edge, label %if.then18

if.then13.if.end23_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then18:                                        ; preds = %if.then13
  %5 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %counter, align 8
  %variant = getelementptr inbounds %struct.ni_gpct_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %variant, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp.not = icmp eq i32 %8, 2
  br i1 %cmp.not, label %if.then18.if.end23_crit_edge, label %if.then20

if.then18.if.end23_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %gate_error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %gate_error, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then18.if.end23_crit_edge, %if.then13.if.end23_crit_edge, %if.end9.if.end23_crit_edge
  %ack.0 = phi i32 [ %cond16, %if.then20 ], [ %cond16, %if.then18.if.end23_crit_edge ], [ %cond16, %if.then13.if.end23_crit_edge ], [ 0, %if.end9.if.end23_crit_edge ]
  %cond27 = select i1 %tobool11.not, i32 4096, i32 8192
  %and28 = and i32 %cond27, %call
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end23.if.end38_crit_edge, label %if.then30

if.end23.if.end38_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then30:                                        ; preds = %if.end23
  %cond33 = select i1 %tobool11.not, i32 64, i32 4
  %or34 = or i32 %ack.0, %cond33
  br i1 %tobool4.not, label %if.then30.if.end38_crit_edge, label %if.then36

if.then30.if.end38_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then36:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %tc_error to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %tc_error, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then30.if.end38_crit_edge, %if.end23.if.end38_crit_edge
  %ack.1 = phi i32 [ %or34, %if.then36 ], [ %or34, %if.then30.if.end38_crit_edge ], [ %ack.0, %if.end23.if.end38_crit_edge ]
  %and40 = shl i32 %call2, 11
  %11 = and i32 %and40, 16384
  %12 = or i32 %ack.1, %11
  %and46 = and i32 %call2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.end38.if.end54_crit_edge, label %if.then48

if.end38.if.end54_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

if.then48:                                        ; preds = %if.end38
  %13 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %counter, align 8
  %variant.i = getelementptr inbounds %struct.ni_gpct_device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %variant.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %variant.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %16, label %if.then48.if.end54_crit_edge [
    i32 1, label %if.then48.should_ack_gate.exit.thread_crit_edge
    i32 2, label %if.then48.should_ack_gate.exit.thread_crit_edge128
    i32 0, label %do.body3.i
  ]

if.then48.should_ack_gate.exit.thread_crit_edge128: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %should_ack_gate.exit.thread

if.then48.should_ack_gate.exit.thread_crit_edge:  ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %should_ack_gate.exit.thread

if.then48.if.end54_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54

do.body3.i:                                       ; preds = %if.then48
  %lock.i = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 5
  %call4.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %mite_chan.i = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 4
  %18 = ptrtoint ptr %mite_chan.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mite_chan.i, align 8
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %do.body3.i.should_ack_gate.exit_crit_edge, label %lor.lhs.false.i

do.body3.i.should_ack_gate.exit_crit_edge:        ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %should_ack_gate.exit

lor.lhs.false.i:                                  ; preds = %do.body3.i
  %dir.i = getelementptr inbounds %struct.mite_channel, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp8.not.i = icmp eq i32 %21, 0
  br i1 %cmp8.not.i, label %lor.lhs.false10.i, label %lor.lhs.false.i.should_ack_gate.exit_crit_edge

lor.lhs.false.i.should_ack_gate.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %should_ack_gate.exit

lor.lhs.false10.i:                                ; preds = %lor.lhs.false.i
  %call12.i = tail call i32 @mite_done(ptr noundef nonnull %19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %should_ack_gate.exit.thread121, label %lor.lhs.false10.i.should_ack_gate.exit_crit_edge

lor.lhs.false10.i.should_ack_gate.exit_crit_edge: ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %should_ack_gate.exit

should_ack_gate.exit.thread121:                   ; preds = %lor.lhs.false10.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #6
  br label %if.end54

should_ack_gate.exit.thread:                      ; preds = %if.then48.should_ack_gate.exit.thread_crit_edge, %if.then48.should_ack_gate.exit.thread_crit_edge128
  %or52116 = or i32 %12, 32768
  br label %if.then56

should_ack_gate.exit:                             ; preds = %lor.lhs.false10.i.should_ack_gate.exit_crit_edge, %lor.lhs.false.i.should_ack_gate.exit_crit_edge, %do.body3.i.should_ack_gate.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call4.i) #6
  %or52 = or i32 %12, 32768
  br label %if.then56

if.end54:                                         ; preds = %should_ack_gate.exit.thread121, %if.then48.if.end54_crit_edge, %if.end38.if.end54_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool55.not = icmp eq i32 %12, 0
  br i1 %tobool55.not, label %if.end54.if.end58_crit_edge, label %if.end54.if.then56_crit_edge

if.end54.if.then56_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then56

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then56:                                        ; preds = %if.end54.if.then56_crit_edge, %should_ack_gate.exit, %should_ack_gate.exit.thread
  %ack.3127 = phi i32 [ %12, %if.end54.if.then56_crit_edge ], [ %or52116, %should_ack_gate.exit.thread ], [ %or52, %should_ack_gate.exit ]
  %add57 = add i32 %1, 58
  tail call void @ni_tio_write(ptr noundef %counter, i32 noundef %ack.3127, i32 noundef %add57) #6
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end54.if.end58_crit_edge
  %add59 = add i32 %1, 16
  %call60 = tail call i32 @ni_tio_get_soft_copy(ptr noundef %counter, i32 noundef %add59) #6
  %and61 = and i32 %call60, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end58.if.end78_crit_edge, label %if.then63

if.end58.if.end78_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then63:                                        ; preds = %if.end58
  %add65 = add nuw i32 %div112, 46
  %call66 = tail call i32 @ni_tio_read(ptr noundef %counter, i32 noundef %add65) #6
  %and70 = and i32 %call66, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.then63.if.end78_crit_edge, label %do.end

if.then63.if.end78_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

do.end:                                           ; preds = %if.then63
  %22 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %counter, align 8
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %23, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %class_dev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17) #9
  br i1 %tobool7.not, label %do.end.if.end78_crit_edge, label %if.then75

do.end.if.end78_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78

if.then75:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %perm_stale_data to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %perm_stale_data, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then75, %do.end.if.end78_crit_edge, %if.then63.if.end78_crit_edge, %if.end58.if.end78_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_tio_handle_interrupt(ptr noundef %counter, ptr noundef %s) #0 align 64 {
entry:
  %gate_error = alloca i32, align 4
  %tc_error = alloca i32, align 4
  %perm_stale_data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %counter_index = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 1
  %0 = ptrtoint ptr %counter_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %counter_index, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %gate_error) #6
  %2 = ptrtoint ptr %gate_error to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %gate_error, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tc_error) #6
  %3 = ptrtoint ptr %tc_error to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tc_error, align 4, !annotation !66
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %perm_stale_data) #6
  %4 = ptrtoint ptr %perm_stale_data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %perm_stale_data, align 4, !annotation !66
  call fastcc void @ni_tio_acknowledge_and_confirm(ptr noundef %counter, ptr noundef nonnull %gate_error, ptr noundef nonnull %tc_error, ptr noundef nonnull %perm_stale_data)
  %5 = ptrtoint ptr %gate_error to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gate_error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %counter, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %class_dev = getelementptr inbounds %struct.comedi_device, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %class_dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %class_dev, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %12, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #9
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %13 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %async, align 4
  %events = getelementptr inbounds %struct.comedi_async, ptr %14, i32 0, i32 16
  %15 = ptrtoint ptr %events to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %events, align 4
  %or = or i32 %16, 32
  store i32 %or, ptr %events, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %perm_stale_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %perm_stale_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool1.not = icmp eq i32 %18, 0
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %async3 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %19 = ptrtoint ptr %async3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %async3, align 4
  %events4 = getelementptr inbounds %struct.comedi_async, ptr %20, i32 0, i32 16
  %21 = ptrtoint ptr %events4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %events4, align 4
  %or5 = or i32 %22, 16
  store i32 %or5, ptr %events4, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then2, %if.end.if.end6_crit_edge
  %23 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %counter, align 8
  %variant = getelementptr inbounds %struct.ni_gpct_device, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %variant, align 4
  %.off = add i32 %26, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %sw.bb, label %if.end6.do.body21_crit_edge

if.end6.do.body21_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

sw.bb:                                            ; preds = %if.end6
  %add = add i32 %1, 52
  %call = call i32 @ni_tio_read(ptr noundef %counter, i32 noundef %add) #6
  %and = and i32 %call, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %sw.bb.do.body21_crit_edge, label %do.end12

sw.bb.do.body21_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body21

do.end12:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %counter, align 8
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %class_dev15 = getelementptr inbounds %struct.comedi_device, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %class_dev15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %class_dev15, align 4
  call void (ptr, ptr, ...) @_dev_notice(ptr noundef %32, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.9) #9
  %async16 = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %33 = ptrtoint ptr %async16 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %async16, align 4
  %events17 = getelementptr inbounds %struct.comedi_async, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %events17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %events17, align 4
  %or18 = or i32 %36, 32
  store i32 %or18, ptr %events17, align 4
  br label %do.body21

do.body21:                                        ; preds = %do.end12, %sw.bb.do.body21_crit_edge, %if.end6.do.body21_crit_edge
  %lock = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 5
  %call23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mite_chan = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 4
  %37 = ptrtoint ptr %mite_chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mite_chan, align 8
  %tobool28.not = icmp eq ptr %38, null
  br i1 %tobool28.not, label %do.body21.if.end31_crit_edge, label %if.then29

do.body21.if.end31_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then29:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  call void @mite_ack_linkc(ptr noundef nonnull %38, ptr noundef %s, i1 noundef zeroext true) #6
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %do.body21.if.end31_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call23) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %perm_stale_data) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tc_error) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %gate_error) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_ack_linkc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ni_tio_set_mite_channel(ptr noundef %counter, ptr noundef %mite_chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mite_chan5 = getelementptr inbounds %struct.ni_gpct, ptr %counter, i32 0, i32 4
  %0 = ptrtoint ptr %mite_chan5 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mite_chan, ptr %mite_chan5, align 8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ni_tiocmd_init_module() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @ni_tiocmd_cleanup_module() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_set_gate_src_raw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_set_gate_src(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local signext i8 @ni_route_to_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_find_route_source(i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @comedi_buf_write_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_prep_dma(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ni_tio_input_inttrig(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %s, i32 noundef %trig_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 6
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %async = getelementptr inbounds %struct.comedi_subdevice, ptr %s, i32 0, i32 7
  %2 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %async, align 4
  %start_arg = getelementptr inbounds %struct.comedi_async, ptr %3, i32 0, i32 17, i32 3
  %4 = ptrtoint ptr %start_arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %start_arg, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %trig_num)
  %cmp.not = icmp eq i32 %5, %trig_num
  br i1 %cmp.not, label %do.body2, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body2:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %mite_chan = getelementptr inbounds %struct.ni_gpct, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %mite_chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mite_chan, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end9.thread, label %if.end14

if.end9.thread:                                   ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  br label %cleanup

if.end14:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mite_dma_arm(ptr noundef nonnull %7) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #6
  %call15 = tail call i32 @ni_tio_arm(ptr noundef %1, i1 noundef zeroext true, i32 noundef 0) #6
  %8 = ptrtoint ptr %async to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %async, align 4
  %inttrig = getelementptr inbounds %struct.comedi_async, ptr %9, i32 0, i32 20
  %10 = ptrtoint ptr %inttrig to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %inttrig, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end14 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %if.end9.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mite_dma_arm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @ni_tio_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ni_tio_get_soft_copy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mite_done(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !40, !42, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 214, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @ni_tio_cmd._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @ni_tio_cmd._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 216, i32 3}
!10 = !{ptr @ni_tio_cmd._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @ni_tio_cmd._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__ksymtab_ni_tio_cmd, !13, !"__ksymtab_ni_tio_cmd", i1 false, i1 false}
!13 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 231, i32 1}
!14 = !{ptr @__ksymtab_ni_tio_cmdtest, !15, !"__ksymtab_ni_tio_cmdtest", i1 false, i1 false}
!15 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 330, i32 1}
!16 = !{ptr @__ksymtab_ni_tio_cancel, !17, !"__ksymtab_ni_tio_cancel", i1 false, i1 false}
!17 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 348, i32 1}
!18 = !{ptr @__ksymtab_ni_tio_acknowledge, !19, !"__ksymtab_ni_tio_acknowledge", i1 false, i1 false}
!19 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 446, i32 1}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 460, i32 3}
!22 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @ni_tio_handle_interrupt._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @ni_tio_handle_interrupt._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 471, i32 4}
!28 = !{ptr @ni_tio_handle_interrupt._entry.11, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @ni_tio_handle_interrupt._entry_ptr.13, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @__ksymtab_ni_tio_handle_interrupt, !31, !"__ksymtab_ni_tio_handle_interrupt", i1 false, i1 false}
!31 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 484, i32 1}
!32 = !{ptr @__ksymtab_ni_tio_set_mite_channel, !33, !"__ksymtab_ni_tio_set_mite_channel", i1 false, i1 false}
!33 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 495, i32 1}
!34 = !{ptr @__initcall__kmod_ni_tiocmd__229_501_ni_tiocmd_init_module6, !35, !"__initcall__kmod_ni_tiocmd__229_501_ni_tiocmd_init_module6", i1 false, i1 false}
!35 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 501, i32 1}
!36 = !{ptr @__exitcall_ni_tiocmd_cleanup_module, !37, !"__exitcall_ni_tiocmd_cleanup_module", i1 false, i1 false}
!37 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 506, i32 1}
!38 = !{ptr @__UNIQUE_ID_author230, !39, !"__UNIQUE_ID_author230", i1 false, i1 false}
!39 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 508, i32 1}
!40 = !{ptr @__UNIQUE_ID_description231, !41, !"__UNIQUE_ID_description231", i1 false, i1 false}
!41 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 509, i32 1}
!42 = !{ptr @__UNIQUE_ID_file232, !43, !"__UNIQUE_ID_file232", i1 false, i1 false}
!43 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 510, i32 1}
!44 = !{ptr @__UNIQUE_ID_license233, !43, !"__UNIQUE_ID_license233", i1 false, i1 false}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 155, i32 2}
!47 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ni_tio_output_cmd._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @ni_tio_output_cmd._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/comedi/drivers/ni_tiocmd.c", i32 433, i32 4}
!52 = !{ptr @.str.17, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ni_tio_acknowledge_and_confirm._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @ni_tio_acknowledge_and_confirm._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i32 0, i32 33}
!66 = !{!"auto-init"}
