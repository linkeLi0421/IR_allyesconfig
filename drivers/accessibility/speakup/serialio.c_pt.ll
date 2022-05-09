; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/serialio.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/serialio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spk_serial_io_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_serial_io_ops\09\09\09\09"
module asm "\09.long\09__crc_spk_serial_io_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_serial_io_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_serial_io_ops\22\09\09\09\09\09"
module asm "__kstrtabns_spk_serial_io_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_serial_synth_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_serial_synth_probe\09\09\09\09"
module asm "\09.long\09__crc_spk_serial_synth_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_serial_synth_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_serial_synth_probe\22\09\09\09\09\09"
module asm "__kstrtabns_spk_serial_synth_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_stop_serial_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_stop_serial_interrupt\09\09\09\09"
module asm "\09.long\09__crc_spk_stop_serial_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_stop_serial_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_stop_serial_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_spk_stop_serial_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_serial_synth_immediate\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_serial_synth_immediate\09\09\09\09"
module asm "\09.long\09__crc_spk_serial_synth_immediate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_serial_synth_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_serial_synth_immediate\22\09\09\09\09\09"
module asm "__kstrtabns_spk_serial_synth_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_serial_release\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_serial_release\09\09\09\09"
module asm "\09.long\09__crc_spk_serial_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_serial_release:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_serial_release\22\09\09\09\09\09"
module asm "__kstrtabns_spk_serial_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spk_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.speakup_info_t = type { %struct.spinlock, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.list_head = type { ptr, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }

