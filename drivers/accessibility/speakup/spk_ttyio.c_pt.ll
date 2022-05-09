; ModuleID = '/llk/IR_all_yes/drivers/accessibility/speakup/spk_ttyio.c_pt.bc'
source_filename = "../drivers/accessibility/speakup/spk_ttyio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+spk_ttyio_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_ttyio_ops\09\09\09\09"
module asm "\09.long\09__crc_spk_ttyio_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_ttyio_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_ttyio_ops\22\09\09\09\09\09"
module asm "__kstrtabns_spk_ttyio_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_ttyio_synth_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_ttyio_synth_probe\09\09\09\09"
module asm "\09.long\09__crc_spk_ttyio_synth_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_ttyio_synth_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_ttyio_synth_probe\22\09\09\09\09\09"
module asm "__kstrtabns_spk_ttyio_synth_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_ttyio_release\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_ttyio_release\09\09\09\09"
module asm "\09.long\09__crc_spk_ttyio_release\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_ttyio_release:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_ttyio_release\22\09\09\09\09\09"
module asm "__kstrtabns_spk_ttyio_release:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+spk_ttyio_synth_immediate\22, \22a\22\09"
module asm "\09.weak\09__crc_spk_ttyio_synth_immediate\09\09\09\09"
module asm "\09.long\09__crc_spk_ttyio_synth_immediate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_spk_ttyio_synth_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22spk_ttyio_synth_immediate\22\09\09\09\09\09"
module asm "__kstrtabns_spk_ttyio_synth_immediate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.spk_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tty_ldisc_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spk_synth = type { %struct.list_head, ptr, ptr, ptr, ptr, i8, i8, i32, i32, i32, i32, i32, i32, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.synth_indexing, i32, %struct.attribute_group, ptr }
%struct.synth_indexing = type { ptr, i8, i8, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.41, %struct.anon.42, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.41 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.42 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tty_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spk_ldisc_data = type { i8, %struct.completion, i8, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }

@spk_ttyio_ops = dso_local global { %struct.spk_io_ops, [32 x i8] } { %struct.spk_io_ops { ptr @spk_ttyio_out, ptr @spk_ttyio_out_unicode, ptr @spk_ttyio_send_xchar, ptr @spk_ttyio_tiocmset, ptr @spk_ttyio_in, ptr @spk_ttyio_in_nowait, ptr @spk_ttyio_flush_buffer, ptr @spk_ttyio_wait_for_xmitr }, [32 x i8] zeroinitializer }, align 32
@__kstrtab_spk_ttyio_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_ttyio_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_ttyio_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_ttyio_ops to i32), ptr @__kstrtab_spk_ttyio_ops, ptr @__kstrtabns_spk_ttyio_ops }, section "___ksymtab_gpl+spk_ttyio_ops", align 4
@spk_ttyio_ldisc_ops = internal global { %struct.tty_ldisc_ops, [60 x i8] } { %struct.tty_ldisc_ops { ptr @.str.3, i32 26, ptr @spk_ttyio_ldisc_open, ptr @spk_ttyio_ldisc_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @spk_ttyio_receive_buf2, ptr null }, [60 x i8] zeroinitializer }, align 32
@spk_ttyio_register_ldisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\014speakup: Error registering line discipline. Most synths won't work.\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"spk_ttyio_register_ldisc\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/accessibility/speakup/spk_ttyio.c\00", [54 x i8] zeroinitializer }, align 32
@spk_ttyio_register_ldisc._entry_ptr = internal global ptr @spk_ttyio_register_ldisc._entry, section ".printk_index", align 4
@__kstrtab_spk_ttyio_synth_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_ttyio_synth_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_ttyio_synth_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_ttyio_synth_probe to i32), ptr @__kstrtab_spk_ttyio_synth_probe, ptr @__kstrtabns_spk_ttyio_synth_probe }, section "___ksymtab_gpl+spk_ttyio_synth_probe", align 4
@__kstrtab_spk_ttyio_release = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_ttyio_release = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_ttyio_release = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_ttyio_release to i32), ptr @__kstrtab_spk_ttyio_release, ptr @__kstrtabns_spk_ttyio_release }, section "___ksymtab_gpl+spk_ttyio_release", align 4
@__kstrtab_spk_ttyio_synth_immediate = external dso_local constant [0 x i8], align 1
@__kstrtabns_spk_ttyio_synth_immediate = external dso_local constant [0 x i8], align 1
@__ksymtab_spk_ttyio_synth_immediate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @spk_ttyio_synth_immediate to i32), ptr @__kstrtab_spk_ttyio_synth_immediate, ptr @__kstrtabns_spk_ttyio_synth_immediate }, section "___ksymtab_gpl+spk_ttyio_synth_immediate", align 4
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"speakup_ldisc\00", [18 x i8] zeroinitializer }, align 32
@speakup_tty = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@spk_ttyio_out._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\014%s: I/O error, deactivating speakup\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spk_ttyio_out\00", [18 x i8] zeroinitializer }, align 32
@spk_ttyio_out._entry_ptr = internal global ptr @spk_ttyio_out._entry, section ".printk_index", align 4
@ttyio_in._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 304, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\014spk_ttyio: timeout (%d)  while waiting for input\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ttyio_in\00", [23 x i8] zeroinitializer }, align 32
@ttyio_in._entry_ptr = internal global ptr @ttyio_in._entry, section ".printk_index", align 4
@spk_ttyio_initialise_ldisc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014speakup: Failed to set hardware flow control\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"spk_ttyio_initialise_ldisc\00", [37 x i8] zeroinitializer }, align 32
@spk_ttyio_initialise_ldisc._entry_ptr = internal global ptr @spk_ttyio_initialise_ldisc._entry, section ".printk_index", align 4
@speakup_tty_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @speakup_tty_mutex, i64 52), ptr getelementptr (i8, ptr @speakup_tty_mutex, i64 52) }, ptr @speakup_tty_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@spk_ttyio_initialise_ldisc._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013speakup: Failed to set N_SPEAKUP on tty\0A\00", [53 x i8] zeroinitializer }, align 32
@spk_ttyio_initialise_ldisc._entry_ptr.13 = internal global ptr @spk_ttyio_initialise_ldisc._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ttyS0\00", [26 x i8] zeroinitializer }, align 32
@ser_to_dev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 29, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013speakup: Invalid ser param. Must be between 0 and 191 inclusive.\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ser_to_dev\00", [21 x i8] zeroinitializer }, align 32
@ser_to_dev._entry_ptr = internal global ptr @ser_to_dev._entry, section ".printk_index", align 4
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"speakup_tty_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"speakup_tty_mutex\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 10]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"spk_ttyio_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 124, i32 19 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"spk_ttyio_ldisc_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 106, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 217, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 109, i32 20 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"speakup_tty\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 22, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 87, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 243, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 303, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 182, i32 4 }
@___asan_gen_.76 = private unnamed_addr constant [18 x i8] c"speakup_tty_mutex\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 202, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 40, i32 30 }
@___asan_gen_.88 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 29, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [45 x i8] c"../drivers/accessibility/speakup/spk_ttyio.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 24, i32 8 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__ksymtab_spk_ttyio_ops, ptr @__ksymtab_spk_ttyio_release, ptr @__ksymtab_spk_ttyio_synth_immediate, ptr @__ksymtab_spk_ttyio_synth_probe, ptr @ser_to_dev._entry, ptr @ser_to_dev._entry_ptr, ptr @spk_ttyio_initialise_ldisc._entry, ptr @spk_ttyio_initialise_ldisc._entry.11, ptr @spk_ttyio_initialise_ldisc._entry_ptr, ptr @spk_ttyio_initialise_ldisc._entry_ptr.13, ptr @spk_ttyio_out._entry, ptr @spk_ttyio_out._entry_ptr, ptr @spk_ttyio_register_ldisc._entry, ptr @spk_ttyio_register_ldisc._entry_ptr, ptr @ttyio_in._entry, ptr @ttyio_in._entry_ptr, ptr @spk_ttyio_ops, ptr @spk_ttyio_ldisc_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @speakup_tty, ptr @init_completion.__key, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @speakup_tty_mutex, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_ldisc_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_register_ldisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_tty to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_out._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ttyio_in._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_initialise_ldisc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speakup_tty_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_ttyio_initialise_ldisc._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ser_to_dev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_ttyio_out(ptr nocapture noundef %in_synth, i8 noundef zeroext %ch) #0 align 64 {
entry:
  %ch.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ch.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %ch, ptr %ch.addr, align 1
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 4
  %alive = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %3 = ptrtoint ptr %alive to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alive, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %tobool1.not = icmp eq ptr %8, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %call = call i32 %8(ptr noundef %2, ptr noundef nonnull %ch.addr, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp6 = icmp sgt i32 %call, 0
  br i1 %cmp6, label %if.end5.cleanup_crit_edge, label %do.end

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %long_name = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %9 = ptrtoint ptr %long_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %long_name, align 4
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %10) #10
  %11 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %alive, align 4
  call void @speakup_start_ttys() #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_ttyio_out_unicode(ptr nocapture noundef %in_synth, i16 noundef zeroext %ch) #0 align 64 {
