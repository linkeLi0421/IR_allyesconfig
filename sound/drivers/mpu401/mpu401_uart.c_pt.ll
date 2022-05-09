; ModuleID = '/llk/IR_all_yes/sound/drivers/mpu401/mpu401_uart.c_pt.bc'
source_filename = "../sound/drivers/mpu401/mpu401_uart.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_mpu401_uart_interrupt\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_mpu401_uart_interrupt\09\09\09\09"
module asm "\09.long\09__crc_snd_mpu401_uart_interrupt\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_mpu401_uart_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_mpu401_uart_interrupt\22\09\09\09\09\09"
module asm "__kstrtabns_snd_mpu401_uart_interrupt:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_mpu401_uart_interrupt_tx\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_mpu401_uart_interrupt_tx\09\09\09\09"
module asm "\09.long\09__crc_snd_mpu401_uart_interrupt_tx\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_mpu401_uart_interrupt_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_mpu401_uart_interrupt_tx\22\09\09\09\09\09"
module asm "__kstrtabns_snd_mpu401_uart_interrupt_tx:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_mpu401_uart_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_mpu401_uart_new\09\09\09\09"
module asm "\09.long\09__crc_snd_mpu401_uart_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_mpu401_uart_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_mpu401_uart_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_mpu401_uart_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_rawmidi_ops = type { ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_mpu401 = type { ptr, i16, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.spinlock, %struct.spinlock, %struct.timer_list, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.snd_rawmidi = type { ptr, %struct.list_head, i32, i32, [64 x i8], [80 x i8], i32, ptr, [2 x %struct.snd_rawmidi_str], ptr, ptr, %struct.mutex, %struct.wait_queue_head, %struct.device, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_rawmidi_str = type { i32, i32, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_rawmidi_substream = type { %struct.list_head, i32, i32, i8, i8, i8, i32, i32, i32, i32, ptr, ptr, [32 x i8], ptr, ptr, ptr }