@spk_serial_io_ops = dso_local global { %struct.spk_io_ops, [32 x i8] } { %struct.spk_io_ops { ptr @spk_serial_out, ptr null, ptr @spk_serial_send_xchar, ptr @spk_serial_tiocmset, ptr @spk_serial_in, ptr @spk_serial_in_nowait, ptr @spk_serial_flush_buffer, ptr @spk_serial_wait_for_xmitr }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_spk_serial_io_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_serial_io_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_serial_io_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_serial_io_ops to i32), ptr @__kstrtab_spk_serial_io_ops, ptr @__kstrtabns_spk_serial_io_ops }, section "___ksymtab_gpl+spk_serial_io_ops", align 4
@spk_serial_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016no port info for ttyS%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"spk_serial_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/accessibility/speakup/serialio.c\00", [55 x i8] zeroinitializer }, align 32
@spk_serial_init._entry_ptr = internal global ptr @spk_serial_init._entry, section ".printk_index", align 4
@spk_serial_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 76, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016Ports not available, trying to steal them\0A\00", [51 x i8] zeroinitializer }, align 32
@spk_serial_init._entry_ptr.5 = internal global ptr @spk_serial_init._entry.3, section ".printk_index", align 4
@spk_serial_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 81, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014Unable to allocate port at %x, errno %i\00", [54 x i8] zeroinitializer }, align 32
@spk_serial_init._entry_ptr.8 = internal global ptr @spk_serial_init._entry.6, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@speakup_info = external dso_local global %struct.speakup_info_t, align 4
@spk_serial_synth_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 188, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\014ttyS%i is an invalid port\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"spk_serial_synth_probe\00", [41 x i8] zeroinitializer }, align 32
@spk_serial_synth_probe._entry_ptr = internal global ptr @spk_serial_synth_probe._entry, section ".printk_index", align 4
@spk_serial_synth_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: not found\0A\00", [47 x i8] zeroinitializer }, align 32
@spk_serial_synth_probe._entry_ptr.13 = internal global ptr @spk_serial_synth_probe._entry.11, section ".printk_index", align 4
@spk_serial_synth_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: ttyS%i, Driver Version %s\0A\00", [63 x i8] zeroinitializer }, align 32
@spk_serial_synth_probe._entry_ptr.16 = internal global ptr @spk_serial_synth_probe._entry.14, section ".printk_index", align 4
@__kstrtab_spk_serial_synth_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_serial_synth_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_serial_synth_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_serial_synth_probe to i32), ptr @__kstrtab_spk_serial_synth_probe, ptr @__kstrtabns_spk_serial_synth_probe }, section "___ksymtab_gpl+spk_serial_synth_probe", align 4
@synth = external dso_local local_unnamed_addr global ptr, align 4
@__kstrtab_spk_stop_serial_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_stop_serial_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_stop_serial_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_stop_serial_interrupt to i32), ptr @__kstrtab_spk_stop_serial_interrupt, ptr @__kstrtabns_spk_stop_serial_interrupt }, section "___ksymtab_gpl+spk_stop_serial_interrupt", align 4
@__kstrtab_spk_serial_synth_immediate = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_serial_synth_immediate = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_serial_synth_immediate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_serial_synth_immediate to i32), ptr @__kstrtab_spk_serial_synth_immediate, ptr @__kstrtabns_spk_serial_synth_immediate }, section "___ksymtab_gpl+spk_serial_synth_immediate", align 4
@__kstrtab_spk_serial_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_serial_release = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_serial_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_serial_release to i32), ptr @__kstrtab_spk_serial_release, ptr @__kstrtabns_spk_serial_release }, section "___ksymtab_gpl+spk_serial_release", align 4
@start_serial_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Unable to request Speakup serial I R Q\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"start_serial_interrupt\00", [41 x i8] zeroinitializer }, align 32
@start_serial_interrupt._entry_ptr = internal global ptr @start_serial_interrupt._entry, section ".printk_index", align 4
@timeouts = internal global { i32, [28 x i8] } zeroinitializer, align 32
@spk_serial_wait_for_xmitr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014%s: too many timeouts, deactivating speakup\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"spk_serial_wait_for_xmitr\00", [38 x i8] zeroinitializer }, align 32
@spk_serial_wait_for_xmitr._entry_ptr = internal global ptr @spk_serial_wait_for_xmitr._entry, section ".printk_index", align 4
@spk_serial_wait_for_xmitr._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014%s: timed out (tx busy)\0A\00", [37 x i8] zeroinitializer }, align 32
@spk_serial_wait_for_xmitr._entry_ptr.24 = internal global ptr @spk_serial_wait_for_xmitr._entry.22, section ".printk_index", align 4
@spk_serial_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.2, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\014time out while waiting for input.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spk_serial_in\00", [18 x i8] zeroinitializer }, align 32
@spk_serial_in._entry_ptr = internal global ptr @spk_serial_in._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.27 = private unnamed_addr constant [18 x i8] c"spk_serial_io_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 37, i32 19 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 57, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 76, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 80, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 188, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 191, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 194, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 139, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [9 x i8] c"timeouts\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 27, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 221, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 234, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [44 x i8] c"../drivers/accessibility/speakup/serialio.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 260, i32 4 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__ksymtab_spk_serial_io_ops, ptr @__ksymtab_spk_serial_release, ptr @__ksymtab_spk_serial_synth_immediate, ptr @__ksymtab_spk_serial_synth_probe, ptr @__ksymtab_spk_stop_serial_interrupt, ptr @spk_serial_in._entry, ptr @spk_serial_in._entry_ptr, ptr @spk_serial_init._entry, ptr @spk_serial_init._entry.3, ptr @spk_serial_init._entry.6, ptr @spk_serial_init._entry_ptr, ptr @spk_serial_init._entry_ptr.5, ptr @spk_serial_init._entry_ptr.8, ptr @spk_serial_synth_probe._entry, ptr @spk_serial_synth_probe._entry.11, ptr @spk_serial_synth_probe._entry.14, ptr @spk_serial_synth_probe._entry_ptr, ptr @spk_serial_synth_probe._entry_ptr.13, ptr @spk_serial_synth_probe._entry_ptr.16, ptr @spk_serial_wait_for_xmitr._entry, ptr @spk_serial_wait_for_xmitr._entry.22, ptr @spk_serial_wait_for_xmitr._entry_ptr, ptr @spk_serial_wait_for_xmitr._entry_ptr.24, ptr @start_serial_interrupt._entry, ptr @start_serial_interrupt._entry_ptr, ptr @spk_serial_io_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @timeouts, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_io_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_synth_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_synth_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_synth_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @start_serial_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @timeouts to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_wait_for_xmitr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_wait_for_xmitr._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_serial_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_serial_out(ptr nocapture noundef %in_synth, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %alive = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %0 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %land.lhs.true

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @spk_serial_wait_for_xmitr(ptr noundef %in_synth)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true.return_crit_edge, label %if.then

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %2 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !75
  tail call void @arm_heavy_mb() #4
  %and.i = and i32 %2, 1048575
  %add.i = or i32 %and.i, -18874368
  %3 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %3, i8 %ch) #4, !srcloc !76
  br label %return