entry:
  %ch.addr.i122 = alloca i8, align 1
  %ch.addr.i104 = alloca i8, align 1
  %ch.addr.i86 = alloca i8, align 1
  %ch.addr.i68 = alloca i8, align 1
  %ch.addr.i50 = alloca i8, align 1
  %ch.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %ch)
  %cmp = icmp ult i16 %ch, 128
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv2 = trunc i16 %ch to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i)
  %0 = ptrtoint ptr %ch.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv2, ptr %ch.addr.i, align 1
  %dev.i = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %alive.i = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %3 = ptrtoint ptr %alive.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %alive.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.then.spk_ttyio_out.exit_crit_edge, label %lor.lhs.false.i

if.then.spk_ttyio_out.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit

lor.lhs.false.i:                                  ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i, align 4
  %write.i = getelementptr inbounds %struct.tty_operations, ptr %6, i32 0, i32 7
  %7 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.spk_ttyio_out.exit_crit_edge, label %if.end.i

lor.lhs.false.i.spk_ttyio_out.exit_crit_edge:     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %call.i = call i32 %8(ptr noundef %2, ptr noundef nonnull %ch.addr.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i.spk_ttyio_out.exit_crit_edge, label %if.end5.i

if.end.i.spk_ttyio_out.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6.i = icmp sgt i32 %call.i, 0
  br i1 %cmp6.i, label %if.end5.i.spk_ttyio_out.exit_crit_edge, label %do.end.i

if.end5.i.spk_ttyio_out.exit_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit

do.end.i:                                         ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %9 = ptrtoint ptr %long_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %long_name.i, align 4
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %10) #10
  %11 = ptrtoint ptr %alive.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %alive.i, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit

spk_ttyio_out.exit:                               ; preds = %do.end.i, %if.end5.i.spk_ttyio_out.exit_crit_edge, %if.end.i.spk_ttyio_out.exit_crit_edge, %lor.lhs.false.i.spk_ttyio_out.exit_crit_edge, %if.then.spk_ttyio_out.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %do.end.i ], [ 0, %lor.lhs.false.i.spk_ttyio_out.exit_crit_edge ], [ 0, %if.then.spk_ttyio_out.exit_crit_edge ], [ 0, %if.end.i.spk_ttyio_out.exit_crit_edge ], [ 1, %if.end5.i.spk_ttyio_out.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i)
  br label %if.end34

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %ch)
  %cmp4 = icmp ult i16 %ch, 2048
  br i1 %cmp4, label %if.then6, label %if.else15

if.then6:                                         ; preds = %if.else
  %12 = lshr i16 %ch, 6
  %13 = trunc i16 %12 to i8
  %conv8 = or i8 %13, -64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i50)
  %14 = ptrtoint ptr %ch.addr.i50 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv8, ptr %ch.addr.i50, align 1
  %dev.i51 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %15 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i51, align 4
  %alive.i52 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %17 = ptrtoint ptr %alive.i52 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alive.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i53 = icmp eq i32 %18, 0
  br i1 %tobool.not.i53, label %if.then6.spk_ttyio_out.exit67_crit_edge, label %lor.lhs.false.i57