@__UNIQUE_ID_author189 = internal constant [56 x i8] c"snd_mpu401_uart.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [73 x i8] c"snd_mpu401_uart.description=Routines for control of MPU-401 in UART mode\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [58 x i8] c"snd_mpu401_uart.file=sound/drivers/mpu401/snd-mpu401-uart\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [28 x i8] c"snd_mpu401_uart.license=GPL\00", section ".modinfo", align 1
@__kstrtab_snd_mpu401_uart_interrupt = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_mpu401_uart_interrupt = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_mpu401_uart_interrupt = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_mpu401_uart_interrupt to i32), ptr @__kstrtab_snd_mpu401_uart_interrupt, ptr @__kstrtabns_snd_mpu401_uart_interrupt }, section "___ksymtab+snd_mpu401_uart_interrupt", align 4
@__kstrtab_snd_mpu401_uart_interrupt_tx = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_mpu401_uart_interrupt_tx = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_mpu401_uart_interrupt_tx = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_mpu401_uart_interrupt_tx to i32), ptr @__kstrtab_snd_mpu401_uart_interrupt_tx, ptr @__kstrtabns_snd_mpu401_uart_interrupt_tx }, section "___ksymtab+snd_mpu401_uart_interrupt_tx", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"MPU-401U\00", [23 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_new.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mpu->input_lock\00", [47 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_new.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mpu->output_lock\00", [46 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_new.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&mpu->timer_lock\00", [47 x i8] zeroinitializer }, align 32
@ioport_resource = external dso_local global %struct.resource, align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MPU401 UART\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"sound/drivers/mpu401/mpu401_uart.c\00", [61 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013mpu401_uart: unable to grab port 0x%lx size %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013mpu401_uart: unable to grab IRQ %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s MIDI\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MPU-401 MIDI %d-%d\00", [45 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_output = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mpu401_uart_output_open, ptr @snd_mpu401_uart_output_close, ptr @snd_mpu401_uart_output_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_input = internal constant { %struct.snd_rawmidi_ops, [16 x i8] } { %struct.snd_rawmidi_ops { ptr @snd_mpu401_uart_input_open, ptr @snd_mpu401_uart_input_close, ptr @snd_mpu401_uart_input_trigger, ptr null }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_snd_mpu401_uart_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_mpu401_uart_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_mpu401_uart_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_mpu401_uart_new to i32), ptr @__kstrtab_snd_mpu401_uart_new, ptr @__kstrtabns_snd_mpu401_uart_new }, section "___ksymtab+snd_mpu401_uart_new", align 4
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013cmd: clear rx timeout (status = 0x%x)\0A\00", [55 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013cmd: tx timeout (status = 0x%x)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cmd: 0x%x failed at 0x%lx (status = 0x%x, data = 0x%x)\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_mpu401_uart_add_timer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&mpu->timer)\00", [18 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 533, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 544, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 545, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 546, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 551, i32 14 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 553, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 575, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 586, i32 46 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 589, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [23 x i8] c"snd_mpu401_uart_output\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 474, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"snd_mpu401_uart_input\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 481, i32 37 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 76, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 227, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 247, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.74 = private constant [38 x i8] c"../sound/drivers/mpu401/mpu401_uart.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 179, i32 3 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__ksymtab_snd_mpu401_uart_interrupt, ptr @__ksymtab_snd_mpu401_uart_interrupt_tx, ptr @__ksymtab_snd_mpu401_uart_new, ptr @.str, ptr @snd_mpu401_uart_new.__key, ptr @.str.1, ptr @snd_mpu401_uart_new.__key.2, ptr @.str.3, ptr @snd_mpu401_uart_new.__key.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_mpu401_uart_output, ptr @snd_mpu401_uart_input, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @snd_mpu401_uart_add_timer.__key, ptr @.str.15], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_new.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_new.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_new.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_output to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mpu401_uart_add_timer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mpu401_uart_interrupt(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_snd_mpu401_uart_interrupt(ptr noundef nonnull %dev_id)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_snd_mpu401_uart_interrupt(ptr noundef %mpu) unnamed_addr #0 align 64 {
entry:
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %info_flags = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 2
  %0 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %info_flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.body1

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.body1:                                         ; preds = %entry
  %input_lock = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #5
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 7
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mode, align 4
  %and1.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.body1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #5
  %4 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %byte.i, align 1, !annotation !57
  %read.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 21
  %cport.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 4
  %port.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 3
  %substream_input.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 14
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %if.then7
  %dec15.i = phi i32 [ 127, %if.then7 ], [ %dec.i, %if.end7.i.while.body.i_crit_edge ]
  %5 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read.i, align 4
  %7 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cport.i, align 4
  %call.i = call zeroext i8 %6(ptr noundef %mpu, i32 noundef %8) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool.not.i = icmp sgt i8 %call.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.snd_mpu401_uart_input_read.exit_crit_edge

while.body.i.snd_mpu401_uart_input_read.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_input_read.exit

if.end.i:                                         ; preds = %while.body.i
  %9 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read.i, align 4
  %11 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port.i, align 4
  %call2.i = call zeroext i8 %10(ptr noundef %mpu, i32 noundef %12) #5
  %13 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %call2.i, ptr %byte.i, align 1
  %14 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %mode, align 4
  %16 = and i32 %15, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool4.not.i = icmp eq i32 %16, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %substream_input.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %substream_input.i, align 4
  %call6.i = call i32 @snd_rawmidi_receive(ptr noundef %18, ptr noundef nonnull %byte.i, i32 noundef 1) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %dec.i = add nsw i32 %dec15.i, -1
  %cmp.not.i = icmp eq i32 %dec15.i, 0
  br i1 %cmp.not.i, label %if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_input_read.exit

snd_mpu401_uart_input_read.exit:                  ; preds = %if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge, %while.body.i.snd_mpu401_uart_input_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #5
  br label %if.end

if.else:                                          ; preds = %do.body1
  %read.i22 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 21
  %cport.i23 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 4
  %port.i24 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 3
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.body.i.land.rhs.i_crit_edge, %if.else
  %timeout.020.i = phi i32 [ 100000, %if.else ], [ %dec.i28, %for.body.i.land.rhs.i_crit_edge ]
  %19 = ptrtoint ptr %read.i22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %read.i22, align 4
  %21 = ptrtoint ptr %cport.i23 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cport.i23, align 4
  %call.i25 = tail call zeroext i8 %20(ptr noundef %mpu, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i25)
  %tobool.not.i26 = icmp sgt i8 %call.i25, -1
  br i1 %tobool.not.i26, label %for.body.i, label %land.rhs.i.if.end_crit_edge

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.i:                                       ; preds = %land.rhs.i
  %23 = ptrtoint ptr %read.i22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read.i22, align 4
  %25 = ptrtoint ptr %port.i24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %port.i24, align 4
  %call2.i27 = tail call zeroext i8 %24(ptr noundef %mpu, i32 noundef %26) #5
  %dec.i28 = add nsw i32 %timeout.020.i, -1
  %cmp.i = icmp ugt i32 %timeout.020.i, 1
  br i1 %cmp.i, label %for.body.i.land.rhs.i_crit_edge, label %if.then.i

for.body.i.land.rhs.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %read.i22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read.i22, align 4
  %29 = ptrtoint ptr %cport.i23 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cport.i23, align 4
  %call7.i = tail call zeroext i8 %28(ptr noundef %mpu, i32 noundef %30) #5
  %conv8.i = zext i8 %call7.i to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 77, ptr noundef nonnull @.str.12, i32 noundef %conv8.i) #5
  br label %if.end

if.end:                                           ; preds = %if.then.i, %land.rhs.i.if.end_crit_edge, %snd_mpu401_uart_input_read.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  %31 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %info_flags, align 4
  %and11 = and i32 %32, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.then13, label %if.end9.if.end14_crit_edge

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

if.then13:                                        ; preds = %if.end9
  %mode.i30 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 7
  %33 = ptrtoint ptr %mode.i30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %mode.i30, align 4
  %35 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i31 = icmp eq i32 %35, 0
  br i1 %tobool.not.i31, label %if.then13.if.end14_crit_edge, label %land.lhs.true.i

if.then13.if.end14_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

land.lhs.true.i:                                  ; preds = %if.then13
  %36 = ptrtoint ptr %mode.i30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %mode.i30, align 4
  %38 = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool3.not.i = icmp eq i32 %38, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.if.end14_crit_edge, label %do.body4.i

land.lhs.true.i.if.end14_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14

do.body4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %output_lock.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 17
  %call6.i32 = call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  call fastcc void @snd_mpu401_uart_output_write(ptr noundef %mpu) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call6.i32) #5
  br label %if.end14

if.end14:                                         ; preds = %do.body4.i, %land.lhs.true.i.if.end14_crit_edge, %if.then13.if.end14_crit_edge, %if.end9.if.end14_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mpu401_uart_interrupt_tx(i32 %irq, ptr noundef %dev_id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dev_id, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode.i = getelementptr inbounds %struct.snd_mpu401, ptr %dev_id, i32 0, i32 7
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mode.i, align 4
  %2 = and i32 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i = icmp eq i32 %2, 0
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %land.lhs.true.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %mode.i, align 4
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %do.body4.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body4.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  %output_lock.i = getelementptr inbounds %struct.snd_mpu401, ptr %dev_id, i32 0, i32 17
  %call6.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock.i) #5
  tail call fastcc void @snd_mpu401_uart_output_write(ptr noundef nonnull %dev_id) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock.i, i32 noundef %call6.i) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body4.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %land.lhs.true.i.cleanup_crit_edge ], [ 1, %do.body4.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mpu401_uart_new(ptr noundef %card, i32 noundef %device, i16 noundef zeroext %hardware, i32 noundef %port, i32 noundef %info_flags, i32 noundef %irq, ptr noundef writeonly %rrawmidi) #0 align 64 {
entry:
  %rmidi = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rmidi) #5
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %rmidi, align 4, !annotation !57
  %tobool.not = icmp eq ptr %rrawmidi, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %rrawmidi to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %rrawmidi, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = and i32 %info_flags, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  %or = or i32 %info_flags, 3
  %spec.select = select i1 %tobool1.not, i32 %or, i32 %info_flags
  %and4 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  %not.tobool5.not = xor i1 %tobool5.not, true
  %cond = zext i1 %not.tobool5.not to i32
  %and6 = and i32 %spec.select, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %not.tobool7.not = xor i1 %tobool7.not, true
  %cond8 = zext i1 %not.tobool7.not to i32
  %call = call i32 @snd_rawmidi_new(ptr noundef %card, ptr noundef nonnull @.str, i32 noundef %device, i32 noundef %cond8, i32 noundef %cond, ptr noundef nonnull %rmidi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup99_crit_edge, label %if.end10

if.end.cleanup99_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup99

if.end10:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 252) #8
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.free_device_crit_edge, label %if.end14