return:                                           ; preds = %if.then, %land.lhs.true.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.return_crit_edge ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_serial_send_xchar(ptr nocapture noundef readnone %synth, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add8 = add i32 %0, 5
  %and9 = and i32 %add8, 1048575
  %add110 = or i32 %and9, -18874368
  %1 = inttoptr i32 %add110 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %3 = and i8 %2, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %3)
  %cmp.not11 = icmp eq i8 %3, 96
  br i1 %cmp.not11, label %entry.do.body_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %timeout.012 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 100000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %timeout.012, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.do.body_crit_edge, label %if.end

while.body.do.body_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %5, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %6 = inttoptr i32 %add1 to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !78
  %8 = and i8 %7, 96
  %cmp.not = icmp eq i8 %8, 96
  br i1 %cmp.not, label %if.end.do.body_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %while.body.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !79
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and5 = and i32 %9, 1048575
  %add6 = or i32 %and5, -18874368
  %10 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 %ch) #4, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_serial_tiocmset(ptr nocapture noundef readnone %in_synth, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %0, 4
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %1 = inttoptr i32 %add1 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !80
  %conv = zext i8 %2 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !81
  tail call void @arm_heavy_mb() #4
  %neg = xor i32 %clear, -1
  %and3 = and i32 %conv, %neg
  %or = or i32 %and3, %set
  %conv4 = trunc i32 %or to i8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %3 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add5 = add i32 %3, 4
  %and6 = and i32 %add5, 1048575
  %add7 = or i32 %and6, -18874368
  %4 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 %conv4) #4, !srcloc !76
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @spk_serial_in(ptr nocapture noundef readnone %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add7 = add i32 %0, 5
  %and.i8 = and i32 %add7, 1048575
  %add.i9 = or i32 %and.i8, -18874368
  %1 = inttoptr i32 %add.i9 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not10 = icmp eq i8 %3, 0
  br i1 %tobool.not10, label %entry.while.body_crit_edge, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %entry.while.body_crit_edge
  %tmout.011 = phi i32 [ %dec, %if.end.while.body_crit_edge ], [ 100000, %entry.while.body_crit_edge ]
  %dec = add nsw i32 %tmout.011, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25) #7
  br label %cleanup

if.end:                                           ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %5, 5
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %6 = inttoptr i32 %add.i to ptr
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %6) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %8 = and i8 %7, 1
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %entry.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %9 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i5 = and i32 %9, 1048575
  %add.i6 = or i32 %and.i5, -18874368
  %10 = inttoptr i32 %add.i6 to ptr
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %10) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i8 [ -1, %do.end ], [ %11, %while.end ]
  ret i8 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @spk_serial_in_nowait(ptr nocapture noundef readnone %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %0, 5
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %1 = inttoptr i32 %add.i to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i3 = and i32 %4, 1048575
  %add.i4 = or i32 %and.i3, -18874368
  %5 = inttoptr i32 %add.i4 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i8 [ %6, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @spk_serial_flush_buffer(ptr nocapture noundef %in_synth) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_serial_wait_for_xmitr(ptr nocapture noundef %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %alive = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %0 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, ptr @timeouts, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp = icmp sgt i32 %2, 2
  br i1 %cmp, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %3 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %long_name, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %4) #7
  %5 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %alive, align 4
  tail call void @speakup_start_ttys() #4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %6 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add37 = add i32 %6, 5
  %and38 = and i32 %add37, 1048575
  %add239 = or i32 %and38, -18874368
  %7 = inttoptr i32 %add239 to ptr
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %7) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  %9 = and i8 %8, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %9)
  %cmp7.not40 = icmp eq i8 %9, 96
  br i1 %cmp7.not40, label %if.end.while.cond19.preheader_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  br label %while.body

if.end.while.cond19.preheader_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond19.preheader

while.cond19.preheader:                           ; preds = %if.end18.while.cond19.preheader_crit_edge, %if.end.while.cond19.preheader_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add2042 = add i32 %10, 6
  %and.i43 = and i32 %add2042, 1048575
  %add.i44 = or i32 %and.i43, -18874368
  %11 = inttoptr i32 %add.i44 to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %13 = and i8 %12, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool24.not45 = icmp eq i8 %13, 0
  br i1 %tobool24.not45, label %while.cond19.preheader.while.body25_crit_edge, label %while.cond19.preheader.cleanup_crit_edge