if.then6.spk_ttyio_out.exit67_crit_edge:          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit67

lor.lhs.false.i57:                                ; preds = %if.then6
  %ops.i54 = getelementptr inbounds %struct.tty_struct, ptr %16, i32 0, i32 4
  %19 = ptrtoint ptr %ops.i54 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i54, align 4
  %write.i55 = getelementptr inbounds %struct.tty_operations, ptr %20, i32 0, i32 7
  %21 = ptrtoint ptr %write.i55 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %write.i55, align 4
  %tobool1.not.i56 = icmp eq ptr %22, null
  br i1 %tobool1.not.i56, label %lor.lhs.false.i57.spk_ttyio_out.exit67_crit_edge, label %if.end.i60

lor.lhs.false.i57.spk_ttyio_out.exit67_crit_edge: ; preds = %lor.lhs.false.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit67

if.end.i60:                                       ; preds = %lor.lhs.false.i57
  %call.i58 = call i32 %22(ptr noundef %16, ptr noundef nonnull %ch.addr.i50, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp.i59 = icmp eq i32 %call.i58, 0
  br i1 %cmp.i59, label %if.end.i60.spk_ttyio_out.exit67_crit_edge, label %if.end5.i62

if.end.i60.spk_ttyio_out.exit67_crit_edge:        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit67

if.end5.i62:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i58)
  %cmp6.i61 = icmp sgt i32 %call.i58, 0
  br i1 %cmp6.i61, label %if.end5.i62.spk_ttyio_out.exit67_crit_edge, label %do.end.i65

if.end5.i62.spk_ttyio_out.exit67_crit_edge:       ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit67

do.end.i65:                                       ; preds = %if.end5.i62
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i63 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %23 = ptrtoint ptr %long_name.i63 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %long_name.i63, align 4
  %call9.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %24) #10
  %25 = ptrtoint ptr %alive.i52 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %alive.i52, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit67

spk_ttyio_out.exit67:                             ; preds = %do.end.i65, %if.end5.i62.spk_ttyio_out.exit67_crit_edge, %if.end.i60.spk_ttyio_out.exit67_crit_edge, %lor.lhs.false.i57.spk_ttyio_out.exit67_crit_edge, %if.then6.spk_ttyio_out.exit67_crit_edge
  %retval.0.i66 = phi i32 [ 0, %do.end.i65 ], [ 0, %lor.lhs.false.i57.spk_ttyio_out.exit67_crit_edge ], [ 0, %if.then6.spk_ttyio_out.exit67_crit_edge ], [ 0, %if.end.i60.spk_ttyio_out.exit67_crit_edge ], [ 1, %if.end5.i62.spk_ttyio_out.exit67_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i50)
  %26 = trunc i16 %ch to i8
  %27 = and i8 %26, 63
  %conv12 = or i8 %27, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i68)
  %28 = ptrtoint ptr %ch.addr.i68 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv12, ptr %ch.addr.i68, align 1
  %29 = ptrtoint ptr %dev.i51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev.i51, align 4
  %31 = ptrtoint ptr %alive.i52 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %alive.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i71 = icmp eq i32 %32, 0
  br i1 %tobool.not.i71, label %spk_ttyio_out.exit67.spk_ttyio_out.exit85_crit_edge, label %lor.lhs.false.i75

spk_ttyio_out.exit67.spk_ttyio_out.exit85_crit_edge: ; preds = %spk_ttyio_out.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit85

lor.lhs.false.i75:                                ; preds = %spk_ttyio_out.exit67
  %ops.i72 = getelementptr inbounds %struct.tty_struct, ptr %30, i32 0, i32 4
  %33 = ptrtoint ptr %ops.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ops.i72, align 4
  %write.i73 = getelementptr inbounds %struct.tty_operations, ptr %34, i32 0, i32 7
  %35 = ptrtoint ptr %write.i73 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %write.i73, align 4
  %tobool1.not.i74 = icmp eq ptr %36, null
  br i1 %tobool1.not.i74, label %lor.lhs.false.i75.spk_ttyio_out.exit85_crit_edge, label %if.end.i78

lor.lhs.false.i75.spk_ttyio_out.exit85_crit_edge: ; preds = %lor.lhs.false.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit85

if.end.i78:                                       ; preds = %lor.lhs.false.i75
  %call.i76 = call i32 %36(ptr noundef %30, ptr noundef nonnull %ch.addr.i68, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp.i77 = icmp eq i32 %call.i76, 0
  br i1 %cmp.i77, label %if.end.i78.spk_ttyio_out.exit85_crit_edge, label %if.end5.i80

if.end.i78.spk_ttyio_out.exit85_crit_edge:        ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit85

if.end5.i80:                                      ; preds = %if.end.i78
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %cmp6.i79 = icmp sgt i32 %call.i76, 0
  br i1 %cmp6.i79, label %if.end5.i80.spk_ttyio_out.exit85_crit_edge, label %do.end.i83

if.end5.i80.spk_ttyio_out.exit85_crit_edge:       ; preds = %if.end5.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit85

do.end.i83:                                       ; preds = %if.end5.i80
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i81 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %37 = ptrtoint ptr %long_name.i81 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %long_name.i81, align 4
  %call9.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %38) #10
  %39 = ptrtoint ptr %alive.i52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %alive.i52, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit85

spk_ttyio_out.exit85:                             ; preds = %do.end.i83, %if.end5.i80.spk_ttyio_out.exit85_crit_edge, %if.end.i78.spk_ttyio_out.exit85_crit_edge, %lor.lhs.false.i75.spk_ttyio_out.exit85_crit_edge, %spk_ttyio_out.exit67.spk_ttyio_out.exit85_crit_edge
  %retval.0.i84 = phi i32 [ 0, %do.end.i83 ], [ 0, %lor.lhs.false.i75.spk_ttyio_out.exit85_crit_edge ], [ 0, %spk_ttyio_out.exit67.spk_ttyio_out.exit85_crit_edge ], [ 0, %if.end.i78.spk_ttyio_out.exit85_crit_edge ], [ 1, %if.end5.i80.spk_ttyio_out.exit85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i68)
  %and14 = and i32 %retval.0.i84, %retval.0.i66
  br label %if.end34