if.end10.free_device_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %free_device

if.end14:                                         ; preds = %if.end10
  %3 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  %private_free = getelementptr inbounds %struct.snd_rawmidi, ptr %4, i32 0, i32 10
  %6 = ptrtoint ptr %private_free to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_mpu401_uart_free, ptr %private_free, align 8
  %input_lock = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 16
  call void @__raw_spin_lock_init(ptr noundef %input_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_mpu401_uart_new.__key, i16 noundef signext 3) #5
  %output_lock = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 17
  call void @__raw_spin_lock_init(ptr noundef %output_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @snd_mpu401_uart_new.__key.2, i16 noundef signext 3) #5
  %timer_lock = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 18
  call void @__raw_spin_lock_init(ptr noundef %timer_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @snd_mpu401_uart_new.__key.4, i16 noundef signext 3) #5
  %hardware24 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %hardware24 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %hardware, ptr %hardware24, align 4
  %irq25 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq25, align 8
  %and26 = and i32 %spec.select, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  br i1 %tobool27.not, label %if.then28, label %if.end14.if.end37_crit_edge

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

if.then28:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %hardware)
  %cmp29 = icmp eq i16 %hardware, 18
  %cond31 = select i1 %cmp29, i32 4, i32 2
  %call32 = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %port, i32 noundef %cond31, ptr noundef nonnull @.str.6, i32 noundef 0) #5
  %res = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call32, ptr %res, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %cleanup, label %if.then28.if.end37_crit_edge

if.then28.if.end37_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

cleanup:                                          ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 555, ptr noundef nonnull @.str.8, i32 noundef %port, i32 noundef %cond31) #5
  br label %free_device

if.end37:                                         ; preds = %if.then28.if.end37_crit_edge, %if.end14.if.end37_crit_edge
  %and38 = and i32 %spec.select, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  %spec.select159 = select i1 %tobool39.not, ptr @mpu401_write_port, ptr @mpu401_write_mmio
  %spec.select160 = select i1 %tobool39.not, ptr @mpu401_read_port, ptr @mpu401_read_mmio
  %10 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 20
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %spec.select159, ptr %10, align 4
  %12 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 21
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select160, ptr %12, align 8
  %port44 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %port44 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %port, ptr %port44, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 18, i16 %hardware)
  %cmp46 = icmp eq i16 %hardware, 18
  %. = select i1 %cmp46, i32 2, i32 1
  %add50 = add i32 %., %port
  %15 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add50, ptr %15, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq)
  %cmp53 = icmp sgt i32 %irq, -1
  br i1 %cmp53, label %if.then55, label %if.end37.if.end60_crit_edge

if.end37.if.end60_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then55:                                        ; preds = %if.end37
  %call.i = call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef nonnull @snd_mpu401_uart_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.6, ptr noundef nonnull %call7.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool57.not = icmp eq i32 %call.i, 0
  br i1 %tobool57.not, label %if.then55.if.end60_crit_edge, label %if.then58

if.then55.if.end60_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then58:                                        ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #7
  call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 576, ptr noundef nonnull @.str.9, i32 noundef %irq) #5
  br label %free_device

if.end60:                                         ; preds = %if.then55.if.end60_crit_edge, %if.end37.if.end60_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %cmp61 = icmp slt i32 %irq, 0
  %and63 = and i32 %spec.select, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  %or.cond = and i1 %cmp61, %tobool64.not
  %or66 = or i32 %spec.select, 32768
  %info_flags.addr.1 = select i1 %or.cond, i32 %or66, i32 %spec.select
  %info_flags68 = getelementptr inbounds %struct.snd_mpu401, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %info_flags68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %info_flags.addr.1, ptr %info_flags68, align 8
  %18 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %irq, ptr %irq25, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 3
  %19 = ptrtoint ptr %shortname to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %shortname, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool70.not = icmp eq i8 %20, 0
  %21 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %rmidi, align 4
  %name76 = getelementptr inbounds %struct.snd_rawmidi, ptr %22, i32 0, i32 5
  br i1 %tobool70.not, label %if.else75, label %if.then71

if.then71:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %call74 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name76, i32 noundef 80, ptr noundef nonnull @.str.10, ptr noundef %shortname)
  br label %if.end79

if.else75:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %card, align 8
  %call78 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %name76, ptr noundef nonnull @.str.11, i32 noundef %24, i32 noundef %device)
  br label %if.end79

if.end79:                                         ; preds = %if.else75, %if.then71
  br i1 %tobool7.not, label %if.end79.if.end84_crit_edge, label %if.then81

if.end79.if.end84_crit_edge:                      ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end84

