; ModuleID = '/llk/IR_all_yes/drivers/input/serio/libps2.c_pt.bc'
source_filename = "../drivers/input/serio/libps2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+ps2_sendbyte\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_sendbyte\09\09\09\09"
module asm "\09.long\09__crc_ps2_sendbyte\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_sendbyte:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_sendbyte\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_sendbyte:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_begin_command\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_begin_command\09\09\09\09"
module asm "\09.long\09__crc_ps2_begin_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_begin_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_begin_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_begin_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_end_command\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_end_command\09\09\09\09"
module asm "\09.long\09__crc_ps2_end_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_end_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_end_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_end_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_drain\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_drain\09\09\09\09"
module asm "\09.long\09__crc_ps2_drain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_drain\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_drain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_is_keyboard_id\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_is_keyboard_id\09\09\09\09"
module asm "\09.long\09__crc_ps2_is_keyboard_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_is_keyboard_id:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_is_keyboard_id\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_is_keyboard_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__ps2_command\22, \22a\22\09"
module asm "\09.weak\09__crc___ps2_command\09\09\09\09"
module asm "\09.long\09__crc___ps2_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22__ps2_command\22\09\09\09\09\09"
module asm "__kstrtabns___ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_command\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_command\09\09\09\09"
module asm "\09.long\09__crc_ps2_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_sliced_command\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_sliced_command\09\09\09\09"
module asm "\09.long\09__crc_ps2_sliced_command\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_sliced_command:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_sliced_command\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_sliced_command:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_init\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_init\09\09\09\09"
module asm "\09.long\09__crc_ps2_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_init:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_init\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_handle_ack\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_handle_ack\09\09\09\09"
module asm "\09.long\09__crc_ps2_handle_ack\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_handle_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_handle_ack\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_handle_ack:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_handle_response\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_handle_response\09\09\09\09"
module asm "\09.long\09__crc_ps2_handle_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_handle_response:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_handle_response\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_handle_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+ps2_cmd_aborted\22, \22a\22\09"
module asm "\09.weak\09__crc_ps2_cmd_aborted\09\09\09\09"
module asm "\09.long\09__crc_ps2_cmd_aborted\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ps2_cmd_aborted:\09\09\09\09\09"
module asm "\09.asciz \09\22ps2_cmd_aborted\22\09\09\09\09\09"
module asm "__kstrtabns_ps2_cmd_aborted:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.ps2dev = type { ptr, %struct.mutex, %struct.wait_queue_head, i32, [8 x i8], i8, i8 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@__UNIQUE_ID_author227 = internal constant [45 x i8] c"libps2.author=Dmitry Torokhov <dtor@mail.ru>\00", section ".modinfo", align 1
@__UNIQUE_ID_description228 = internal constant [39 x i8] c"libps2.description=PS/2 driver library\00", section ".modinfo", align 1
@__UNIQUE_ID_file229 = internal constant [39 x i8] c"libps2.file=drivers/input/serio/libps2\00", section ".modinfo", align 1
@__UNIQUE_ID_license230 = internal constant [19 x i8] c"libps2.license=GPL\00", section ".modinfo", align 1
@ps2_sendbyte.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 23, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"libps2\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ps2_sendbyte\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/serio/libps2.c\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02x - %x\0A\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_ps2_sendbyte = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_sendbyte = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_sendbyte = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_sendbyte to i32), ptr @__kstrtab_ps2_sendbyte, ptr @__kstrtabns_ps2_sendbyte }, section "___ksymtab+ps2_sendbyte", align 4
@__kstrtab_ps2_begin_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_begin_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_begin_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_begin_command to i32), ptr @__kstrtab_ps2_begin_command, ptr @__kstrtabns_ps2_begin_command }, section "___ksymtab+ps2_begin_command", align 4
@__kstrtab_ps2_end_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_end_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_end_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_end_command to i32), ptr @__kstrtab_ps2_end_command, ptr @__kstrtabns_ps2_end_command }, section "___ksymtab+ps2_end_command", align 4
@__kstrtab_ps2_drain = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_drain = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_drain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_drain to i32), ptr @__kstrtab_ps2_drain, ptr @__kstrtabns_ps2_drain }, section "___ksymtab+ps2_drain", align 4
@ps2_is_keyboard_id.keyboard_ids = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\AB\AC+]`G", [26 x i8] zeroinitializer }, align 32
@__kstrtab_ps2_is_keyboard_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_is_keyboard_id = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_is_keyboard_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_is_keyboard_id to i32), ptr @__kstrtab_ps2_is_keyboard_id, ptr @__kstrtabns_ps2_is_keyboard_id }, section "___ksymtab+ps2_is_keyboard_id", align 4
@__ps2_command.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.4, ptr @.str.2, ptr @.str.5, i8 0, i8 79, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"__ps2_command\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%02x [%*ph] - %x/%08lx [%*ph]\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab___ps2_command = external dso_local constant [0 x i8], align 1
@__kstrtabns___ps2_command = external dso_local constant [0 x i8], align 1
@__ksymtab___ps2_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__ps2_command to i32), ptr @__kstrtab___ps2_command, ptr @__kstrtabns___ps2_command }, section "___ksymtab+__ps2_command", align 4
@__kstrtab_ps2_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_command to i32), ptr @__kstrtab_ps2_command, ptr @__kstrtabns_ps2_command }, section "___ksymtab+ps2_command", align 4
@ps2_sliced_command.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ps2_sliced_command\00", [45 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%02x - %d\0A\00", [21 x i8] zeroinitializer }, align 32
@__kstrtab_ps2_sliced_command = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_sliced_command = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_sliced_command = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_sliced_command to i32), ptr @__kstrtab_ps2_sliced_command, ptr @__kstrtabns_ps2_sliced_command }, section "___ksymtab+ps2_sliced_command", align 4
@ps2_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ps2dev->cmd_mutex\00", [45 x i8] zeroinitializer }, align 32
@ps2_init.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&ps2dev->wait\00", [18 x i8] zeroinitializer }, align 32
@__kstrtab_ps2_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_init = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_init to i32), ptr @__kstrtab_ps2_init, ptr @__kstrtabns_ps2_init }, section "___ksymtab+ps2_init", align 4
@ps2_handle_ack.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 108, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ps2_handle_ack\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unexpected %#02x\0A\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_ps2_handle_ack = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_handle_ack = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_handle_ack = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_handle_ack to i32), ptr @__kstrtab_ps2_handle_ack, ptr @__kstrtabns_ps2_handle_ack }, section "___ksymtab+ps2_handle_ack", align 4
@__kstrtab_ps2_handle_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_handle_response = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_handle_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_handle_response to i32), ptr @__kstrtab_ps2_handle_response, ptr @__kstrtabns_ps2_handle_response }, section "___ksymtab+ps2_handle_response", align 4
@__kstrtab_ps2_cmd_aborted = external dso_local constant [0 x i8], align 1
@__kstrtabns_ps2_cmd_aborted = external dso_local constant [0 x i8], align 1
@__ksymtab_ps2_cmd_aborted = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ps2_cmd_aborted to i32), ptr @__kstrtab_ps2_cmd_aborted, ptr @__kstrtabns_ps2_cmd_aborted }, section "___ksymtab+ps2_cmd_aborted", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@ps2_do_sendbyte.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 10, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ps2_do_sendbyte\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to write %#02x: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@ps2_do_sendbyte.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.13, ptr @.str.2, ptr @.str.15, i8 0, i8 18, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%02x - %d (%x), attempt %d\0A\00", [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 252, i64 254]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 754, i64 767]
@__sancov_gen_cov_switch_values.17 = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 3, i64 4, i64 250, i64 252, i64 254]
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 93, i32 2 }
@___asan_gen_.30 = private unnamed_addr constant [13 x i8] c"keyboard_ids\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 151, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 313, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 366, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 378, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 380, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 433, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 42, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private constant [32 x i8] c"../drivers/input/serio/libps2.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 71, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_author227, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file229, ptr @__UNIQUE_ID_license230, ptr @__ksymtab___ps2_command, ptr @__ksymtab_ps2_begin_command, ptr @__ksymtab_ps2_cmd_aborted, ptr @__ksymtab_ps2_command, ptr @__ksymtab_ps2_drain, ptr @__ksymtab_ps2_end_command, ptr @__ksymtab_ps2_handle_ack, ptr @__ksymtab_ps2_handle_response, ptr @__ksymtab_ps2_init, ptr @__ksymtab_ps2_is_keyboard_id, ptr @__ksymtab_ps2_sendbyte, ptr @__ksymtab_ps2_sliced_command, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ps2_is_keyboard_id.keyboard_ids, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @ps2_init.__key, ptr @.str.8, ptr @ps2_init.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_is_keyboard_id.keyboard_ids to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ps2_init.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ps2_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %byte, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %call = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %byte, i32 noundef %timeout, i32 noundef 1)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sendbyte.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_sendbyte, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 18
  %conv = zext i8 %byte to i32
  %nak = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %4 = ptrtoint ptr %nak to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nak, align 1
  %conv6 = zext i8 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sendbyte.__UNIQUE_ID_ddebug233, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv, i32 noundef %conv6) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %lock.i13 = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i13) #6
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps2_do_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %byte, i32 noundef %timeout, i32 noundef %max_attempts) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.rhs:                                         ; preds = %entry
  %1 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ps2dev, align 4
  %dep_map = getelementptr inbounds %struct.serio, ptr %2, i32 0, i32 6, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !74

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 32, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %nak = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  %conv = zext i8 %byte to i32
  br label %do.body24

do.body24:                                        ; preds = %land.rhs110.do.body24_crit_edge, %if.end
  %attempt.0 = phi i32 [ 0, %if.end ], [ 1, %land.rhs110.do.body24_crit_edge ]
  %3 = ptrtoint ptr %nak to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 1, ptr %nak, align 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %or = or i32 %5, 1
  store i32 %or, ptr %flags, align 4
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %7, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #6
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %write.i = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %write.i, align 8
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body24.do.body30_crit_edge, label %serio_write.exit

do.body24.do.body30_crit_edge:                    ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

serio_write.exit:                                 ; preds = %do.body24
  %call.i198 = call i32 %11(ptr noundef %9, i8 noundef zeroext %byte) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool28.not = icmp eq i32 %call.i198, 0
  br i1 %tobool28.not, label %if.else.i, label %serio_write.exit.do.body30_crit_edge

serio_write.exit.do.body30_crit_edge:             ; preds = %serio_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body30

do.body30:                                        ; preds = %serio_write.exit.do.body30_crit_edge, %do.body24.do.body30_crit_edge
  %retval.0.i200205 = phi i32 [ %call.i198, %serio_write.exit.do.body30_crit_edge ], [ -1, %do.body24.do.body30_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_do_sendbyte.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_do_sendbyte, %if.then40)) #6
          to label %if.end103 [label %if.then40], !srcloc !73

if.then40:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %13, i32 0, i32 18
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_do_sendbyte.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %conv, i32 noundef %retval.0.i200205) #6
  br label %if.end103

if.else.i:                                        ; preds = %serio_write.exit
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 47) #6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool53.not = icmp eq i32 %and, 0
  %not.tobool53.not = xor i1 %tobool53.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool65.not219 = icmp eq i32 %call2.i, 0
  %tobool65.not = select i1 %not.tobool53.not, i1 %tobool65.not219, i1 false
  %16 = select i1 %tobool53.not, i1 true, i1 %tobool65.not
  br i1 %16, label %if.else.i.if.end103_crit_edge, label %if.then69

if.else.i.if.end103_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end103

if.then69:                                        ; preds = %if.else.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %17 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i191 = call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call72220 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and75221 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75221)
  %tobool76.not222 = icmp eq i32 %and75221, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i191)
  %tobool83.not223 = icmp eq i32 %call2.i191, 0
  %20 = select i1 %tobool76.not222, i1 %tobool83.not223, i1 false
  %__ret70.1224 = select i1 %20, i32 1, i32 %call2.i191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret70.1224)
  %tobool90.not225 = icmp eq i32 %__ret70.1224, 0
  %21 = select i1 %tobool76.not222, i1 true, i1 %tobool90.not225
  br i1 %21, label %if.then69.for.end_crit_edge, label %if.then69.cleanup_crit_edge

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  br label %cleanup

if.then69.for.end_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then69.cleanup_crit_edge
  %__ret70.1226 = phi i32 [ %__ret70.1, %cleanup.cleanup_crit_edge ], [ %__ret70.1224, %if.then69.cleanup_crit_edge ]
  %call98 = call i32 @schedule_timeout(i32 noundef %__ret70.1226) #6
  %call72 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %flags, align 4
  %and75 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool83.not = icmp eq i32 %call98, 0
  %24 = select i1 %tobool76.not, i1 %tobool83.not, i1 false
  %__ret70.1 = select i1 %24, i32 1, i32 %call98
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret70.1)
  %tobool90.not = icmp eq i32 %__ret70.1, 0
  %25 = select i1 %tobool76.not, i1 true, i1 %tobool90.not
  br i1 %25, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then69.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end103

if.end103:                                        ; preds = %for.end, %if.else.i.if.end103_crit_edge, %if.then40, %do.body30
  %tobool28.not206 = phi i1 [ true, %if.else.i.if.end103_crit_edge ], [ true, %for.end ], [ false, %if.then40 ], [ false, %do.body30 ]
  %retval.0.i200204 = phi i32 [ 0, %if.else.i.if.end103_crit_edge ], [ 0, %for.end ], [ %retval.0.i200205, %if.then40 ], [ %retval.0.i200205, %do.body30 ]
  %26 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ps2dev, align 4
  %lock.i201 = getelementptr inbounds %struct.serio, ptr %27, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i201) #6
  %28 = ptrtoint ptr %nak to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %nak, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -2, i8 %29)
  %cmp108 = icmp eq i8 %29, -2
  br i1 %cmp108, label %land.rhs110, label %if.end103.do.end114_crit_edge

if.end103.do.end114_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

land.rhs110:                                      ; preds = %if.end103
  %inc = add nuw nsw i32 %attempt.0, 1
  %cmp111 = icmp ult i32 %inc, %max_attempts
  br i1 %cmp111, label %land.rhs110.do.body24_crit_edge, label %land.rhs110.do.end114_crit_edge

land.rhs110.do.end114_crit_edge:                  ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end114

land.rhs110.do.body24_crit_edge:                  ; preds = %land.rhs110
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.end114:                                        ; preds = %land.rhs110.do.end114_crit_edge, %if.end103.do.end114_crit_edge
  %attempt.1 = phi i32 [ %attempt.0, %if.end103.do.end114_crit_edge ], [ %inc, %land.rhs110.do.end114_crit_edge ]
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 4
  %and116 = and i32 %31, -2
  store i32 %and116, ptr %flags, align 4
  br i1 %tobool28.not206, label %if.then118, label %do.end114.if.end122_crit_edge

do.end114.if.end122_crit_edge:                    ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

if.then118:                                       ; preds = %do.end114
  %32 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i8 %29, label %sw.default [
    i8 0, label %if.then118.if.end122_crit_edge
    i8 -2, label %if.then118.do.body127_crit_edge
    i8 -4, label %sw.bb121
  ]

if.then118.do.body127_crit_edge:                  ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

if.then118.if.end122_crit_edge:                   ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end122

sw.bb121:                                         ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

sw.default:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

if.end122:                                        ; preds = %if.then118.if.end122_crit_edge, %do.end114.if.end122_crit_edge
  %error.0 = phi i32 [ %retval.0.i200204, %do.end114.if.end122_crit_edge ], [ 0, %if.then118.if.end122_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %error.0)
  %tobool123.not = icmp ne i32 %error.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %attempt.1)
  %cmp124 = icmp sgt i32 %attempt.1, 1
  %or.cond = select i1 %tobool123.not, i1 true, i1 %cmp124
  br i1 %or.cond, label %if.end122.do.body127_crit_edge, label %if.end122.if.end148_crit_edge

if.end122.if.end148_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end148

if.end122.do.body127_crit_edge:                   ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body127

do.body127:                                       ; preds = %if.end122.do.body127_crit_edge, %sw.default, %sw.bb121, %if.then118.do.body127_crit_edge
  %error.0216 = phi i32 [ %error.0, %if.end122.do.body127_crit_edge ], [ -71, %sw.bb121 ], [ -5, %sw.default ], [ -11, %if.then118.do.body127_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_do_sendbyte.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_do_sendbyte, %if.then139)) #6
          to label %if.end148 [label %if.then139], !srcloc !73

if.then139:                                       ; preds = %do.body127
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ps2dev, align 4
  %dev141 = getelementptr inbounds %struct.serio, ptr %34, i32 0, i32 18
  %35 = ptrtoint ptr %nak to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %nak, align 1
  %conv144 = zext i8 %36 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_do_sendbyte.__UNIQUE_ID_ddebug232, ptr noundef %dev141, ptr noundef nonnull @.str.15, i32 noundef %conv, i32 noundef %error.0216, i32 noundef %conv144, i32 noundef %attempt.1) #6
  br label %if.end148

if.end148:                                        ; preds = %if.then139, %do.body127, %if.end122.if.end148_crit_edge
  %error.0217 = phi i32 [ 0, %if.end122.if.end148_crit_edge ], [ %error.0216, %if.then139 ], [ %error.0216, %do.body127 ]
  ret i32 %error.0217
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ps2_begin_command(ptr noundef %ps2dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ps2_cmd_mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2_cmd_mutex, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr %cmd_mutex, ptr %3
  tail call void @mutex_lock_nested(ptr noundef %spec.select, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ps2_end_command(ptr noundef %ps2dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ps2_cmd_mutex to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2_cmd_mutex, align 8
  %tobool.not = icmp eq ptr %3, null
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  %spec.select = select i1 %tobool.not, ptr %cmd_mutex, ptr %3
  tail call void @mutex_unlock(ptr noundef %spec.select) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ps2_drain(ptr noundef %ps2dev, i32 noundef %maxbytes, i32 noundef %timeout) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %maxbytes)
  %cmp = icmp ugt i32 %maxbytes, 8
  br i1 %cmp, label %do.end, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end16

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 125, i32 noundef 9, ptr noundef null) #6
  br label %if.end16

if.end16:                                         ; preds = %do.end, %entry.if.end16_crit_edge
  %maxbytes.addr.0 = phi i32 [ 8, %do.end ], [ %maxbytes, %entry.if.end16_crit_edge ]
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ps2_cmd_mutex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2_cmd_mutex.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmd_mutex.i = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %cmd_mutex.i, ptr %3
  tail call void @mutex_lock_nested(ptr noundef %spec.select.i, i32 noundef 0) #6
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %flags, align 4
  %conv = trunc i32 %maxbytes.addr.0 to i8
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %7 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %cmdcnt, align 4
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %lock.i103 = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i103) #6
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 138) #6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and = and i32 %11, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  %not.tobool25.not = xor i1 %tobool25.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool36.not111 = icmp eq i32 %call2.i, 0
  %tobool36.not = select i1 %not.tobool25.not, i1 %tobool36.not111, i1 false
  %12 = select i1 %tobool25.not, i1 true, i1 %tobool36.not
  br i1 %12, label %if.end16.if.end72_crit_edge, label %if.then40

if.end16.if.end72_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end72

if.then40:                                        ; preds = %if.end16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %13 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %call2.i99 = tail call i32 @__msecs_to_jiffies(i32 noundef %timeout) #6
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  %call43112 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and46113 = and i32 %15, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46113)
  %tobool47.not114 = icmp eq i32 %and46113, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i99)
  %tobool54.not115 = icmp eq i32 %call2.i99, 0
  %16 = select i1 %tobool47.not114, i1 %tobool54.not115, i1 false
  %__ret41.1116 = select i1 %16, i32 1, i32 %call2.i99
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1116)
  %tobool61.not117 = icmp eq i32 %__ret41.1116, 0
  %17 = select i1 %tobool47.not114, i1 true, i1 %tobool61.not117
  br i1 %17, label %if.then40.for.end_crit_edge, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  br label %cleanup

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then40.cleanup_crit_edge
  %__ret41.1118 = phi i32 [ %__ret41.1, %cleanup.cleanup_crit_edge ], [ %__ret41.1116, %if.then40.cleanup_crit_edge ]
  %call69 = call i32 @schedule_timeout(i32 noundef %__ret41.1118) #6
  %call43 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flags, align 4
  %and46 = and i32 %19, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool54.not = icmp eq i32 %call69, 0
  %20 = select i1 %tobool47.not, i1 %tobool54.not, i1 false
  %__ret41.1 = select i1 %20, i32 1, i32 %call69
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1)
  %tobool61.not = icmp eq i32 %__ret41.1, 0
  %21 = select i1 %tobool47.not, i1 true, i1 %tobool61.not
  br i1 %21, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then40.for.end_crit_edge
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end72

if.end72:                                         ; preds = %for.end, %if.end16.if.end72_crit_edge
  %22 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i104 = getelementptr inbounds %struct.serio, ptr %23, i32 0, i32 20
  %24 = ptrtoint ptr %ps2_cmd_mutex.i104 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ps2_cmd_mutex.i104, align 8
  %tobool.not.i105 = icmp eq ptr %25, null
  %spec.select.i107 = select i1 %tobool.not.i105, ptr %cmd_mutex.i, ptr %25
  call void @mutex_unlock(ptr noundef %spec.select.i107) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @ps2_is_keyboard_id(i8 noundef zeroext %id_byte) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %id_byte to i32
  %call = tail call ptr @memchr(ptr noundef nonnull @ps2_is_keyboard_id.keyboard_ids, i32 noundef %conv, i32 noundef 6) #9
  %cmp = icmp ne ptr %call, null
  ret i1 %cmp
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @memchr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef %command) #0 align 64 {
entry:
  %send_param = alloca [16 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry186 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %command, 12
  %and = and i32 %shr, 15
  %shr1 = lshr i32 %command, 8
  %and2 = and i32 %shr1, 15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %send_param) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and2)
  %cmp = icmp ugt i32 %and2, 8
  %0 = call ptr @memset(ptr %send_param, i32 255, i32 16)
  br i1 %cmp, label %do.end, label %if.end18

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 236, i32 noundef 9, ptr noundef null) #6
  br label %cleanup287

if.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp ne i32 %and, 0
  %tobool20.not = icmp eq ptr %param, null
  %or.cond = and i1 %tobool20.not, %tobool19.not
  br i1 %or.cond, label %do.end34, label %if.end48

do.end34:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 241, i32 noundef 9, ptr noundef null) #6
  br label %cleanup287

if.end48:                                         ; preds = %if.end18
  %1 = call ptr @memcpy(ptr %send_param, ptr %param, i32 %and)
  %2 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %3, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 754, i32 %command)
  %cmp49 = icmp eq i32 %command, 754
  %cond = select i1 %cmp49, i32 8, i32 0
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cond, ptr %flags, align 4
  %conv = trunc i32 %and2 to i8
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %5 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %cmp54403 = icmp eq i32 %and2, 0
  %6 = or i1 %tobool20.not, %cmp54403
  br i1 %6, label %if.end48.if.end58_crit_edge, label %for.body

if.end48.if.end58_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body:                                         ; preds = %if.end48
  %7 = ptrtoint ptr %param to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %param, align 1
  %sub56 = add nsw i32 %and2, -1
  %arrayidx57 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56
  %9 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %arrayidx57, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and2)
  %exitcond.not = icmp eq i32 %and2, 1
  br i1 %exitcond.not, label %for.body.if.end58_crit_edge, label %for.body.1

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.1:                                       ; preds = %for.body
  %arrayidx.1 = getelementptr i8, ptr %param, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %sub56.1 = add nsw i32 %and2, -2
  %arrayidx57.1 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.1
  %12 = ptrtoint ptr %arrayidx57.1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %arrayidx57.1, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and2)
  %exitcond.not.1 = icmp eq i32 %and2, 2
  br i1 %exitcond.not.1, label %for.body.1.if.end58_crit_edge, label %for.body.2

for.body.1.if.end58_crit_edge:                    ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.2:                                       ; preds = %for.body.1
  %arrayidx.2 = getelementptr i8, ptr %param, i32 2
  %13 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.2, align 1
  %sub56.2 = add nsw i32 %and2, -3
  %arrayidx57.2 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.2
  %15 = ptrtoint ptr %arrayidx57.2 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %arrayidx57.2, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and2)
  %exitcond.not.2 = icmp eq i32 %and2, 3
  br i1 %exitcond.not.2, label %for.body.2.if.end58_crit_edge, label %for.body.3

for.body.2.if.end58_crit_edge:                    ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.3:                                       ; preds = %for.body.2
  %arrayidx.3 = getelementptr i8, ptr %param, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.3, align 1
  %sub56.3 = add nsw i32 %and2, -4
  %arrayidx57.3 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.3
  %18 = ptrtoint ptr %arrayidx57.3 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %arrayidx57.3, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and2)
  %exitcond.not.3 = icmp eq i32 %and2, 4
  br i1 %exitcond.not.3, label %for.body.3.if.end58_crit_edge, label %for.body.4

for.body.3.if.end58_crit_edge:                    ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.4:                                       ; preds = %for.body.3
  %arrayidx.4 = getelementptr i8, ptr %param, i32 4
  %19 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.4, align 1
  %sub56.4 = add nsw i32 %and2, -5
  %arrayidx57.4 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.4
  %21 = ptrtoint ptr %arrayidx57.4 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %arrayidx57.4, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and2)
  %exitcond.not.4 = icmp eq i32 %and2, 5
  br i1 %exitcond.not.4, label %for.body.4.if.end58_crit_edge, label %for.body.5

for.body.4.if.end58_crit_edge:                    ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.5:                                       ; preds = %for.body.4
  %arrayidx.5 = getelementptr i8, ptr %param, i32 5
  %22 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx.5, align 1
  %sub56.5 = add nsw i32 %and2, -6
  %arrayidx57.5 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.5
  %24 = ptrtoint ptr %arrayidx57.5 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %arrayidx57.5, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %and2)
  %exitcond.not.5 = icmp eq i32 %and2, 6
  br i1 %exitcond.not.5, label %for.body.5.if.end58_crit_edge, label %for.body.6

for.body.5.if.end58_crit_edge:                    ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.6:                                       ; preds = %for.body.5
  %arrayidx.6 = getelementptr i8, ptr %param, i32 6
  %25 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.6, align 1
  %sub56.6 = add nsw i32 %and2, -7
  %arrayidx57.6 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.6
  %27 = ptrtoint ptr %arrayidx57.6 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %arrayidx57.6, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and2)
  %exitcond.not.6 = icmp eq i32 %and2, 7
  br i1 %exitcond.not.6, label %for.body.6.if.end58_crit_edge, label %for.body.7

for.body.6.if.end58_crit_edge:                    ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.7 = getelementptr i8, ptr %param, i32 7
  %28 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.7, align 1
  %sub56.7 = add nsw i32 %and2, -8
  %arrayidx57.7 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub56.7
  %30 = ptrtoint ptr %arrayidx57.7 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %arrayidx57.7, align 1
  br label %if.end58

if.end58:                                         ; preds = %for.body.7, %for.body.6.if.end58_crit_edge, %for.body.5.if.end58_crit_edge, %for.body.4.if.end58_crit_edge, %for.body.3.if.end58_crit_edge, %for.body.2.if.end58_crit_edge, %for.body.1.if.end58_crit_edge, %for.body.if.end58_crit_edge, %if.end48.if.end58_crit_edge
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %or = or i32 %32, 32
  store i32 %or, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %command)
  %cmp60 = icmp eq i32 %command, 767
  %cond62 = select i1 %cmp60, i32 1000, i32 200
  %and63 = and i32 %command, 255
  %conv64 = trunc i32 %command to i8
  %call = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %conv64, i32 noundef %cond62, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool65.not = icmp eq i32 %call, 0
  br i1 %tobool65.not, label %if.end67, label %if.end58.out_reset_flags_crit_edge

if.end58.out_reset_flags_crit_edge:               ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reset_flags

if.end67:                                         ; preds = %if.end58
  %33 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %flags, align 4
  %and69 = and i32 %34, -33
  store i32 %and69, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp71405.not = icmp eq i32 %and, 0
  br i1 %cmp71405.not, label %if.end67.for.end81_crit_edge, label %if.end67.for.body73_crit_edge

if.end67.for.body73_crit_edge:                    ; preds = %if.end67
  br label %for.body73

if.end67.for.end81_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.cond70:                                       ; preds = %for.body73
  %inc80 = add nuw nsw i32 %i.1406, 1
  %exitcond429.not = icmp eq i32 %inc80, %and
  br i1 %exitcond429.not, label %for.cond70.for.end81_crit_edge, label %for.cond70.for.body73_crit_edge

for.cond70.for.body73_crit_edge:                  ; preds = %for.cond70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body73

for.cond70.for.end81_crit_edge:                   ; preds = %for.cond70
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end81

for.body73:                                       ; preds = %for.cond70.for.body73_crit_edge, %if.end67.for.body73_crit_edge
  %i.1406 = phi i32 [ %inc80, %for.cond70.for.body73_crit_edge ], [ 0, %if.end67.for.body73_crit_edge ]
  %arrayidx74 = getelementptr i8, ptr %param, i32 %i.1406
  %35 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx74, align 1
  %call75 = tail call fastcc i32 @ps2_do_sendbyte(ptr noundef %ps2dev, i8 noundef zeroext %36, i32 noundef 200, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %for.cond70, label %for.body73.out_reset_flags_crit_edge

for.body73.out_reset_flags_crit_edge:             ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_reset_flags

for.end81:                                        ; preds = %for.cond70.for.end81_crit_edge, %if.end67.for.end81_crit_edge
  %37 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ps2dev, align 4
  %lock.i388 = getelementptr inbounds %struct.serio, ptr %38, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i388) #6
  %cond85 = select i1 %cmp60, i32 4000, i32 500
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %cond85) #6
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 286) #6
  %39 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %flags, align 4
  %and94 = and i32 %40, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool101.not = icmp eq i32 %call2.i, 0
  %41 = select i1 %tobool95.not, i1 %tobool101.not, i1 false
  %__ret.0 = select i1 %41, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool107.not = icmp eq i32 %__ret.0, 0
  %42 = select i1 %tobool95.not, i1 true, i1 %tobool107.not
  br i1 %42, label %for.end81.if.end144_crit_edge, label %if.then111

for.end81.if.end144_crit_edge:                    ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then111:                                       ; preds = %for.end81
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %43 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  %call114407 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %44 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags, align 4
  %and117408 = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117408)
  %tobool118.not409 = icmp eq i32 %and117408, 0
  %46 = select i1 %tobool118.not409, i1 %tobool101.not, i1 false
  %__ret112.1411 = select i1 %46, i32 1, i32 %call2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.1411)
  %tobool132.not412 = icmp eq i32 %__ret112.1411, 0
  %47 = select i1 %tobool118.not409, i1 true, i1 %tobool132.not412
  br i1 %47, label %if.then111.for.end141_crit_edge, label %if.then111.cleanup_crit_edge

if.then111.cleanup_crit_edge:                     ; preds = %if.then111
  br label %cleanup

if.then111.for.end141_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end141

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.then111.cleanup_crit_edge
  %__ret112.1413 = phi i32 [ %__ret112.1, %cleanup.cleanup_crit_edge ], [ %__ret112.1411, %if.then111.cleanup_crit_edge ]
  %call140 = call i32 @schedule_timeout(i32 noundef %__ret112.1413) #6
  %call114 = call i32 @prepare_to_wait_event(ptr noundef %wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #6
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %and117 = and i32 %49, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool125.not = icmp eq i32 %call140, 0
  %50 = select i1 %tobool118.not, i1 %tobool125.not, i1 false
  %__ret112.1 = select i1 %50, i32 1, i32 %call140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret112.1)
  %tobool132.not = icmp eq i32 %__ret112.1, 0
  %51 = select i1 %tobool118.not, i1 true, i1 %tobool132.not
  br i1 %51, label %cleanup.for.end141_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.for.end141_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end141

for.end141:                                       ; preds = %cleanup.for.end141_crit_edge, %if.then111.for.end141_crit_edge
  %__ret112.1.lcssa = phi i32 [ %__ret112.1411, %if.then111.for.end141_crit_edge ], [ %__ret112.1, %cleanup.for.end141_crit_edge ]
  call void @finish_wait(ptr noundef %wait, ptr noundef nonnull %__wq_entry) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  br label %if.end144

if.end144:                                        ; preds = %for.end141, %for.end81.if.end144_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %for.end81.if.end144_crit_edge ], [ %__ret112.1.lcssa, %for.end141 ]
  %52 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool148.not = icmp eq i8 %53, 0
  br i1 %tobool148.not, label %if.end144.if.end227_crit_edge, label %land.lhs.true149

if.end144.if.end227_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

land.lhs.true149:                                 ; preds = %if.end144
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %and151 = and i32 %55, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and151)
  %tobool152.not = icmp eq i32 %and151, 0
  br i1 %tobool152.not, label %if.then153, label %land.lhs.true149.if.end227_crit_edge

land.lhs.true149.if.end227_crit_edge:             ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

if.then153:                                       ; preds = %land.lhs.true149
  %call154 = call fastcc i32 @ps2_adjust_timeout(ptr noundef %ps2dev, i32 noundef %command, i32 noundef %__ret.1)
  call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 292) #6
  %56 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %flags, align 4
  %and164 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and164)
  %tobool165.not = icmp eq i32 %and164, 0
  %not.tobool165.not = xor i1 %tobool165.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call154)
  %tobool179.not402 = icmp eq i32 %call154, 0
  %tobool179.not = select i1 %not.tobool165.not, i1 %tobool179.not402, i1 false
  %58 = select i1 %tobool165.not, i1 true, i1 %tobool179.not
  br i1 %58, label %if.then153.if.end227_crit_edge, label %if.then185

if.then153.if.end227_crit_edge:                   ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end227

if.then185:                                       ; preds = %if.then153
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry186) #6
  %59 = call ptr @memset(ptr %__wq_entry186, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry186, i32 noundef 0) #6
  %wait190 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  %call191415 = call i32 @prepare_to_wait_event(ptr noundef %wait190, ptr noundef nonnull %__wq_entry186, i32 noundef 2) #6
  %60 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags, align 4
  %and194416 = and i32 %61, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194416)
  %tobool195.not417 = icmp eq i32 %and194416, 0
  %62 = select i1 %tobool195.not417, i1 %tobool179.not402, i1 false
  %__ret187.1419 = select i1 %62, i32 1, i32 %call154
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret187.1419)
  %tobool209.not420 = icmp eq i32 %__ret187.1419, 0
  %63 = select i1 %tobool195.not417, i1 true, i1 %tobool209.not420
  br i1 %63, label %if.then185.for.end221_crit_edge, label %if.then185.cleanup218_crit_edge

if.then185.cleanup218_crit_edge:                  ; preds = %if.then185
  br label %cleanup218

if.then185.for.end221_crit_edge:                  ; preds = %if.then185
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end221

cleanup218:                                       ; preds = %cleanup218.cleanup218_crit_edge, %if.then185.cleanup218_crit_edge
  %__ret187.1421 = phi i32 [ %__ret187.1, %cleanup218.cleanup218_crit_edge ], [ %__ret187.1419, %if.then185.cleanup218_crit_edge ]
  %call217 = call i32 @schedule_timeout(i32 noundef %__ret187.1421) #6
  %call191 = call i32 @prepare_to_wait_event(ptr noundef %wait190, ptr noundef nonnull %__wq_entry186, i32 noundef 2) #6
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags, align 4
  %and194 = and i32 %65, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194)
  %tobool195.not = icmp eq i32 %and194, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call217)
  %tobool202.not = icmp eq i32 %call217, 0
  %66 = select i1 %tobool195.not, i1 %tobool202.not, i1 false
  %__ret187.1 = select i1 %66, i32 1, i32 %call217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret187.1)
  %tobool209.not = icmp eq i32 %__ret187.1, 0
  %67 = select i1 %tobool195.not, i1 true, i1 %tobool209.not
  br i1 %67, label %cleanup218.for.end221_crit_edge, label %cleanup218.cleanup218_crit_edge

cleanup218.cleanup218_crit_edge:                  ; preds = %cleanup218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup218

cleanup218.for.end221_crit_edge:                  ; preds = %cleanup218
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end221

for.end221:                                       ; preds = %cleanup218.for.end221_crit_edge, %if.then185.for.end221_crit_edge
  call void @finish_wait(ptr noundef %wait190, ptr noundef nonnull %__wq_entry186) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry186) #6
  br label %if.end227

if.end227:                                        ; preds = %for.end221, %if.then153.if.end227_crit_edge, %land.lhs.true149.if.end227_crit_edge, %if.end144.if.end227_crit_edge
  %68 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ps2dev, align 4
  %lock.i389 = getelementptr inbounds %struct.serio, ptr %69, i32 0, i32 6
  call void @_raw_spin_lock_irq(ptr noundef %lock.i389) #6
  br i1 %6, label %if.end227.if.end243_crit_edge, label %if.end227.for.body234_crit_edge

if.end227.for.body234_crit_edge:                  ; preds = %if.end227
  br label %for.body234

if.end227.if.end243_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

for.body234:                                      ; preds = %for.body234.for.body234_crit_edge, %if.end227.for.body234_crit_edge
  %i.2424 = phi i32 [ %inc241, %for.body234.for.body234_crit_edge ], [ 0, %if.end227.for.body234_crit_edge ]
  %70 = xor i32 %i.2424, -1
  %sub237 = add nsw i32 %and2, %70
  %arrayidx238 = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %sub237
  %71 = ptrtoint ptr %arrayidx238 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx238, align 1
  %arrayidx239 = getelementptr i8, ptr %param, i32 %i.2424
  %73 = ptrtoint ptr %arrayidx239 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %72, ptr %arrayidx239, align 1
  %inc241 = add nuw nsw i32 %i.2424, 1
  %exitcond430.not = icmp eq i32 %inc241, %and2
  br i1 %exitcond430.not, label %for.body234.if.end243_crit_edge, label %for.body234.for.body234_crit_edge

for.body234.for.body234_crit_edge:                ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body234

for.body234.if.end243_crit_edge:                  ; preds = %for.body234
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end243

if.end243:                                        ; preds = %for.body234.if.end243_crit_edge, %if.end227.if.end243_crit_edge
  %74 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool246.not = icmp eq i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %75)
  %cmp252.not = icmp eq i8 %75, 1
  %or.cond386 = select i1 %cmp60, i1 %cmp252.not, i1 false
  %or.cond400 = or i1 %tobool246.not, %or.cond386
  %spec.select401 = select i1 %or.cond400, i32 0, i32 -71
  br label %out_reset_flags

out_reset_flags:                                  ; preds = %if.end243, %for.body73.out_reset_flags_crit_edge, %if.end58.out_reset_flags_crit_edge
  %rc.0 = phi i32 [ %call, %if.end58.out_reset_flags_crit_edge ], [ %spec.select401, %if.end243 ], [ %call75, %for.body73.out_reset_flags_crit_edge ]
  %76 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %flags, align 4
  %77 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %ps2dev, align 4
  %lock.i390 = getelementptr inbounds %struct.serio, ptr %78, i32 0, i32 6
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i390) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ps2_command.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ps2_command, %if.then269)) #6
          to label %do.end280 [label %if.then269], !srcloc !73

if.then269:                                       ; preds = %out_reset_flags
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %80, i32 0, i32 18
  %nak = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %81 = ptrtoint ptr %nak to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %nak, align 1
  %conv273 = zext i8 %82 to i32
  %83 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags, align 4
  %cond277 = select i1 %tobool20.not, ptr %send_param, ptr %param
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ps2_command.__UNIQUE_ID_ddebug234, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %and63, i32 noundef %and, ptr noundef nonnull %send_param, i32 noundef %conv273, i32 noundef %84, i32 noundef %and2, ptr noundef %cond277) #6
  br label %do.end280

do.end280:                                        ; preds = %if.then269, %out_reset_flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %rc.0)
  %cmp281.not = icmp eq i32 %rc.0, -11
  %spec.select = select i1 %cmp281.not, i32 -71, i32 %rc.0
  br label %cleanup287

cleanup287:                                       ; preds = %do.end280, %do.end34, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %spec.select, %do.end280 ], [ -22, %do.end34 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %send_param) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ps2_adjust_timeout(ptr nocapture noundef %ps2dev, i32 noundef %command, i32 noundef %timeout) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %command to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %command, label %entry.sw.epilog_crit_edge [
    i32 767, label %sw.bb
    i32 754, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = tail call i32 @llvm.umin.i32(i32 %timeout, i32 10)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -86, i8 %3)
  %cmp3 = icmp eq i8 %3, -86
  br i1 %cmp3, label %if.then5, label %sw.bb2.if.end7_crit_edge

sw.bb2.if.end7_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %lock.i = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #6
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %flags, align 4
  %7 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ps2dev, align 4
  %lock.i25 = getelementptr inbounds %struct.serio, ptr %8, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i25) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %sw.bb2.if.end7_crit_edge
  %timeout.addr.0 = phi i32 [ 0, %if.then5 ], [ %timeout, %sw.bb2.if.end7_crit_edge ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx, align 1
  %conv.i = zext i8 %10 to i32
  %call.i = tail call ptr @memchr(ptr noundef nonnull @ps2_is_keyboard_id.keyboard_ids, i32 noundef %conv.i, i32 noundef 6) #10
  %cmp.i.not = icmp eq ptr %call.i, null
  br i1 %cmp.i.not, label %if.then11, label %if.end7.sw.epilog_crit_edge

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev, align 4
  %lock.i26 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i26) #6
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %13 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %cmdcnt, align 4
  %flags13 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %14 = ptrtoint ptr %flags13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %flags13, align 4
  %15 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ps2dev, align 4
  %lock.i27 = getelementptr inbounds %struct.serio, ptr %16, i32 0, i32 6
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i27) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then11, %if.end7.sw.epilog_crit_edge, %sw.bb, %entry.sw.epilog_crit_edge
  %timeout.addr.1 = phi i32 [ %timeout, %entry.sw.epilog_crit_edge ], [ %timeout.addr.0, %if.end7.sw.epilog_crit_edge ], [ 0, %if.then11 ], [ %1, %sw.bb ]
  ret i32 %timeout.addr.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef %command) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ps2_cmd_mutex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2_cmd_mutex.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmd_mutex.i = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %cmd_mutex.i, ptr %3
  tail call void @mutex_lock_nested(ptr noundef %spec.select.i, i32 noundef 0) #6
  %call = tail call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef %param, i32 noundef %command)
  %4 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i3 = getelementptr inbounds %struct.serio, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %ps2_cmd_mutex.i3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ps2_cmd_mutex.i3, align 8
  %tobool.not.i4 = icmp eq ptr %7, null
  %spec.select.i6 = select i1 %tobool.not.i4, ptr %cmd_mutex.i, ptr %7
  tail call void @mutex_unlock(ptr noundef %spec.select.i6) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ps2_sliced_command(ptr noundef %ps2dev, i8 noundef zeroext %command) #0 align 64 {
entry:
  %d = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i = getelementptr inbounds %struct.serio, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ps2_cmd_mutex.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ps2_cmd_mutex.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  %cmd_mutex.i = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  %spec.select.i = select i1 %tobool.not.i, ptr %cmd_mutex.i, ptr %3
  tail call void @mutex_lock_nested(ptr noundef %spec.select.i, i32 noundef 0) #6
  %call = tail call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef null, i32 noundef 230)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond.preheader:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %shr = lshr i8 %command, 6
  %4 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %shr, ptr %d, align 1
  %call3 = call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %d, i32 noundef 4328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  br i1 %tobool4.not, label %for.cond, label %for.cond.preheader.do.body_crit_edge

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond:                                         ; preds = %for.cond.preheader
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %shr.1 = lshr i8 %command, 4
  %conv2.1 = and i8 %shr.1, 3
  %5 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv2.1, ptr %d, align 1
  %call3.1 = call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %d, i32 noundef 4328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  br i1 %tobool4.not.1, label %for.cond.1, label %for.cond.do.body_crit_edge

for.cond.do.body_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond.1:                                       ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %6 = lshr i8 %command, 2
  %conv2.2 = and i8 %6, 3
  %7 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv2.2, ptr %d, align 1
  %call3.2 = call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %d, i32 noundef 4328)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  br i1 %tobool4.not.2, label %for.cond.2, label %for.cond.1.do.body_crit_edge

for.cond.1.do.body_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %d) #6
  %conv2.3 = and i8 %command, 3
  %8 = ptrtoint ptr %d to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv2.3, ptr %d, align 1
  %call3.3 = call i32 @__ps2_command(ptr noundef %ps2dev, ptr noundef nonnull %d, i32 noundef 4328)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %d) #6
  br label %do.body

do.body:                                          ; preds = %for.cond.2, %for.cond.1.do.body_crit_edge, %for.cond.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge, %entry.do.body_crit_edge
  %retval1.1 = phi i32 [ %call, %entry.do.body_crit_edge ], [ %call3, %for.cond.preheader.do.body_crit_edge ], [ %call3.1, %for.cond.do.body_crit_edge ], [ %call3.2, %for.cond.1.do.body_crit_edge ], [ %call3.3, %for.cond.2 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_sliced_command.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_sliced_command, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !73

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %10, i32 0, i32 18
  %conv12 = zext i8 %command to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_sliced_command.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv12, i32 noundef %retval1.1) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %11 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ps2dev, align 4
  %ps2_cmd_mutex.i26 = getelementptr inbounds %struct.serio, ptr %12, i32 0, i32 20
  %13 = ptrtoint ptr %ps2_cmd_mutex.i26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ps2_cmd_mutex.i26, align 8
  %tobool.not.i27 = icmp eq ptr %14, null
  %spec.select.i29 = select i1 %tobool.not.i27, ptr %cmd_mutex.i, ptr %14
  call void @mutex_unlock(ptr noundef %spec.select.i29) #6
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ps2_init(ptr noundef %ps2dev, ptr noundef %serio) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_mutex = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %cmd_mutex, ptr noundef nonnull @.str.8, ptr noundef nonnull @ps2_init.__key) #6
  %dep_map = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1, i32 5
  %0 = ptrtoint ptr %dep_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dep_map, align 4
  %depth = getelementptr inbounds %struct.serio, ptr %serio, i32 0, i32 15
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %depth, align 8
  %wait_type_inner = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 1, i32 5, i32 4
  %4 = ptrtoint ptr %wait_type_inner to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %wait_type_inner, align 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map, ptr noundef nonnull @.str.8, ptr noundef %1, i32 noundef %3, i8 noundef zeroext %5, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.10, ptr noundef nonnull @ps2_init.__key.9) #6
  %6 = ptrtoint ptr %ps2dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %serio, ptr %ps2dev, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ps2_handle_ack(ptr noundef %ps2dev, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %data to i32
  %0 = zext i8 %data to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %data, label %entry.do.body_crit_edge [
    i8 -6, label %entry.if.then28_crit_edge
    i8 -2, label %sw.bb1
    i8 -4, label %sw.bb3
    i8 0, label %entry.sw.bb8_crit_edge
    i8 3, label %entry.sw.bb8_crit_edge67
    i8 4, label %entry.sw.bb8_crit_edge68
  ]

entry.sw.bb8_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb8_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

entry.if.then28_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %1 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags, align 4
  %or = or i32 %2, 16
  store i32 %or, ptr %flags, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %flags4 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %3 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags4, align 4
  %and = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb3.sw.bb8_crit_edge, label %if.then

sw.bb3.sw.bb8_crit_edge:                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb8

if.then:                                          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %4, -17
  %5 = ptrtoint ptr %flags4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and6, ptr %flags4, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %sw.bb3.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge67, %entry.sw.bb8_crit_edge68
  %flags9 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %6 = ptrtoint ptr %flags9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags9, align 4
  %and10 = and i32 %7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %sw.bb8.do.body_crit_edge, label %sw.bb8.if.then28_crit_edge

sw.bb8.if.then28_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

sw.bb8.do.body_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %sw.bb8.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ps2_handle_ack.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ps2_handle_ack, %if.then18)) #6
          to label %do.end [label %if.then18], !srcloc !73

if.then18:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %ps2dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ps2dev, align 4
  %dev = getelementptr inbounds %struct.serio, ptr %9, i32 0, i32 18
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ps2_handle_ack.__UNIQUE_ID_ddebug236, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then18, %do.body
  %flags21 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %10 = ptrtoint ptr %flags21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags21, align 4
  %and22 = and i32 %11, -9
  store i32 %and22, ptr %flags21, align 4
  %and24 = and i32 %11, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25 = icmp ne i32 %and24, 0
  br label %return

sw.epilog:                                        ; preds = %if.then, %sw.bb1
  %nak13 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %12 = ptrtoint ptr %nak13 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %data, ptr %nak13, align 1
  br label %if.end36

if.then28:                                        ; preds = %sw.bb8.if.then28_crit_edge, %entry.if.then28_crit_edge
  %nak13.c66 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %13 = ptrtoint ptr %nak13.c66 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %nak13.c66, align 1
  %flags29 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %14 = ptrtoint ptr %flags29 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags29, align 4
  %and30 = and i32 %15, -17
  store i32 %and30, ptr %flags29, align 4
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %16 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool31.not = icmp eq i8 %17, 0
  br i1 %tobool31.not, label %if.then28.if.end36_crit_edge, label %if.then32

if.then28.if.end36_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  %or34 = or i32 %and30, 6
  %18 = ptrtoint ptr %flags29 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or34, ptr %flags29, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then32, %if.then28.if.end36_crit_edge, %sw.epilog
  %flags37 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %19 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags37, align 4
  %and38 = and i32 %20, -2
  store i32 %and38, ptr %flags37, align 4
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 -6, i8 %data)
  %cmp.not = icmp eq i8 %data, -6
  br i1 %cmp.not, label %if.end36.return_crit_edge, label %if.then41

if.end36.return_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then41:                                        ; preds = %if.end36
  %cmdcnt.i = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %21 = ptrtoint ptr %cmdcnt.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cmdcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i, label %if.then41.if.end.i_crit_edge, label %if.then.i

if.then41.if.end.i_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #8
  %dec.i = add i8 %22, -1
  %23 = ptrtoint ptr %cmdcnt.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %dec.i, ptr %cmdcnt.i, align 4
  %idxprom.i = zext i8 %dec.i to i32
  %arrayidx.i = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %data, ptr %arrayidx.i, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then41.if.end.i_crit_edge
  %25 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags37, align 4
  %and.i = and i32 %26, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end10.i_crit_edge, label %if.then3.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %and5.i = and i32 %26, -5
  %27 = ptrtoint ptr %flags37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %and5.i, ptr %flags37, align 4
  %28 = ptrtoint ptr %cmdcnt.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %cmdcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool7.not.i = icmp eq i8 %29, 0
  br i1 %tobool7.not.i, label %if.then3.i.if.then13.i_crit_edge, label %if.then8.i

if.then3.i.if.then13.i_crit_edge:                 ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

if.then8.i:                                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then8.i, %if.end.i.if.end10.i_crit_edge
  %30 = ptrtoint ptr %cmdcnt.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %.pr.i = load i8, ptr %cmdcnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr.i)
  %tobool12.not.i = icmp eq i8 %.pr.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.then13.i_crit_edge, label %if.end10.i.return_crit_edge

if.end10.i.return_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end10.i.if.then13.i_crit_edge:                 ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13.i

if.then13.i:                                      ; preds = %if.end10.i.if.then13.i_crit_edge, %if.then3.i.if.then13.i_crit_edge
  %31 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags37, align 4
  %and15.i = and i32 %32, -3
  store i32 %and15.i, ptr %flags37, align 4
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %return

return:                                           ; preds = %if.then13.i, %if.end10.i.return_crit_edge, %if.end36.return_crit_edge, %do.end
  %retval.0 = phi i1 [ %tobool25, %do.end ], [ true, %if.end36.return_crit_edge ], [ true, %if.end10.i.return_crit_edge ], [ true, %if.then13.i ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @ps2_handle_response(ptr noundef %ps2dev, i8 noundef zeroext %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cmdcnt = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 5
  %0 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dec = add i8 %1, -1
  %2 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %dec, ptr %cmdcnt, align 4
  %idxprom = zext i8 %dec to i32
  %arrayidx = getelementptr %struct.ps2dev, ptr %ps2dev, i32 0, i32 4, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %data, ptr %arrayidx, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %if.then3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

if.then3:                                         ; preds = %if.end
  %and5 = and i32 %5, -5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and5, ptr %flags, align 4
  %7 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.then3.if.then13_crit_edge, label %if.then8

if.then3.if.then13_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %9 = ptrtoint ptr %cmdcnt to i32
  call void @__asan_load1_noabort(i32 %9)
  %.pr = load i8, ptr %cmdcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %.pr)
  %tobool12.not = icmp eq i8 %.pr, 0
  br i1 %tobool12.not, label %if.end10.if.then13_crit_edge, label %if.end10.if.end17_crit_edge

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then13

if.then13:                                        ; preds = %if.end10.if.then13_crit_edge, %if.then3.if.then13_crit_edge
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %and15 = and i32 %11, -3
  store i32 %and15, ptr %flags, align 4
  %wait16 = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait16, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end10.if.end17_crit_edge
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ps2_cmd_aborted(ptr noundef %ps2dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nak = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 6
  %2 = ptrtoint ptr %nak to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %nak, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and2 = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end5_crit_edge, label %if.then4

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %wait = getelementptr inbounds %struct.ps2dev, ptr %ps2dev, i32 0, i32 2
  tail call void @__wake_up(ptr noundef %wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and7 = and i32 %4, 16
  store i32 %and7, ptr %flags, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }
attributes #10 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !15, !17, !19, !21, !23, !25, !27, !28, !29, !31, !33, !35, !36, !37, !39, !41, !42, !44, !45, !47, !49, !50, !51, !53, !55, !57, !59, !60, !61, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__UNIQUE_ID_author227, !1, !"__UNIQUE_ID_author227", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/libps2.c", i32 21, i32 1}
!2 = !{ptr @__UNIQUE_ID_description228, !3, !"__UNIQUE_ID_description228", i1 false, i1 false}
!3 = !{!"../drivers/input/serio/libps2.c", i32 22, i32 1}
!4 = !{ptr @__UNIQUE_ID_file229, !5, !"__UNIQUE_ID_file229", i1 false, i1 false}
!5 = !{!"../drivers/input/serio/libps2.c", i32 23, i32 1}
!6 = !{ptr @__UNIQUE_ID_license230, !5, !"__UNIQUE_ID_license230", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/libps2.c", i32 93, i32 2}
!9 = !{ptr @.str.1, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ps2_sendbyte.__UNIQUE_ID_ddebug233, !8, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!13 = !{ptr @__ksymtab_ps2_sendbyte, !14, !"__ksymtab_ps2_sendbyte", i1 false, i1 false}
!14 = !{!"../drivers/input/serio/libps2.c", i32 99, i32 1}
!15 = !{ptr @__ksymtab_ps2_begin_command, !16, !"__ksymtab_ps2_begin_command", i1 false, i1 false}
!16 = !{!"../drivers/input/serio/libps2.c", i32 107, i32 1}
!17 = !{ptr @__ksymtab_ps2_end_command, !18, !"__ksymtab_ps2_end_command", i1 false, i1 false}
!18 = !{!"../drivers/input/serio/libps2.c", i32 115, i32 1}
!19 = !{ptr @__ksymtab_ps2_drain, !20, !"__ksymtab_ps2_drain", i1 false, i1 false}
!20 = !{!"../drivers/input/serio/libps2.c", i32 142, i32 1}
!21 = !{ptr @ps2_is_keyboard_id.keyboard_ids, !22, !"keyboard_ids", i1 false, i1 false}
!22 = !{!"../drivers/input/serio/libps2.c", i32 151, i32 18}
!23 = !{ptr @__ksymtab_ps2_is_keyboard_id, !24, !"__ksymtab_ps2_is_keyboard_id", i1 false, i1 false}
!24 = !{!"../drivers/input/serio/libps2.c", i32 162, i32 1}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/serio/libps2.c", i32 313, i32 2}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @__ps2_command.__UNIQUE_ID_ddebug234, !26, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!29 = !{ptr @__ksymtab___ps2_command, !30, !"__ksymtab___ps2_command", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/libps2.c", i32 325, i32 1}
!31 = !{ptr @__ksymtab_ps2_command, !32, !"__ksymtab_ps2_command", i1 false, i1 false}
!32 = !{!"../drivers/input/serio/libps2.c", i32 337, i32 1}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/input/serio/libps2.c", i32 366, i32 2}
!35 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ps2_sliced_command.__UNIQUE_ID_ddebug235, !34, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!37 = !{ptr @__ksymtab_ps2_sliced_command, !38, !"__ksymtab_ps2_sliced_command", i1 false, i1 false}
!38 = !{!"../drivers/input/serio/libps2.c", i32 370, i32 1}
!39 = !{ptr @ps2_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../drivers/input/serio/libps2.c", i32 378, i32 2}
!41 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ps2_init.__key.9, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/input/serio/libps2.c", i32 380, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @__ksymtab_ps2_init, !46, !"__ksymtab_ps2_init", i1 false, i1 false}
!46 = !{!"../drivers/input/serio/libps2.c", i32 383, i32 1}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/input/serio/libps2.c", i32 433, i32 3}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @ps2_handle_ack.__UNIQUE_ID_ddebug236, !48, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!51 = !{ptr @__ksymtab_ps2_handle_ack, !52, !"__ksymtab_ps2_handle_ack", i1 false, i1 false}
!52 = !{!"../drivers/input/serio/libps2.c", i32 452, i32 1}
!53 = !{ptr @__ksymtab_ps2_handle_response, !54, !"__ksymtab_ps2_handle_response", i1 false, i1 false}
!54 = !{!"../drivers/input/serio/libps2.c", i32 478, i32 1}
!55 = !{ptr @__ksymtab_ps2_cmd_aborted, !56, !"__ksymtab_ps2_cmd_aborted", i1 false, i1 false}
!56 = !{!"../drivers/input/serio/libps2.c", i32 491, i32 1}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/serio/libps2.c", i32 42, i32 4}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @ps2_do_sendbyte.__UNIQUE_ID_ddebug231, !58, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!61 = !{ptr @.str.15, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/serio/libps2.c", i32 71, i32 3}
!63 = !{ptr @ps2_do_sendbyte.__UNIQUE_ID_ddebug232, !62, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148766019, i64 2148766024, i64 2148766037, i64 2148766081, i64 2148766115, i64 2148766136}
!74 = !{!"branch_weights", i32 1, i32 2000}