if.else15:                                        ; preds = %if.else
  %40 = lshr i16 %ch, 12
  %41 = trunc i16 %40 to i8
  %conv19 = or i8 %41, -32
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i86)
  %42 = ptrtoint ptr %ch.addr.i86 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv19, ptr %ch.addr.i86, align 1
  %dev.i87 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %43 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i87, align 4
  %alive.i88 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 31
  %45 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %alive.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i89 = icmp eq i32 %46, 0
  br i1 %tobool.not.i89, label %if.else15.spk_ttyio_out.exit103_crit_edge, label %lor.lhs.false.i93

if.else15.spk_ttyio_out.exit103_crit_edge:        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit103

lor.lhs.false.i93:                                ; preds = %if.else15
  %ops.i90 = getelementptr inbounds %struct.tty_struct, ptr %44, i32 0, i32 4
  %47 = ptrtoint ptr %ops.i90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i90, align 4
  %write.i91 = getelementptr inbounds %struct.tty_operations, ptr %48, i32 0, i32 7
  %49 = ptrtoint ptr %write.i91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %write.i91, align 4
  %tobool1.not.i92 = icmp eq ptr %50, null
  br i1 %tobool1.not.i92, label %lor.lhs.false.i93.spk_ttyio_out.exit103_crit_edge, label %if.end.i96

lor.lhs.false.i93.spk_ttyio_out.exit103_crit_edge: ; preds = %lor.lhs.false.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit103

if.end.i96:                                       ; preds = %lor.lhs.false.i93
  %call.i94 = call i32 %50(ptr noundef %44, ptr noundef nonnull %ch.addr.i86, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp.i95 = icmp eq i32 %call.i94, 0
  br i1 %cmp.i95, label %if.end.i96.spk_ttyio_out.exit103_crit_edge, label %if.end5.i98

if.end.i96.spk_ttyio_out.exit103_crit_edge:       ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit103

if.end5.i98:                                      ; preds = %if.end.i96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94)
  %cmp6.i97 = icmp sgt i32 %call.i94, 0
  br i1 %cmp6.i97, label %if.end5.i98.spk_ttyio_out.exit103_crit_edge, label %do.end.i101

if.end5.i98.spk_ttyio_out.exit103_crit_edge:      ; preds = %if.end5.i98
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit103

do.end.i101:                                      ; preds = %if.end5.i98
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i99 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %51 = ptrtoint ptr %long_name.i99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %long_name.i99, align 4
  %call9.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %52) #10
  %53 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %alive.i88, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit103

spk_ttyio_out.exit103:                            ; preds = %do.end.i101, %if.end5.i98.spk_ttyio_out.exit103_crit_edge, %if.end.i96.spk_ttyio_out.exit103_crit_edge, %lor.lhs.false.i93.spk_ttyio_out.exit103_crit_edge, %if.else15.spk_ttyio_out.exit103_crit_edge
  %retval.0.i102 = phi i32 [ 0, %do.end.i101 ], [ 0, %lor.lhs.false.i93.spk_ttyio_out.exit103_crit_edge ], [ 0, %if.else15.spk_ttyio_out.exit103_crit_edge ], [ 0, %if.end.i96.spk_ttyio_out.exit103_crit_edge ], [ 1, %if.end5.i98.spk_ttyio_out.exit103_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i86)
  %54 = lshr i16 %ch, 6
  %55 = trunc i16 %54 to i8
  %56 = and i8 %55, 63
  %conv25 = or i8 %56, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i104)
  %57 = ptrtoint ptr %ch.addr.i104 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv25, ptr %ch.addr.i104, align 1
  %58 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i87, align 4
  %60 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %alive.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i107 = icmp eq i32 %61, 0
  br i1 %tobool.not.i107, label %spk_ttyio_out.exit103.spk_ttyio_out.exit121_crit_edge, label %lor.lhs.false.i111

spk_ttyio_out.exit103.spk_ttyio_out.exit121_crit_edge: ; preds = %spk_ttyio_out.exit103
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit121

lor.lhs.false.i111:                               ; preds = %spk_ttyio_out.exit103
  %ops.i108 = getelementptr inbounds %struct.tty_struct, ptr %59, i32 0, i32 4
  %62 = ptrtoint ptr %ops.i108 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ops.i108, align 4
  %write.i109 = getelementptr inbounds %struct.tty_operations, ptr %63, i32 0, i32 7
  %64 = ptrtoint ptr %write.i109 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %write.i109, align 4
  %tobool1.not.i110 = icmp eq ptr %65, null
  br i1 %tobool1.not.i110, label %lor.lhs.false.i111.spk_ttyio_out.exit121_crit_edge, label %if.end.i114

lor.lhs.false.i111.spk_ttyio_out.exit121_crit_edge: ; preds = %lor.lhs.false.i111
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit121

if.end.i114:                                      ; preds = %lor.lhs.false.i111
  %call.i112 = call i32 %65(ptr noundef %59, ptr noundef nonnull %ch.addr.i104, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp.i113 = icmp eq i32 %call.i112, 0
  br i1 %cmp.i113, label %if.end.i114.spk_ttyio_out.exit121_crit_edge, label %if.end5.i116

if.end.i114.spk_ttyio_out.exit121_crit_edge:      ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit121

if.end5.i116:                                     ; preds = %if.end.i114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i112)
  %cmp6.i115 = icmp sgt i32 %call.i112, 0
  br i1 %cmp6.i115, label %if.end5.i116.spk_ttyio_out.exit121_crit_edge, label %do.end.i119

if.end5.i116.spk_ttyio_out.exit121_crit_edge:     ; preds = %if.end5.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit121

do.end.i119:                                      ; preds = %if.end5.i116
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i117 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %66 = ptrtoint ptr %long_name.i117 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %long_name.i117, align 4
  %call9.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %67) #10
  %68 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %alive.i88, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit121