if.then81:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %26, i32 noundef 0, ptr noundef nonnull @snd_mpu401_uart_output) #5
  %27 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rmidi, align 4
  %info_flags82 = getelementptr inbounds %struct.snd_rawmidi, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %info_flags82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %info_flags82, align 8
  %or83 = or i32 %30, 1
  store i32 %or83, ptr %info_flags82, align 8
  br label %if.end84

if.end84:                                         ; preds = %if.then81, %if.end79.if.end84_crit_edge
  br i1 %tobool5.not, label %if.end84.if.end94_crit_edge, label %if.then86

if.end84.if.end94_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then86:                                        ; preds = %if.end84
  %31 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %rmidi, align 4
  call void @snd_rawmidi_set_ops(ptr noundef %32, i32 noundef 1, ptr noundef nonnull @snd_mpu401_uart_input) #5
  %33 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %rmidi, align 4
  %info_flags87 = getelementptr inbounds %struct.snd_rawmidi, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %info_flags87 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %info_flags87, align 8
  %or88 = or i32 %36, 2
  store i32 %or88, ptr %info_flags87, align 8
  br i1 %tobool7.not, label %if.then86.if.end94_crit_edge, label %if.then90

if.then86.if.end94_crit_edge:                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then90:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #7
  %or92 = or i32 %36, 6
  %37 = ptrtoint ptr %info_flags87 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or92, ptr %info_flags87, align 8
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.then86.if.end94_crit_edge, %if.end84.if.end94_crit_edge
  %38 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %rmidi, align 4
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %call7.i.i, align 8
  br i1 %tobool.not, label %if.end94.cleanup99_crit_edge, label %if.then97

if.end94.cleanup99_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup99

if.then97:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %rrawmidi to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %39, ptr %rrawmidi, align 4
  br label %cleanup99

free_device:                                      ; preds = %if.then58, %cleanup, %if.end10.free_device_crit_edge
  %err.1 = phi i32 [ -16, %if.then58 ], [ -16, %cleanup ], [ -12, %if.end10.free_device_crit_edge ]
  %42 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rmidi, align 4
  call void @snd_device_free(ptr noundef %card, ptr noundef %43) #5
  br label %cleanup99

cleanup99:                                        ; preds = %free_device, %if.then97, %if.end94.cleanup99_crit_edge, %if.end.cleanup99_crit_edge
  %retval.0 = phi i32 [ %err.1, %free_device ], [ %call, %if.end.cleanup99_crit_edge ], [ 0, %if.then97 ], [ 0, %if.end94.cleanup99_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rmidi) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mpu401_uart_free(ptr nocapture noundef readonly %rmidi) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %rmidi, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %irq = getelementptr inbounds %struct.snd_mpu401, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %cmp = icmp sgt i32 %3, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %res = getelementptr inbounds %struct.snd_mpu401, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %res, align 4
  tail call void @release_and_free_resource(ptr noundef %5) #5
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__snd_printk(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpu401_write_mmio(ptr nocapture noundef readnone %mpu, i8 noundef zeroext %data, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %0 = inttoptr i32 %addr to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %0, i8 %data) #5, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mpu401_read_mmio(ptr nocapture noundef readnone %mpu, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %addr to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  ret i8 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mpu401_write_port(ptr nocapture noundef readnone %mpu, i8 noundef zeroext %data, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %and = and i32 %addr, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %0, i8 %data) #5, !srcloc !59
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mpu401_read_port(ptr nocapture noundef readnone %mpu, i32 noundef %addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %addr, 1048575
  %add = or i32 %and, -18874368
  %0 = inttoptr i32 %add to ptr
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %0) #5, !srcloc !60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  ret i8 %1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_rawmidi_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_receive(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mpu401_uart_output_write(ptr noundef %mpu) unnamed_addr #0 align 64 {
entry:
  %byte = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #5
  %0 = ptrtoint ptr %byte to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %byte, align 1, !annotation !57
  %substream_output = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 15
  %read = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 21
  %cport = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 4
  %write = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 20
  %port = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %max.0 = phi i32 [ 256, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %1 = ptrtoint ptr %substream_output to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %substream_output, align 4
  %call = call i32 @snd_rawmidi_transmit_peek(ptr noundef %2, ptr noundef nonnull %byte, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %3 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %read, align 4
  %5 = ptrtoint ptr %cport to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cport, align 4
  %call1 = call zeroext i8 %4(ptr noundef %mpu, i32 noundef %6) #5
  %7 = and i8 %call1, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %8 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read, align 4
  %10 = ptrtoint ptr %cport to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cport, align 4
  %call4 = call zeroext i8 %9(ptr noundef %mpu, i32 noundef %11) #5
  %12 = and i8 %call4, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool7.not = icmp eq i8 %12, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %13 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write, align 4
  %15 = ptrtoint ptr %byte to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %byte, align 1
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  call void %14(ptr noundef %mpu, i8 noundef zeroext %16, i32 noundef %18) #5
  %19 = ptrtoint ptr %substream_output to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %substream_output, align 4
  %call10 = call i32 @snd_rawmidi_transmit_ack(ptr noundef %20, i32 noundef 1) #5
  %dec = add nsw i32 %max.0, -1
  %cmp12.not = icmp eq i32 %dec, 0
  br i1 %cmp12.not, label %if.end.do.end_crit_edge, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.else:                                          ; preds = %do.body
  %timer_lock.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 18
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock.i) #5
  %timer_invoked.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 8
  %21 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %timer_invoked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %if.else.snd_mpu401_uart_remove_timer.exit_crit_edge, label %if.then.i

if.else.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then.i:                                        ; preds = %if.else
  %and.i = and i32 %22, -3
  %23 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %timer_invoked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge

if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %timer.i = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 19
  %call10.i = call i32 @del_timer(ptr noundef %timer.i) #5
  br label %snd_mpu401_uart_remove_timer.exit

snd_mpu401_uart_remove_timer.exit:                ; preds = %if.then9.i, %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge, %if.else.snd_mpu401_uart_remove_timer.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock.i, i32 noundef %call2.i) #5
  br label %do.end

do.end:                                           ; preds = %snd_mpu401_uart_remove_timer.exit, %if.end.do.end_crit_edge, %land.lhs.true.do.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_peek(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_rawmidi_transmit_ack(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_and_free_resource(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mpu401_uart_output_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_output = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %open_output to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open_output, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mode, align 4
  %and1.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  %call.i = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.error_out_crit_edge

if.then6.error_out_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext 63, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.end.i.error_out_crit_edge

if.end.i.error_out_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %substream_output = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 15
  %8 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %substream, ptr %substream_output, align 4
  tail call void @_set_bit(i32 noundef 1, ptr noundef %mode) #5
  br label %cleanup

error_out:                                        ; preds = %if.end.i.error_out_crit_edge, %if.then6.error_out_crit_edge
  %9 = ptrtoint ptr %open_output to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %open_output, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %error_out.cleanup_crit_edge, label %land.lhs.true

error_out.cleanup_crit_edge:                      ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %error_out
  %close_output = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 12
  %11 = ptrtoint ptr %close_output to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %close_output, align 4
  %tobool15.not = icmp eq ptr %12, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %12(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %error_out.cleanup_crit_edge, %if.end11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %if.then.cleanup_crit_edge ], [ -5, %if.then16 ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %error_out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mpu401_uart_output_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %mode) #5
  %substream_output = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %substream_output to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream_output, align 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mode, align 4
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  %close_output = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 12
  %7 = ptrtoint ptr %close_output to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %close_output, align 4
  %tobool3.not = icmp eq ptr %8, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %8(ptr noundef %3) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool7.not = icmp eq i32 %err.0, 0
  %. = select i1 %tobool7.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mpu401_uart_output_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  tail call void @_set_bit(i32 noundef 3, ptr noundef %mode) #5
  %info_flags = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %info_flags, align 4
  %and = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.then2, label %if.then.do.body3_crit_edge

if.then.do.body3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body3

if.then2:                                         ; preds = %if.then
  %timer_lock.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock.i) #5
  %timer_invoked.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %timer_invoked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp5.i = icmp eq i32 %7, 0
  br i1 %cmp5.i, label %do.body7.i, label %if.then2.snd_mpu401_uart_add_timer.exit_crit_edge

if.then2.snd_mpu401_uart_add_timer.exit_crit_edge: ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_add_timer.exit

do.body7.i:                                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #7
  %timer.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 19
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @snd_mpu401_uart_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_mpu401_uart_add_timer.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %8, 1
  %call11.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #5
  br label %snd_mpu401_uart_add_timer.exit

snd_mpu401_uart_add_timer.exit:                   ; preds = %do.body7.i, %if.then2.snd_mpu401_uart_add_timer.exit_crit_edge
  %9 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timer_invoked.i, align 4
  %or.i = or i32 %10, 2
  store i32 %or.i, ptr %timer_invoked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock.i, i32 noundef %call2.i) #5
  br label %do.body3

do.body3:                                         ; preds = %snd_mpu401_uart_add_timer.exit, %if.then.do.body3_crit_edge
  %output_lock = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 17
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %output_lock) #5
  tail call fastcc void @snd_mpu401_uart_output_write(ptr noundef %3)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %output_lock, i32 noundef %call4) #5
  br label %if.end14