while.cond19.preheader.cleanup_crit_edge:         ; preds = %while.cond19.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond19.preheader.while.body25_crit_edge:    ; preds = %while.cond19.preheader
  br label %while.body25

while.body:                                       ; preds = %if.end18.while.body_crit_edge, %if.end.while.body_crit_edge
  %tmout.041 = phi i32 [ %dec, %if.end18.while.body_crit_edge ], [ 100000, %if.end.while.body_crit_edge ]
  %dec = add nsw i32 %tmout.041, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp9 = icmp eq i32 %dec, 0
  br i1 %cmp9, label %do.end14, label %if.end18

do.end14:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  %long_name16 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %14 = ptrtoint ptr %long_name16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %long_name16, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %15) #7
  %16 = load i32, ptr @timeouts, align 4
  %inc = add i32 %16, 1
  br label %cleanup

if.end18:                                         ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %18 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %18, 5
  %and = and i32 %add, 1048575
  %add2 = or i32 %and, -18874368
  %19 = inttoptr i32 %add2 to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !83
  %21 = and i8 %20, 96
  %cmp7.not = icmp eq i8 %21, 96
  br i1 %cmp7.not, label %if.end18.while.cond19.preheader_crit_edge, label %if.end18.while.body_crit_edge

if.end18.while.body_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

if.end18.while.cond19.preheader_crit_edge:        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.cond19.preheader

while.body25:                                     ; preds = %if.end31.while.body25_crit_edge, %while.cond19.preheader.while.body25_crit_edge
  %tmout.146 = phi i32 [ %dec26, %if.end31.while.body25_crit_edge ], [ 100000, %while.cond19.preheader.while.body25_crit_edge ]
  %dec26 = add nsw i32 %tmout.146, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec26)
  %cmp27 = icmp eq i32 %dec26, 0
  br i1 %cmp27, label %if.then29, label %if.end31

if.then29:                                        ; preds = %while.body25
  call void @__sanitizer_cov_trace_pc() #6
  %22 = load i32, ptr @timeouts, align 4
  %inc30 = add i32 %22, 1
  br label %cleanup

if.end31:                                         ; preds = %while.body25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %24 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add20 = add i32 %24, 6
  %and.i = and i32 %add20, 1048575
  %add.i = or i32 %and.i, -18874368
  %25 = inttoptr i32 %add.i to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %27 = and i8 %26, 16
  %tobool24.not = icmp eq i8 %27, 0
  br i1 %tobool24.not, label %if.end31.while.body25_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end31.while.body25_crit_edge:                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body25

cleanup:                                          ; preds = %if.end31.cleanup_crit_edge, %if.then29, %do.end14, %while.cond19.preheader.cleanup_crit_edge, %do.end
  %.sink = phi i32 [ %inc30, %if.then29 ], [ %inc, %do.end14 ], [ 0, %do.end ], [ 0, %while.cond19.preheader.cleanup_crit_edge ], [ 0, %if.end31.cleanup_crit_edge ]
  %retval.0 = phi i32 [ 0, %if.then29 ], [ 0, %do.end14 ], [ 0, %do.end ], [ 1, %while.cond19.preheader.cleanup_crit_edge ], [ 1, %if.end31.cleanup_crit_edge ]
  store i32 %.sink, ptr @timeouts, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local noalias ptr @spk_serial_init(i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %index) #7
  ret ptr null
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @synth_release_region(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_serial_synth_probe(ptr nocapture noundef readonly %synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ser1 = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 12
  %0 = ptrtoint ptr %ser1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ser1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  %.str..str.9 = select i1 %2, ptr @.str, ptr @.str.9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str..str.9, i32 noundef %1) #7
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 3
  %3 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %long_name, align 4
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %4) #7
  ret i32 -19
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_stop_serial_interrupt() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %1 = load ptr, ptr @synth, align 4
  %read_buff_add = getelementptr inbounds %struct.spk_synth, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %read_buff_add to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_buff_add, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.end.return_crit_edge, label %do.body

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %4, 1
  %and = and i32 %add, 1048575
  %add3 = or i32 %and, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #4, !srcloc !76
  call void @__asan_load4_noabort(i32 12)
  %6 = load i32, ptr inttoptr (i32 12 to ptr), align 4
  %call4 = tail call ptr @free_irq(i32 noundef %6, ptr noundef nonnull @synth_readbuf_handler) #4
  br label %return