spk_ttyio_out.exit121:                            ; preds = %do.end.i119, %if.end5.i116.spk_ttyio_out.exit121_crit_edge, %if.end.i114.spk_ttyio_out.exit121_crit_edge, %lor.lhs.false.i111.spk_ttyio_out.exit121_crit_edge, %spk_ttyio_out.exit103.spk_ttyio_out.exit121_crit_edge
  %retval.0.i120 = phi i32 [ 0, %do.end.i119 ], [ 0, %lor.lhs.false.i111.spk_ttyio_out.exit121_crit_edge ], [ 0, %spk_ttyio_out.exit103.spk_ttyio_out.exit121_crit_edge ], [ 0, %if.end.i114.spk_ttyio_out.exit121_crit_edge ], [ 1, %if.end5.i116.spk_ttyio_out.exit121_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i104)
  %and27 = and i32 %retval.0.i120, %retval.0.i102
  %69 = trunc i16 %ch to i8
  %70 = and i8 %69, 63
  %conv31 = or i8 %70, -128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %ch.addr.i122)
  %71 = ptrtoint ptr %ch.addr.i122 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 %conv31, ptr %ch.addr.i122, align 1
  %72 = ptrtoint ptr %dev.i87 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev.i87, align 4
  %74 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %alive.i88, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i125 = icmp eq i32 %75, 0
  br i1 %tobool.not.i125, label %spk_ttyio_out.exit121.spk_ttyio_out.exit139_crit_edge, label %lor.lhs.false.i129

spk_ttyio_out.exit121.spk_ttyio_out.exit139_crit_edge: ; preds = %spk_ttyio_out.exit121
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit139

lor.lhs.false.i129:                               ; preds = %spk_ttyio_out.exit121
  %ops.i126 = getelementptr inbounds %struct.tty_struct, ptr %73, i32 0, i32 4
  %76 = ptrtoint ptr %ops.i126 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ops.i126, align 4
  %write.i127 = getelementptr inbounds %struct.tty_operations, ptr %77, i32 0, i32 7
  %78 = ptrtoint ptr %write.i127 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i127, align 4
  %tobool1.not.i128 = icmp eq ptr %79, null
  br i1 %tobool1.not.i128, label %lor.lhs.false.i129.spk_ttyio_out.exit139_crit_edge, label %if.end.i132

lor.lhs.false.i129.spk_ttyio_out.exit139_crit_edge: ; preds = %lor.lhs.false.i129
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit139

if.end.i132:                                      ; preds = %lor.lhs.false.i129
  %call.i130 = call i32 %79(ptr noundef %73, ptr noundef nonnull %ch.addr.i122, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp.i131 = icmp eq i32 %call.i130, 0
  br i1 %cmp.i131, label %if.end.i132.spk_ttyio_out.exit139_crit_edge, label %if.end5.i134

if.end.i132.spk_ttyio_out.exit139_crit_edge:      ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit139

if.end5.i134:                                     ; preds = %if.end.i132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp6.i133 = icmp sgt i32 %call.i130, 0
  br i1 %cmp6.i133, label %if.end5.i134.spk_ttyio_out.exit139_crit_edge, label %do.end.i137

if.end5.i134.spk_ttyio_out.exit139_crit_edge:     ; preds = %if.end5.i134
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_out.exit139

do.end.i137:                                      ; preds = %if.end5.i134
  call void @__sanitizer_cov_trace_pc() #9
  %long_name.i135 = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 3
  %80 = ptrtoint ptr %long_name.i135 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %long_name.i135, align 4
  %call9.i136 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %81) #10
  %82 = ptrtoint ptr %alive.i88 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %alive.i88, align 4
  call void @speakup_start_ttys() #7
  br label %spk_ttyio_out.exit139

spk_ttyio_out.exit139:                            ; preds = %do.end.i137, %if.end5.i134.spk_ttyio_out.exit139_crit_edge, %if.end.i132.spk_ttyio_out.exit139_crit_edge, %lor.lhs.false.i129.spk_ttyio_out.exit139_crit_edge, %spk_ttyio_out.exit121.spk_ttyio_out.exit139_crit_edge
  %retval.0.i138 = phi i32 [ 0, %do.end.i137 ], [ 0, %lor.lhs.false.i129.spk_ttyio_out.exit139_crit_edge ], [ 0, %spk_ttyio_out.exit121.spk_ttyio_out.exit139_crit_edge ], [ 0, %if.end.i132.spk_ttyio_out.exit139_crit_edge ], [ 1, %if.end5.i134.spk_ttyio_out.exit139_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %ch.addr.i122)
  %and33 = and i32 %and27, %retval.0.i138
  br label %if.end34

if.end34:                                         ; preds = %spk_ttyio_out.exit139, %spk_ttyio_out.exit85, %spk_ttyio_out.exit
  %ret.0 = phi i32 [ %retval.0.i, %spk_ttyio_out.exit ], [ %and14, %spk_ttyio_out.exit85 ], [ %and33, %spk_ttyio_out.exit139 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_ttyio_send_xchar(ptr nocapture noundef readonly %in_synth, i8 noundef zeroext %ch) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %send_xchar = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 24
  %4 = ptrtoint ptr %send_xchar to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %send_xchar, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1, i8 noundef zeroext %ch) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_ttyio_tiocmset(ptr nocapture noundef readonly %in_synth, i32 noundef %set, i32 noundef %clear) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tiocmset = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 26
  %4 = ptrtoint ptr %tiocmset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tiocmset, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 %5(ptr noundef %1, i32 noundef %set, i32 noundef %clear) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @spk_ttyio_in(ptr nocapture noundef readonly %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disc_data.i, align 4
  %completion.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %3, i32 0, i32 1
  %call.i.i = tail call i32 @jiffies_to_usecs(i32 noundef 1073741822) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %call.i.i)
  %cmp.i.i = icmp ult i32 %call.i.i, 100000
  %spec.select = select i1 %cmp.i.i, i32 1073741822, i32 10
  %call4.i = tail call i32 @wait_for_completion_timeout(ptr noundef %completion.i, i32 noundef %spec.select) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp eq i32 %call4.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end8.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef 100000) #10
  br label %ttyio_in.exit

if.end8.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %buf_free.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %buf_free.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf_free.i, align 4
  %port.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %8) #7
  br label %ttyio_in.exit