if.else:                                          ; preds = %entry
  %info_flags8 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %info_flags8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %info_flags8, align 4
  %and9 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.then11, label %if.else.if.end12_crit_edge

if.else.if.end12_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then11:                                        ; preds = %if.else
  %timer_lock.i23 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 18
  %call2.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock.i23) #5
  %timer_invoked.i25 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 8
  %13 = ptrtoint ptr %timer_invoked.i25 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timer_invoked.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %if.then11.snd_mpu401_uart_remove_timer.exit_crit_edge, label %if.then.i

if.then11.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then.i:                                        ; preds = %if.then11
  %and.i = and i32 %14, -3
  %15 = ptrtoint ptr %timer_invoked.i25 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and.i, ptr %timer_invoked.i25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge

if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %timer.i26 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 19
  %call10.i = tail call i32 @del_timer(ptr noundef %timer.i26) #5
  br label %snd_mpu401_uart_remove_timer.exit

snd_mpu401_uart_remove_timer.exit:                ; preds = %if.then9.i, %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge, %if.then11.snd_mpu401_uart_remove_timer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock.i23, i32 noundef %call2.i24) #5
  br label %if.end12

if.end12:                                         ; preds = %snd_mpu401_uart_remove_timer.exit, %if.else.if.end12_crit_edge
  %mode13 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %mode13) #5
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %do.body3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %mpu, i8 noundef zeroext %cmd, i32 noundef %ack) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input_lock = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 16
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #5
  %hardware = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 1
  %0 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 9, i16 %1)
  %cmp6.not = icmp eq i16 %1, 9
  br i1 %cmp6.not, label %entry.for.cond.preheader_crit_edge, label %if.then

entry.for.cond.preheader_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then:                                          ; preds = %entry
  %write = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 20
  %2 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %write, align 4
  %port = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 3
  %4 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %port, align 4
  tail call void %3(ptr noundef %mpu, i8 noundef zeroext 0, i32 noundef %5) #5
  %6 = ptrtoint ptr %hardware to i32
  call void @__asan_load2_noabort(i32 %6)
  %.pr = load i16, ptr %hardware, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.pr)
  %phi.cmp = icmp eq i16 %.pr, 2
  br i1 %phi.cmp, label %if.then.if.end25_crit_edge, label %if.then.for.cond.preheader_crit_edge

if.then.for.cond.preheader_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.then.if.end25_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.cond.preheader:                               ; preds = %if.then.for.cond.preheader_crit_edge, %entry.for.cond.preheader_crit_edge
  %read = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 21
  %cport = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 4
  br label %land.rhs