return:                                           ; preds = %do.body, %if.end.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @synth_readbuf_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @speakup_info) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add13 = add i32 %0, 5
  %and.i14 = and i32 %add13, 1048575
  %add.i15 = or i32 %and.i14, -18874368
  %1 = inttoptr i32 %add.i15 to ptr
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %1) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %3 = and i8 %2, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not16 = icmp eq i8 %3, 0
  br i1 %tobool.not16, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and.i11 = and i32 %4, 1048575
  %add.i12 = or i32 %and.i11, -18874368
  %5 = inttoptr i32 %add.i12 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %7 = load ptr, ptr @synth, align 4
  %read_buff_add = getelementptr inbounds %struct.spk_synth, ptr %7, i32 0, i32 28
  %8 = ptrtoint ptr %read_buff_add to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_buff_add, align 4
  tail call void %9(i8 noundef zeroext %6) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %10 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add = add i32 %10, 5
  %and.i = and i32 %add, 1048575
  %add.i = or i32 %and.i, -18874368
  %11 = inttoptr i32 %add.i to ptr
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %11) #4, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !82
  %13 = and i8 %12, 1
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @speakup_info, i32 noundef %call2) #4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_serial_synth_immediate(ptr nocapture noundef %synth, ptr noundef readonly %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %procspeech = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %do.body, %entry
  %buff.addr.0 = phi ptr [ %buff, %entry ], [ %incdec.ptr, %do.body ]
  %0 = ptrtoint ptr %buff.addr.0 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buff.addr.0, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i8 %1, label %while.cond.if.end_crit_edge [
    i8 0, label %while.cond.cleanup_crit_edge
    i8 10, label %if.then
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %procspeech to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %procspeech, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %ch.0 = phi i8 [ %4, %if.then ], [ %1, %while.cond.if.end_crit_edge ]
  %call = tail call i32 @spk_serial_wait_for_xmitr(ptr noundef %synth)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !85
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %5 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %and = and i32 %5, 1048575
  %add = or i32 %and, -18874368
  %6 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %6, i8 %ch.0) #4, !srcloc !76
  %incdec.ptr = getelementptr i8, ptr %buff.addr.0, i32 1
  br label %while.cond

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %buff.addr.0, %if.end.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_serial_release(ptr nocapture readnone %synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %0 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %entry.return_crit_edge, label %if.end.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @synth to i32))
  %1 = load ptr, ptr @synth, align 4
  %read_buff_add.i = getelementptr inbounds %struct.spk_synth, ptr %1, i32 0, i32 28
  %2 = ptrtoint ptr %read_buff_add.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %read_buff_add.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i.spk_stop_serial_interrupt.exit_crit_edge, label %do.body.i

if.end.i.spk_stop_serial_interrupt.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %spk_stop_serial_interrupt.exit

do.body.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !84
  tail call void @arm_heavy_mb() #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %4 = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  %add.i = add i32 %4, 1
  %and.i = and i32 %add.i, 1048575
  %add3.i = or i32 %and.i, -18874368
  %5 = inttoptr i32 %add3.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 0) #4, !srcloc !76
  call void @__asan_load4_noabort(i32 12)
  %6 = load i32, ptr inttoptr (i32 12 to ptr), align 4
  %call4.i = tail call ptr @free_irq(i32 noundef %6, ptr noundef nonnull @synth_readbuf_handler) #4
  br label %spk_stop_serial_interrupt.exit

spk_stop_serial_interrupt.exit:                   ; preds = %do.body.i, %if.end.i.spk_stop_serial_interrupt.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  %.pr = load i32, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp = icmp eq i32 %.pr, 0
  br i1 %cmp, label %spk_stop_serial_interrupt.exit.return_crit_edge, label %if.end

spk_stop_serial_interrupt.exit.return_crit_edge:  ; preds = %spk_stop_serial_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %spk_stop_serial_interrupt.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @synth_release_region(i32 noundef %.pr, i32 noundef 8) #4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1) to i32))
  store i32 0, ptr getelementptr inbounds (%struct.speakup_info_t, ptr @speakup_info, i32 0, i32 1), align 4
  br label %return