ttyio_in.exit:                                    ; preds = %if.end8.i, %do.end.i
  %retval.0.i = phi i8 [ -1, %do.end.i ], [ %5, %if.end8.i ]
  ret i8 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @spk_ttyio_in_nowait(ptr nocapture noundef readonly %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 29
  %2 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disc_data.i, align 4
  %completion.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %3, i32 0, i32 1
  %call.i = tail call zeroext i1 @try_wait_for_completion(ptr noundef %completion.i) #7
  br i1 %call.i, label %ttyio_in.exit, label %entry.ttyio_in.exit.thread_crit_edge

entry.ttyio_in.exit.thread_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ttyio_in.exit.thread

ttyio_in.exit:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !64
  tail call void @arm_heavy_mb() #7
  %buf_free.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %buf_free.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %buf_free.i, align 4
  %port.i = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 37
  %7 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %port.i, align 4
  tail call void @tty_flip_buffer_push(ptr noundef %8) #7
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp = icmp eq i8 %5, -1
  br i1 %cmp, label %ttyio_in.exit.ttyio_in.exit.thread_crit_edge, label %ttyio_in.exit._crit_edge

ttyio_in.exit._crit_edge:                         ; preds = %ttyio_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %9

ttyio_in.exit.ttyio_in.exit.thread_crit_edge:     ; preds = %ttyio_in.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %ttyio_in.exit.thread

ttyio_in.exit.thread:                             ; preds = %ttyio_in.exit.ttyio_in.exit.thread_crit_edge, %entry.ttyio_in.exit.thread_crit_edge
  br label %9

9:                                                ; preds = %ttyio_in.exit.thread, %ttyio_in.exit._crit_edge
  %10 = phi i8 [ 0, %ttyio_in.exit.thread ], [ %5, %ttyio_in.exit._crit_edge ]
  ret i8 %10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_ttyio_flush_buffer(ptr nocapture noundef readonly %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %flush_buffer = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 21
  %4 = ptrtoint ptr %flush_buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush_buffer, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @spk_ttyio_wait_for_xmitr(ptr nocapture noundef readnone %in_synth) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_ttyio_register_ldisc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tty_register_ldisc(ptr noundef nonnull @spk_ttyio_ldisc_ops) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_register_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_ttyio_unregister_ldisc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tty_unregister_ldisc(ptr noundef nonnull @spk_ttyio_ldisc_ops) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unregister_ldisc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @spk_ttyio_synth_probe(ptr noundef %synth) #0 align 64 {
entry:
  %tmp_termios.i = alloca %struct.ktermios, align 4
  %dev.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tmp_termios.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev.i) #7
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dev.i, align 4, !annotation !65
  %dev_name.i.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 13
  %1 = ptrtoint ptr %dev_name.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev_name.i.i, align 4
  %call.i.i = tail call i32 @strcmp(ptr noundef %2, ptr noundef nonnull dereferenceable(6) @.str.14) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %lor.lhs.false.i.i, label %entry.get_dev_to_use.exit.i_crit_edge

entry.get_dev_to_use.exit.i_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dev_to_use.exit.i

lor.lhs.false.i.i:                                ; preds = %entry
  %ser.i.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 12
  %3 = ptrtoint ptr %ser.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ser.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp.i.i = icmp eq i32 %4, 0
  br i1 %cmp.i.i, label %lor.lhs.false.i.i.get_dev_to_use.exit.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.get_dev_to_use.exit.i_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %get_dev_to_use.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 191, i32 %4)
  %5 = icmp ugt i32 %4, 191
  br i1 %5, label %get_dev_to_use.exit.thread79.i, label %get_dev_to_use.exit.thread.i

get_dev_to_use.exit.thread79.i:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %spk_ttyio_initialise_ldisc.exit.thread

get_dev_to_use.exit.thread.i:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.i.i.i = add nuw nsw i32 %4, 64
  %or.i.i.i = or i32 %add.i.i.i, 4194304
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or.i.i.i, ptr %dev.i, align 4
  br label %if.end.i