land.rhs:                                         ; preds = %for.body.land.rhs_crit_edge, %for.cond.preheader
  %timeout.0121 = phi i32 [ 1000, %for.cond.preheader ], [ %dec, %for.body.land.rhs_crit_edge ]
  %7 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read, align 4
  %9 = ptrtoint ptr %cport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cport, align 4
  %call15 = tail call zeroext i8 %8(ptr noundef %mpu, i32 noundef %10) #5
  %11 = and i8 %call15, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %land.rhs.if.end25_crit_edge, label %for.body

land.rhs.if.end25_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end25

for.body:                                         ; preds = %land.rhs
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #5
  %dec = add nsw i32 %timeout.0121, -1
  %cmp13 = icmp ugt i32 %timeout.0121, 1
  br i1 %cmp13, label %for.body.land.rhs_crit_edge, label %if.then19

for.body.land.rhs_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

if.then19:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %read, align 4
  %15 = ptrtoint ptr %cport to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cport, align 4
  %call22 = tail call zeroext i8 %14(ptr noundef %mpu, i32 noundef %16) #5
  %conv23 = zext i8 %call22 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 228, ptr noundef nonnull @.str.13, i32 noundef %conv23) #5
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %land.rhs.if.end25_crit_edge, %if.then.if.end25_crit_edge
  %write26 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 20
  %17 = ptrtoint ptr %write26 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write26, align 4
  %cport27 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 4
  %19 = ptrtoint ptr %cport27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cport27, align 4
  tail call void %18(ptr noundef %mpu, i8 noundef zeroext %cmd, i32 noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ack)
  %tobool28.not = icmp eq i32 %ack, 0
  br i1 %tobool28.not, label %if.end25.if.end64_crit_edge, label %land.lhs.true

if.end25.if.end64_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

land.lhs.true:                                    ; preds = %if.end25
  %info_flags = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 2
  %21 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %info_flags, align 4
  %and29 = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %while.cond.preheader, label %land.lhs.true.if.end64_crit_edge

land.lhs.true.if.end64_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

while.cond.preheader:                             ; preds = %land.lhs.true
  %read38 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 21
  %port46 = getelementptr inbounds %struct.snd_mpu401, ptr %mpu, i32 0, i32 3
  br label %land.rhs33

land.rhs33:                                       ; preds = %if.end53.land.rhs33_crit_edge, %while.cond.preheader
  %timeout.1122 = phi i32 [ 10000, %while.cond.preheader ], [ %dec34, %if.end53.land.rhs33_crit_edge ]
  %dec34 = add nsw i32 %timeout.1122, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %timeout.1122)
  %cmp35.not = icmp eq i32 %timeout.1122, 0
  %23 = ptrtoint ptr %read38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %read38, align 4
  br i1 %cmp35.not, label %land.lhs.true55.critedge, label %while.body

while.body:                                       ; preds = %land.rhs33
  %25 = ptrtoint ptr %cport27 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cport27, align 4
  %call40 = tail call zeroext i8 %24(ptr noundef %mpu, i32 noundef %26) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call40)
  %tobool43.not = icmp sgt i8 %call40, -1
  br i1 %tobool43.not, label %if.then44, label %while.body.if.end53_crit_edge

while.body.if.end53_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then44:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %read38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %read38, align 4
  %29 = ptrtoint ptr %port46 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port46, align 4
  %call47 = tail call zeroext i8 %28(ptr noundef %mpu, i32 noundef %30) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call47)
  %cmp49 = icmp eq i8 %call47, -2
  %spec.select = zext i1 %cmp49 to i32
  br label %if.end53

if.end53:                                         ; preds = %if.then44, %while.body.if.end53_crit_edge
  %ok.1 = phi i32 [ 0, %while.body.if.end53_crit_edge ], [ %spec.select, %if.then44 ]
  %tobool32.not = icmp eq i32 %ok.1, 0
  br i1 %tobool32.not, label %if.end53.land.rhs33_crit_edge, label %if.end53.if.end64_crit_edge

if.end53.if.end64_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.end53.land.rhs33_crit_edge:                    ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs33

land.lhs.true55.critedge:                         ; preds = %land.rhs33
  %31 = ptrtoint ptr %port46 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port46, align 4
  %call58 = tail call zeroext i8 %24(ptr noundef %mpu, i32 noundef %32) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %call58)
  %cmp60 = icmp eq i8 %call58, -2
  br i1 %cmp60, label %land.lhs.true55.critedge.if.end64_crit_edge, label %if.then67.critedge

land.lhs.true55.critedge.if.end64_crit_edge:      ; preds = %land.lhs.true55.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true55.critedge.if.end64_crit_edge, %if.end53.if.end64_crit_edge, %land.lhs.true.if.end64_crit_edge, %if.end25.if.end64_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #5
  br label %cleanup