return:                                           ; preds = %if.end, %spk_stop_serial_interrupt.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_start_ttys() local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65}
!llvm.module.flags = !{!66, !67, !68, !69, !70, !71, !72, !73}
!llvm.ident = !{!74}

!0 = !{ptr @spk_serial_io_ops, !1, !"spk_serial_io_ops", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/serialio.c", i32 37, i32 19}
!2 = !{ptr @__ksymtab_spk_serial_io_ops, !3, !"__ksymtab_spk_serial_io_ops", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/serialio.c", i32 46, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/serialio.c", i32 57, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @spk_serial_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @spk_serial_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/serialio.c", i32 76, i32 3}
!12 = !{ptr @spk_serial_init._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @spk_serial_init._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/serialio.c", i32 80, i32 4}
!16 = !{ptr @spk_serial_init._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @spk_serial_init._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/serialio.c", i32 188, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @spk_serial_synth_probe._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @spk_serial_synth_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/accessibility/speakup/serialio.c", i32 191, i32 3}
!25 = !{ptr @spk_serial_synth_probe._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @spk_serial_synth_probe._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/accessibility/speakup/serialio.c", i32 194, i32 2}
!29 = !{ptr @spk_serial_synth_probe._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @spk_serial_synth_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @__ksymtab_spk_serial_synth_probe, !32, !"__ksymtab_spk_serial_synth_probe", i1 false, i1 false}
!32 = !{!"../drivers/accessibility/speakup/serialio.c", i32 199, i32 1}
!33 = !{ptr @__ksymtab_spk_stop_serial_interrupt, !34, !"__ksymtab_spk_stop_serial_interrupt", i1 false, i1 false}
!34 = !{!"../drivers/accessibility/speakup/serialio.c", i32 214, i32 1}
!35 = !{ptr @__ksymtab_spk_serial_synth_immediate, !36, !"__ksymtab_spk_serial_synth_immediate", i1 false, i1 false}
!36 = !{!"../drivers/accessibility/speakup/serialio.c", i32 308, i32 1}
!37 = !{ptr @__ksymtab_spk_serial_release, !38, !"__ksymtab_spk_serial_release", i1 false, i1 false}
!38 = !{!"../drivers/accessibility/speakup/serialio.c", i32 318, i32 1}
!39 = distinct !{null, !40, !"serstate", i1 false, i1 false}
!40 = !{!"../drivers/accessibility/speakup/serialio.c", i32 26, i32 38}
!41 = distinct !{null, !42, !"rs_table", i1 false, i1 false}
!42 = !{!"../drivers/accessibility/speakup/serialio.c", i32 22, i32 37}
!43 = distinct !{null, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/accessibility/speakup/serialio.c", i32 136, i32 5}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/accessibility/speakup/serialio.c", i32 139, i32 3}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @start_serial_interrupt._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @start_serial_interrupt._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/accessibility/speakup/serialio.c", i32 221, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @spk_serial_wait_for_xmitr._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @spk_serial_wait_for_xmitr._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/accessibility/speakup/serialio.c", i32 234, i32 4}
!57 = !{ptr @spk_serial_wait_for_xmitr._entry.22, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @spk_serial_wait_for_xmitr._entry_ptr.24, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @timeouts, !60, !"timeouts", i1 false, i1 false}
!60 = !{!"../drivers/accessibility/speakup/serialio.c", i32 27, i32 12}
!61 = !{ptr @.str.25, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/accessibility/speakup/serialio.c", i32 260, i32 4}
!63 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @spk_serial_in._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @spk_serial_in._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{i32 1, !"wchar_size", i32 2}
!67 = !{i32 1, !"min_enum_size", i32 4}
!68 = !{i32 8, !"branch-target-enforcement", i32 0}
!69 = !{i32 8, !"sign-return-address", i32 0}
!70 = !{i32 8, !"sign-return-address-all", i32 0}
!71 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!72 = !{i32 7, !"uwtable", i32 1}
!73 = !{i32 7, !"frame-pointer", i32 2}
!74 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!75 = !{i64 2151740019}
!76 = !{i64 4203963}
!77 = !{i64 4204358}
!78 = !{i64 2154378247}
!79 = !{i64 2154379088}
!80 = !{i64 2154379531}
!81 = !{i64 2154379776}
!82 = !{i64 2151738034}
!83 = !{i64 2154391858}
!84 = !{i64 2154387879}
!85 = !{i64 2154397083}