get_dev_to_use.exit.i:                            ; preds = %lor.lhs.false.i.i.get_dev_to_use.exit.i_crit_edge, %entry.get_dev_to_use.exit.i_crit_edge
  %call2.i.i = call i32 @tty_dev_name_to_number(ptr noundef %2, ptr noundef nonnull %dev.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool.not.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool.not.i, label %get_dev_to_use.exit.i.if.end.i_crit_edge, label %get_dev_to_use.exit.i.spk_ttyio_initialise_ldisc.exit.thread_crit_edge

get_dev_to_use.exit.i.spk_ttyio_initialise_ldisc.exit.thread_crit_edge: ; preds = %get_dev_to_use.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %spk_ttyio_initialise_ldisc.exit.thread

get_dev_to_use.exit.i.if.end.i_crit_edge:         ; preds = %get_dev_to_use.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end.i:                                         ; preds = %get_dev_to_use.exit.i.if.end.i_crit_edge, %get_dev_to_use.exit.thread.i
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev.i, align 4
  %call1.i = call ptr @tty_kopen_exclusive(i32 noundef %8) #7
  %cmp.i74.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i74.i, label %spk_ttyio_initialise_ldisc.exit, label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i
  %ops.i = getelementptr inbounds %struct.tty_struct, ptr %call1.i, i32 0, i32 4
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ops.i, align 4
  %open.i = getelementptr inbounds %struct.tty_operations, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %open.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %open.i, align 4
  %tobool6.not.i = icmp eq ptr %12, null
  br i1 %tobool6.not.i, label %if.end5.i.if.then13.i_crit_edge, label %if.end11.i

if.end5.i.if.then13.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.end11.i:                                       ; preds = %if.end5.i
  %call10.i = call i32 %12(ptr noundef %call1.i, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool12.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end11.i.if.then13.i_crit_edge

if.end11.i.if.then13.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end11.i.if.then13.i_crit_edge, %if.end5.i.if.then13.i_crit_edge
  %ret.084.i = phi i32 [ %call10.i, %if.end11.i.if.then13.i_crit_edge ], [ -19, %if.end5.i.if.then13.i_crit_edge ]
  call void @tty_unlock(ptr noundef %call1.i) #7
  br label %spk_ttyio_initialise_ldisc.exit.thread

if.end14.i:                                       ; preds = %if.end11.i
  %flags.i = getelementptr inbounds %struct.tty_struct, ptr %call1.i, i32 0, i32 16
  call void @_clear_bit(i32 noundef 18, ptr noundef %flags.i) #7
  %termios_rwsem.i.i = getelementptr inbounds %struct.tty_struct, ptr %call1.i, i32 0, i32 11
  call void @down_read(ptr noundef %termios_rwsem.i.i) #7
  %termios.i.i = getelementptr inbounds %struct.tty_struct, ptr %call1.i, i32 0, i32 13
  %13 = call ptr @memcpy(ptr %tmp_termios.i, ptr %termios.i.i, i32 44)
  call void @up_read(ptr noundef %termios_rwsem.i.i) #7
  %c_cflag.i = getelementptr inbounds %struct.ktermios, ptr %tmp_termios.i, i32 0, i32 2
  %14 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %c_cflag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %tobool15.not.i = icmp sgt i32 %15, -1
  br i1 %tobool15.not.i, label %if.then16.i, label %if.end14.i.if.end25.i_crit_edge

if.end14.i.if.end25.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then16.i:                                      ; preds = %if.end14.i
  %or.i = or i32 %15, -2147483648
  %16 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or.i, ptr %c_cflag.i, align 4
  %call18.i = call i32 @tty_set_termios(ptr noundef %call1.i, ptr noundef nonnull %tmp_termios.i) #7
  call void @down_read(ptr noundef %termios_rwsem.i.i) #7
  %17 = call ptr @memcpy(ptr %tmp_termios.i, ptr %termios.i.i, i32 44)
  call void @up_read(ptr noundef %termios_rwsem.i.i) #7
  %18 = ptrtoint ptr %c_cflag.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %c_cflag.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %19)
  %tobool21.not.i = icmp sgt i32 %19, -1
  br i1 %tobool21.not.i, label %do.end.i, label %if.then16.i.if.end25.i_crit_edge

if.then16.i.if.end25.i_crit_edge:                 ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

do.end.i:                                         ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #10
  br label %if.end25.i

if.end25.i:                                       ; preds = %do.end.i, %if.then16.i.if.end25.i_crit_edge, %if.end14.i.if.end25.i_crit_edge
  call void @tty_unlock(ptr noundef %call1.i) #7
  call void @mutex_lock_nested(ptr noundef nonnull @speakup_tty_mutex, i32 noundef 0) #7
  store ptr %call1.i, ptr @speakup_tty, align 4
  %call26.i = call i32 @tty_set_ldisc(ptr noundef %call1.i, i32 noundef 26) #7
  store ptr null, ptr @speakup_tty, align 4
  call void @mutex_unlock(ptr noundef nonnull @speakup_tty_mutex) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %spk_ttyio_initialise_ldisc.exit.thread5, label %do.end34.i

spk_ttyio_initialise_ldisc.exit.thread5:          ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  %disc_data.i = getelementptr inbounds %struct.tty_struct, ptr %call1.i, i32 0, i32 29
  %20 = ptrtoint ptr %disc_data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %disc_data.i, align 4
  %synth29.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %synth29.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %synth, ptr %synth29.i, align 4
  %dev30.i = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 33
  %23 = ptrtoint ptr %dev30.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call1.i, ptr %dev30.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp_termios.i) #7
  %alive = getelementptr inbounds %struct.spk_synth, ptr %synth, i32 0, i32 31
  %24 = ptrtoint ptr %alive to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %alive, align 4
  br label %cleanup

do.end34.i:                                       ; preds = %if.end25.i
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  call void @tty_lock(ptr noundef %call1.i) #7
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops.i, align 4
  %close.i = getelementptr inbounds %struct.tty_operations, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %close.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %close.i, align 4
  %tobool38.not.i = icmp eq ptr %28, null
  br i1 %tobool38.not.i, label %do.end34.i.if.end42.i_crit_edge, label %if.then39.i

do.end34.i.if.end42.i_crit_edge:                  ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

if.then39.i:                                      ; preds = %do.end34.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %28(ptr noundef %call1.i, ptr noundef null) #7
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then39.i, %do.end34.i.if.end42.i_crit_edge
  call void @tty_unlock(ptr noundef %call1.i) #7
  call void @tty_kclose(ptr noundef %call1.i) #7
  br label %spk_ttyio_initialise_ldisc.exit.thread

spk_ttyio_initialise_ldisc.exit.thread:           ; preds = %if.end42.i, %if.then13.i, %get_dev_to_use.exit.i.spk_ttyio_initialise_ldisc.exit.thread_crit_edge, %get_dev_to_use.exit.thread79.i
  %retval.0.i.ph = phi i32 [ -22, %get_dev_to_use.exit.thread79.i ], [ %call2.i.i, %get_dev_to_use.exit.i.spk_ttyio_initialise_ldisc.exit.thread_crit_edge ], [ %call26.i, %if.end42.i ], [ %ret.084.i, %if.then13.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp_termios.i) #7
  br label %cleanup

spk_ttyio_initialise_ldisc.exit:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %29 = ptrtoint ptr %call1.i to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev.i) #7
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tmp_termios.i) #7
  br label %cleanup