if.then67.critedge:                               ; preds = %land.lhs.true55.critedge
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call2) #5
  %conv68 = zext i8 %cmd to i32
  %33 = ptrtoint ptr %port46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port46, align 4
  %35 = ptrtoint ptr %read38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %read38, align 4
  %37 = ptrtoint ptr %cport27 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %cport27, align 4
  %call72 = tail call zeroext i8 %36(ptr noundef %mpu, i32 noundef %38) #5
  %conv73 = zext i8 %call72 to i32
  %39 = ptrtoint ptr %read38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %read38, align 4
  %41 = ptrtoint ptr %port46 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port46, align 4
  %call76 = tail call zeroext i8 %40(ptr noundef %mpu, i32 noundef %42) #5
  %conv77 = zext i8 %call76 to i32
  tail call void (i32, ptr, i32, ptr, ...) @__snd_printk(i32 noundef 0, ptr noundef nonnull @.str.7, i32 noundef 250, ptr noundef nonnull @.str.14, i32 noundef %conv68, i32 noundef %34, i32 noundef %conv73, i32 noundef %conv77) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then67.critedge, %if.end64
  %retval.0 = phi i32 [ 0, %if.end64 ], [ 1, %if.then67.critedge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mpu401_uart_timer(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -196
  %timer_lock = getelementptr i8, ptr %t, i32 -44
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 1
  %call6 = tail call i32 @mod_timer(ptr noundef %t, i32 noundef %add) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock, i32 noundef %call3) #5
  %1 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %add.ptr, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_snd_mpu401_uart_interrupt(ptr noundef %add.ptr)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mpu401_uart_input_open(ptr noundef %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %open_input = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %open_input to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %open_input, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end3_crit_edge, label %if.then

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %call = tail call i32 %5(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %mode, align 4
  %8 = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool5.not = icmp eq i32 %8, 0
  br i1 %tobool5.not, label %if.then6, label %if.end3.if.end11_crit_edge

if.end3.if.end11_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then6:                                         ; preds = %if.end3
  %call.i = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext -1, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then6.error_out_crit_edge

if.then6.error_out_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end.i:                                         ; preds = %if.then6
  %call1.i = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext 63, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end11_crit_edge, label %if.end.i.error_out_crit_edge

if.end.i.error_out_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %error_out

if.end.i.if.end11_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %if.end.i.if.end11_crit_edge, %if.end3.if.end11_crit_edge
  %substream_input = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 14
  %9 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %substream, ptr %substream_input, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %mode) #5
  br label %cleanup

error_out:                                        ; preds = %if.end.i.error_out_crit_edge, %if.then6.error_out_crit_edge
  %10 = ptrtoint ptr %open_input to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %open_input, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %error_out.cleanup_crit_edge, label %land.lhs.true

error_out.cleanup_crit_edge:                      ; preds = %error_out
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %error_out
  %close_input = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 10
  %12 = ptrtoint ptr %close_input to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %close_input, align 4
  %tobool15.not = icmp eq ptr %13, null
  br i1 %tobool15.not, label %land.lhs.true.cleanup_crit_edge, label %if.then16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %13(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %land.lhs.true.cleanup_crit_edge, %error_out.cleanup_crit_edge, %if.end11, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end11 ], [ %call, %if.then.cleanup_crit_edge ], [ -5, %if.then16 ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -5, %error_out.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mpu401_uart_input_close(ptr nocapture noundef readonly %substream) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %mode) #5
  %substream_input = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 14
  %4 = ptrtoint ptr %substream_input to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %substream_input, align 4
  %5 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %mode, align 4
  %7 = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = tail call fastcc i32 @snd_mpu401_uart_cmd(ptr noundef %3, i8 noundef zeroext -1, i32 noundef 0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end_crit_edge ], [ %call2, %if.then ]
  %close_input = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 10
  %8 = ptrtoint ptr %close_input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %close_input, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %if.end.if.end6_crit_edge, label %if.then4

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %9(ptr noundef %3) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.end.if.end6_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool7.not = icmp eq i32 %err.0, 0
  %. = select i1 %tobool7.not, i32 0, i32 -5
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mpu401_uart_input_trigger(ptr nocapture noundef readonly %substream, i32 noundef %up) #0 align 64 {
entry:
  %byte.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %rmidi = getelementptr inbounds %struct.snd_rawmidi_substream, ptr %substream, i32 0, i32 10
  %0 = ptrtoint ptr %rmidi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rmidi, align 4
  %private_data = getelementptr inbounds %struct.snd_rawmidi, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %up)
  %tobool.not = icmp eq i32 %up, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  %call = tail call i32 @_test_and_set_bit(i32 noundef 2, ptr noundef %mode) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %while.cond.preheader, label %if.then.do.body7_crit_edge

if.then.do.body7_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

while.cond.preheader:                             ; preds = %if.then
  %read = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 21
  %port = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 3
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader
  %max.038 = phi i32 [ 64, %while.cond.preheader ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add nsw i32 %max.038, -1
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %call3 = tail call zeroext i8 %5(ptr noundef %3, i32 noundef %7) #5
  %cmp = icmp ugt i32 %max.038, 1
  br i1 %cmp, label %while.body.while.body_crit_edge, label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.end:                                        ; preds = %while.body
  %info_flags = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %info_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %info_flags, align 4
  %and = and i32 %9, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %while.end.do.body7_crit_edge, label %if.then5

while.end.do.body7_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body7

if.then5:                                         ; preds = %while.end
  %timer_lock.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 18
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock.i) #5
  %timer_invoked.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %timer_invoked.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.i = icmp eq i32 %11, 0
  br i1 %cmp5.i, label %do.body7.i, label %if.then5.snd_mpu401_uart_add_timer.exit_crit_edge

if.then5.snd_mpu401_uart_add_timer.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_add_timer.exit

do.body7.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %timer.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 19
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @snd_mpu401_uart_timer, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef nonnull @snd_mpu401_uart_add_timer.__key) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %12, 1
  %call11.i = tail call i32 @mod_timer(ptr noundef %timer.i, i32 noundef %add.i) #5
  br label %snd_mpu401_uart_add_timer.exit

snd_mpu401_uart_add_timer.exit:                   ; preds = %do.body7.i, %if.then5.snd_mpu401_uart_add_timer.exit_crit_edge
  %13 = ptrtoint ptr %timer_invoked.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %timer_invoked.i, align 4
  %or.i = or i32 %14, 1
  store i32 %or.i, ptr %timer_invoked.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock.i, i32 noundef %call2.i) #5
  br label %do.body7

do.body7:                                         ; preds = %snd_mpu401_uart_add_timer.exit, %while.end.do.body7_crit_edge, %if.then.do.body7_crit_edge
  %input_lock = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 16
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %input_lock) #5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #5
  %15 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 -1, ptr %byte.i, align 1, !annotation !57
  %read.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 21
  %cport.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 4
  %port.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 3
  %substream_input.i = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 14
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %do.body7
  %dec15.i = phi i32 [ 127, %do.body7 ], [ %dec.i, %if.end7.i.while.body.i_crit_edge ]
  %16 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %read.i, align 4
  %18 = ptrtoint ptr %cport.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cport.i, align 4
  %call.i = call zeroext i8 %17(ptr noundef %3, i32 noundef %19) #5
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call.i)
  %tobool.not.i = icmp sgt i8 %call.i, -1
  br i1 %tobool.not.i, label %if.end.i, label %while.body.i.snd_mpu401_uart_input_read.exit_crit_edge

while.body.i.snd_mpu401_uart_input_read.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_input_read.exit

if.end.i:                                         ; preds = %while.body.i
  %20 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read.i, align 4
  %22 = ptrtoint ptr %port.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port.i, align 4
  %call2.i32 = call zeroext i8 %21(ptr noundef %3, i32 noundef %23) #5
  %24 = ptrtoint ptr %byte.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %call2.i32, ptr %byte.i, align 1
  %25 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %mode, align 4
  %27 = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool4.not.i = icmp eq i32 %27, 0
  br i1 %tobool4.not.i, label %if.end.i.if.end7.i_crit_edge, label %if.then5.i

if.end.i.if.end7.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %substream_input.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %substream_input.i, align 4
  %call6.i = call i32 @snd_rawmidi_receive(ptr noundef %29, ptr noundef nonnull %byte.i, i32 noundef 1) #5
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.then5.i, %if.end.i.if.end7.i_crit_edge
  %dec.i = add nsw i32 %dec15.i, -1
  %cmp.not.i = icmp eq i32 %dec15.i, 0
  br i1 %cmp.not.i, label %if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge: ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_input_read.exit

snd_mpu401_uart_input_read.exit:                  ; preds = %if.end7.i.snd_mpu401_uart_input_read.exit_crit_edge, %while.body.i.snd_mpu401_uart_input_read.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %input_lock, i32 noundef %call10) #5
  br label %if.end20

if.else:                                          ; preds = %entry
  %info_flags14 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 2
  %30 = ptrtoint ptr %info_flags14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %info_flags14, align 4
  %and15 = and i32 %31, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else.if.end18_crit_edge, label %if.then17

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

if.then17:                                        ; preds = %if.else
  %timer_lock.i33 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 18
  %call2.i34 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %timer_lock.i33) #5
  %timer_invoked.i35 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %timer_invoked.i35 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %timer_invoked.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i36 = icmp eq i32 %33, 0
  br i1 %tobool.not.i36, label %if.then17.snd_mpu401_uart_remove_timer.exit_crit_edge, label %if.then.i

if.then17.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then.i:                                        ; preds = %if.then17
  %and.i = and i32 %33, -2
  %34 = ptrtoint ptr %timer_invoked.i35 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i, ptr %timer_invoked.i35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge

if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_mpu401_uart_remove_timer.exit

if.then9.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %timer.i37 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 19
  %call10.i = tail call i32 @del_timer(ptr noundef %timer.i37) #5
  br label %snd_mpu401_uart_remove_timer.exit

snd_mpu401_uart_remove_timer.exit:                ; preds = %if.then9.i, %if.then.i.snd_mpu401_uart_remove_timer.exit_crit_edge, %if.then17.snd_mpu401_uart_remove_timer.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %timer_lock.i33, i32 noundef %call2.i34) #5
  br label %if.end18

if.end18:                                         ; preds = %snd_mpu401_uart_remove_timer.exit, %if.else.if.end18_crit_edge
  %mode19 = getelementptr inbounds %struct.snd_mpu401, ptr %3, i32 0, i32 7
  tail call void @_clear_bit(i32 noundef 2, ptr noundef %mode19) #5
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %snd_mpu401_uart_input_read.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !24, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 27, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 28, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 29, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__ksymtab_snd_mpu401_uart_interrupt, !8, !"__ksymtab_snd_mpu401_uart_interrupt", i1 false, i1 false}
!8 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 130, i32 1}
!9 = !{ptr @__ksymtab_snd_mpu401_uart_interrupt_tx, !10, !"__ksymtab_snd_mpu401_uart_interrupt_tx", i1 false, i1 false}
!10 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 151, i32 1}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 533, i32 30}
!13 = !{ptr @snd_mpu401_uart_new.__key, !14, !"__key", i1 false, i1 false}
!14 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 544, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @snd_mpu401_uart_new.__key.2, !17, !"__key", i1 false, i1 false}
!17 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 545, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snd_mpu401_uart_new.__key.4, !20, !"__key", i1 false, i1 false}
!20 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 546, i32 2}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 551, i32 14}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 553, i32 4}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 575, i32 4}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 586, i32 46}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 589, i32 24}
!33 = !{ptr @__ksymtab_snd_mpu401_uart_new, !34, !"__ksymtab_snd_mpu401_uart_new", i1 false, i1 false}
!34 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 611, i32 1}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 76, i32 3}
!37 = !{ptr @snd_mpu401_uart_output, !38, !"snd_mpu401_uart_output", i1 false, i1 false}
!38 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 474, i32 37}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 227, i32 4}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 247, i32 3}
!43 = !{ptr @snd_mpu401_uart_add_timer.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 179, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @snd_mpu401_uart_input, !47, !"snd_mpu401_uart_input", i1 false, i1 false}
!47 = !{!"../sound/drivers/mpu401/mpu401_uart.c", i32 481, i32 37}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!57 = !{!"auto-init"}
!58 = !{i64 2153077573}
!59 = !{i64 698982}
!60 = !{i64 699377}
!61 = !{i64 2153077868}
!62 = !{i64 2153076973}
!63 = !{i64 2153077355}