cleanup:                                          ; preds = %spk_ttyio_initialise_ldisc.exit, %spk_ttyio_initialise_ldisc.exit.thread, %spk_ttyio_initialise_ldisc.exit.thread5
  %retval.0 = phi i32 [ 0, %spk_ttyio_initialise_ldisc.exit.thread5 ], [ %29, %spk_ttyio_initialise_ldisc.exit ], [ %retval.0.i.ph, %spk_ttyio_initialise_ldisc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @spk_ttyio_release(ptr nocapture noundef %in_synth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void @tty_lock(ptr noundef %1) #7
  %ops = getelementptr inbounds %struct.tty_struct, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %close = getelementptr inbounds %struct.tty_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %close to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %close, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %5(ptr noundef %1, ptr noundef null) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @tty_ldisc_flush(ptr noundef %1) #7
  tail call void @tty_unlock(ptr noundef %1) #7
  tail call void @tty_kclose(ptr noundef %1) #7
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %dev, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_ldisc_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_kclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @spk_ttyio_synth_immediate(ptr noundef %in_synth, ptr noundef readonly %buff) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 33
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %io_ops = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 20
  %procspeech = getelementptr inbounds %struct.spk_synth, ptr %in_synth, i32 0, i32 5
  br label %while.cond

while.cond:                                       ; preds = %if.end7, %entry
  %buff.addr.0 = phi ptr [ %buff, %entry ], [ %incdec.ptr, %if.end7 ]
  %2 = ptrtoint ptr %buff.addr.0 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buff.addr.0, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %while.cond.if.end_crit_edge [
    i8 0, label %while.cond.cleanup_crit_edge
    i8 10, label %if.then
  ]

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.if.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %procspeech to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %procspeech, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %while.cond.if.end_crit_edge
  %ch.0 = phi i8 [ %6, %if.then ], [ %3, %while.cond.if.end_crit_edge ]
  %call = tail call i32 @tty_write_room(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp2 = icmp eq i32 %call, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %7 = ptrtoint ptr %io_ops to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %io_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call4 = tail call i32 %10(ptr noundef %in_synth, i8 noundef zeroext %ch.0) #7
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end7

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %incdec.ptr = getelementptr i8, ptr %buff.addr.0, i32 1
  br label %while.cond

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %buff.addr.0, %lor.lhs.false.cleanup_crit_edge ], [ %buff.addr.0, %if.end.cleanup_crit_edge ], [ null, %while.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_write_room(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_ttyio_ldisc_open(ptr nocapture noundef %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @speakup_tty, align 4
  %cmp.not = icmp eq ptr %0, %tty
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %ops = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 4
  %1 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ops, align 4
  %write = getelementptr inbounds %struct.tty_operations, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3264, i32 noundef 68) #12
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %completion = getelementptr inbounds %struct.spk_ldisc_data, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.spk_ldisc_data, ptr %call7.i, i32 0, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.4, ptr noundef nonnull @init_completion.__key) #7
  %buf_free = getelementptr inbounds %struct.spk_ldisc_data, ptr %call7.i, i32 0, i32 2
  %7 = ptrtoint ptr %buf_free to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %buf_free, align 4
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %8 = ptrtoint ptr %disc_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i, ptr %disc_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -19, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -12, %if.end2.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @spk_ttyio_ldisc_close(ptr nocapture noundef readonly %tty) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @spk_ttyio_receive_buf2(ptr nocapture noundef readonly %tty, ptr nocapture noundef readonly %cp, ptr nocapture noundef readnone %fp, i32 noundef %count) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %disc_data = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 29
  %0 = ptrtoint ptr %disc_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %disc_data, align 4
  %synth1 = getelementptr inbounds %struct.spk_ldisc_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %synth1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %synth1, align 4
  %read_buff_add = getelementptr inbounds %struct.spk_synth, ptr %3, i32 0, i32 28
  %4 = ptrtoint ptr %read_buff_add to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read_buff_add, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp18 = icmp sgt i32 %count, 0
  br i1 %cmp18, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %6 = ptrtoint ptr %read_buff_add to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_buff_add, align 4
  %arrayidx = getelementptr i8, ptr %cp, i32 %i.019
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  tail call void %7(i8 noundef zeroext %9) #7
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %buf_free = getelementptr inbounds %struct.spk_ldisc_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %buf_free to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %buf_free, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !67
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %cp to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %cp, align 1
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %1, align 4
  %15 = ptrtoint ptr %buf_free to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %buf_free, align 4
  %completion = getelementptr inbounds %struct.spk_ldisc_data, ptr %1, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body, %if.end.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %if.end.cleanup_crit_edge ], [ %count, %for.cond.preheader.cleanup_crit_edge ], [ %count, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @speakup_start_ttys() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_flip_buffer_push(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_usecs(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tty_kopen_exclusive(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_termios(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_set_ldisc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tty_dev_name_to_number(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @spk_ttyio_ops, !1, !"spk_ttyio_ops", i1 false, i1 false}
!1 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 124, i32 19}
!2 = !{ptr @__ksymtab_spk_ttyio_ops, !3, !"__ksymtab_spk_ttyio_ops", i1 false, i1 false}
!3 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 134, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 217, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @spk_ttyio_register_ldisc._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @spk_ttyio_register_ldisc._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_spk_ttyio_synth_probe, !11, !"__ksymtab_spk_ttyio_synth_probe", i1 false, i1 false}
!11 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 351, i32 1}
!12 = !{ptr @__ksymtab_spk_ttyio_release, !13, !"__ksymtab_spk_ttyio_release", i1 false, i1 false}
!13 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 368, i32 1}
!14 = !{ptr @__ksymtab_spk_ttyio_synth_immediate, !15, !"__ksymtab_spk_ttyio_synth_immediate", i1 false, i1 false}
!15 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 385, i32 1}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 109, i32 20}
!18 = !{ptr @spk_ttyio_ldisc_ops, !19, !"spk_ttyio_ldisc_ops", i1 false, i1 false}
!19 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 106, i32 29}
!20 = !{ptr @speakup_tty, !21, !"speakup_tty", i1 false, i1 false}
!21 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 22, i32 27}
!22 = !{ptr @init_completion.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../include/linux/completion.h", i32 87, i32 2}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 243, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @spk_ttyio_out._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @spk_ttyio_out._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 303, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @ttyio_in._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @ttyio_in._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 182, i32 4}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @spk_ttyio_initialise_ldisc._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @spk_ttyio_initialise_ldisc._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 202, i32 2}
!42 = !{ptr @spk_ttyio_initialise_ldisc._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @spk_ttyio_initialise_ldisc._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 40, i32 30}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 29, i32 3}
!48 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ser_to_dev._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ser_to_dev._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/accessibility/speakup/spk_ttyio.c", i32 24, i32 8}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @speakup_tty_mutex, !52, !"speakup_tty_mutex", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2154085473}
!65 = !{!"auto-init"}
!66 = !{i8 0, i8 2}
!67 = !{i64 2154074794}
