; ModuleID = '/llk/IR_all_yes/drivers/mailbox/mailbox.c_pt.bc'
source_filename = "../drivers/mailbox/mailbox.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+mbox_chan_received_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_chan_received_data\09\09\09\09"
module asm "\09.long\09__crc_mbox_chan_received_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_chan_received_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_chan_received_data\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_chan_received_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_chan_txdone\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_chan_txdone\09\09\09\09"
module asm "\09.long\09__crc_mbox_chan_txdone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_chan_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_chan_txdone\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_chan_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_client_txdone\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_client_txdone\09\09\09\09"
module asm "\09.long\09__crc_mbox_client_txdone\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_client_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_client_txdone\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_client_txdone:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_client_peek_data\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_client_peek_data\09\09\09\09"
module asm "\09.long\09__crc_mbox_client_peek_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_client_peek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_client_peek_data\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_client_peek_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_send_message\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_send_message\09\09\09\09"
module asm "\09.long\09__crc_mbox_send_message\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_send_message\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_send_message:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_flush\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_flush\09\09\09\09"
module asm "\09.long\09__crc_mbox_flush\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_flush\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_flush:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_request_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_request_channel\09\09\09\09"
module asm "\09.long\09__crc_mbox_request_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_request_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_request_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_request_channel_byname\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_request_channel_byname\09\09\09\09"
module asm "\09.long\09__crc_mbox_request_channel_byname\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_request_channel_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_request_channel_byname\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_request_channel_byname:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_free_channel\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_free_channel\09\09\09\09"
module asm "\09.long\09__crc_mbox_free_channel\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_free_channel\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_free_channel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_controller_register\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_controller_register\09\09\09\09"
module asm "\09.long\09__crc_mbox_controller_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mbox_controller_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_mbox_controller_unregister\09\09\09\09"
module asm "\09.long\09__crc_mbox_controller_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22mbox_controller_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_mbox_controller_register\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_mbox_controller_register\09\09\09\09"
module asm "\09.long\09__crc_devm_mbox_controller_register\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mbox_controller_register\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mbox_controller_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+devm_mbox_controller_unregister\22, \22a\22\09"
module asm "\09.weak\09__crc_devm_mbox_controller_unregister\09\09\09\09"
module asm "\09.long\09__crc_devm_mbox_controller_unregister\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_mbox_controller_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devm_mbox_controller_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.mbox_chan = type { ptr, i32, ptr, %struct.completion, ptr, i32, i32, [20 x ptr], %struct.spinlock, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mbox_client = type { ptr, i8, i32, i8, ptr, ptr, ptr }
%struct.mbox_controller = type { ptr, ptr, ptr, i32, i8, i8, i32, ptr, %struct.hrtimer, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mbox_chan_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hrtimer_clock_base = type { ptr, i32, i32, %struct.seqcount_raw_spinlock, ptr, %struct.timerqueue_head, ptr, i64 }
%struct.seqcount_raw_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }

@__kstrtab_mbox_chan_received_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_chan_received_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_chan_received_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_chan_received_data to i32), ptr @__kstrtab_mbox_chan_received_data, ptr @__kstrtabns_mbox_chan_received_data }, section "___ksymtab_gpl+mbox_chan_received_data", align 4
@mbox_chan_txdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Controller can't run the TX ticker\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mbox_chan_txdone\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mailbox/mailbox.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mbox_chan_txdone._entry_ptr = internal global ptr @mbox_chan_txdone._entry, section ".printk_index", align 4
@__kstrtab_mbox_chan_txdone = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_chan_txdone = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_chan_txdone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_chan_txdone to i32), ptr @__kstrtab_mbox_chan_txdone, ptr @__kstrtabns_mbox_chan_txdone }, section "___ksymtab_gpl+mbox_chan_txdone", align 4
@mbox_client_txdone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 194, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Client can't run the TX ticker\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbox_client_txdone\00", [45 x i8] zeroinitializer }, align 32
@mbox_client_txdone._entry_ptr = internal global ptr @mbox_client_txdone._entry, section ".printk_index", align 4
@__kstrtab_mbox_client_txdone = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_client_txdone = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_client_txdone = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_client_txdone to i32), ptr @__kstrtab_mbox_client_txdone, ptr @__kstrtabns_mbox_client_txdone }, section "___ksymtab_gpl+mbox_client_txdone", align 4
@__kstrtab_mbox_client_peek_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_client_peek_data = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_client_peek_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_client_peek_data to i32), ptr @__kstrtab_mbox_client_peek_data, ptr @__kstrtabns_mbox_client_peek_data }, section "___ksymtab_gpl+mbox_client_peek_data", align 4
@mbox_send_message._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 259, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Try increasing MBOX_TX_QUEUE_LEN\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mbox_send_message\00", [46 x i8] zeroinitializer }, align 32
@mbox_send_message._entry_ptr = internal global ptr @mbox_send_message._entry, section ".printk_index", align 4
@__kstrtab_mbox_send_message = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_send_message = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_send_message = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_send_message to i32), ptr @__kstrtab_mbox_send_message, ptr @__kstrtabns_mbox_send_message }, section "___ksymtab_gpl+mbox_send_message", align 4
@__kstrtab_mbox_flush = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_flush = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_flush = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_flush to i32), ptr @__kstrtab_mbox_flush, ptr @__kstrtabns_mbox_flush }, section "___ksymtab_gpl+mbox_flush", align 4
@mbox_request_channel.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 85, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mailbox\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mbox_request_channel\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s: No owner device node\0A\00", [38 x i8] zeroinitializer }, align 32
@con_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.30, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @con_mutex, i64 52), ptr getelementptr (i8, ptr @con_mutex, i64 52) }, ptr @con_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.31, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mboxes\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#mbox-cells\00", [20 x i8] zeroinitializer }, align 32
@mbox_request_channel.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.14, i8 0, i8 87, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: can't parse \22mboxes\22 property\0A\00", [61 x i8] zeroinitializer }, align 32
@mbox_cons = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @mbox_cons, ptr @mbox_cons }, [24 x i8] zeroinitializer }, align 32
@mbox_request_channel.__UNIQUE_ID_ddebug189 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.15, i8 0, i8 92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: mailbox not free\0A\00", [42 x i8] zeroinitializer }, align 32
@mbox_request_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.10, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unable to startup the chan (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@mbox_request_channel._entry_ptr = internal global ptr @mbox_request_channel._entry, section ".printk_index", align 4
@__kstrtab_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_request_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_request_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_request_channel to i32), ptr @__kstrtab_mbox_request_channel, ptr @__kstrtabns_mbox_request_channel }, section "___ksymtab_gpl+mbox_request_channel", align 4
@mbox_request_channel_byname._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 411, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s() currently only supports DT\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mbox_request_channel_byname\00", [36 x i8] zeroinitializer }, align 32
@mbox_request_channel_byname._entry_ptr = internal global ptr @mbox_request_channel_byname._entry, section ".printk_index", align 4
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mbox-names\00", [21 x i8] zeroinitializer }, align 32
@mbox_request_channel_byname._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.2, i32 417, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s() requires an \22mbox-names\22 property\0A\00", [56 x i8] zeroinitializer }, align 32
@mbox_request_channel_byname._entry_ptr.22 = internal global ptr @mbox_request_channel_byname._entry.20, section ".printk_index", align 4
@mbox_request_channel_byname._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.2, i32 428, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s() could not locate channel named \22%s\22\0A\00", [54 x i8] zeroinitializer }, align 32
@mbox_request_channel_byname._entry_ptr.25 = internal global ptr @mbox_request_channel_byname._entry.23, section ".printk_index", align 4
@__kstrtab_mbox_request_channel_byname = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_request_channel_byname = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_request_channel_byname = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_request_channel_byname to i32), ptr @__kstrtab_mbox_request_channel_byname, ptr @__kstrtabns_mbox_request_channel_byname }, section "___ksymtab_gpl+mbox_request_channel_byname", align 4
@__kstrtab_mbox_free_channel = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_free_channel = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_free_channel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_free_channel to i32), ptr @__kstrtab_mbox_free_channel, ptr @__kstrtabns_mbox_free_channel }, section "___ksymtab_gpl+mbox_free_channel", align 4
@mbox_controller_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 496, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"last_tx_done method is absent\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mbox_controller_register\00", [39 x i8] zeroinitializer }, align 32
@mbox_controller_register._entry_ptr = internal global ptr @mbox_controller_register._entry, section ".printk_index", align 4
@mbox_controller_register.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chan->lock\00", [20 x i8] zeroinitializer }, align 32
@__kstrtab_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_controller_register to i32), ptr @__kstrtab_mbox_controller_register, ptr @__kstrtabns_mbox_controller_register }, section "___ksymtab_gpl+mbox_controller_register", align 4
@__kstrtab_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_mbox_controller_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mbox_controller_unregister to i32), ptr @__kstrtab_mbox_controller_unregister, ptr @__kstrtabns_mbox_controller_unregister }, section "___ksymtab_gpl+mbox_controller_unregister", align 4
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"__devm_mbox_controller_unregister\00", [62 x i8] zeroinitializer }, align 32
@__kstrtab_devm_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mbox_controller_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mbox_controller_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mbox_controller_register to i32), ptr @__kstrtab_devm_mbox_controller_register, ptr @__kstrtabns_devm_mbox_controller_register }, section "___ksymtab_gpl+devm_mbox_controller_register", align 4
@__kstrtab_devm_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_mbox_controller_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_mbox_controller_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_mbox_controller_unregister to i32), ptr @__kstrtab_devm_mbox_controller_unregister, ptr @__kstrtabns_devm_mbox_controller_unregister }, section "___ksymtab_gpl+devm_mbox_controller_unregister", align 4
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"con_mutex.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"con_mutex\00", [22 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 173, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 194, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 259, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 341, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"con_mutex\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 347, i32 47 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 348, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 349, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [10 x i8] c"mbox_cons\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 23, i32 8 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 370, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 391, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 411, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 415, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 416, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 427, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 496, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 511, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 585, i32 8 }
@___asan_gen_.148 = private constant [29 x i8] c"../drivers/mailbox/mailbox.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 24, i32 8 }
@___asan_gen_.150 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 87, i32 2 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__ksymtab_devm_mbox_controller_register, ptr @__ksymtab_devm_mbox_controller_unregister, ptr @__ksymtab_mbox_chan_received_data, ptr @__ksymtab_mbox_chan_txdone, ptr @__ksymtab_mbox_client_peek_data, ptr @__ksymtab_mbox_client_txdone, ptr @__ksymtab_mbox_controller_register, ptr @__ksymtab_mbox_controller_unregister, ptr @__ksymtab_mbox_flush, ptr @__ksymtab_mbox_free_channel, ptr @__ksymtab_mbox_request_channel, ptr @__ksymtab_mbox_request_channel_byname, ptr @__ksymtab_mbox_send_message, ptr @mbox_chan_txdone._entry, ptr @mbox_chan_txdone._entry_ptr, ptr @mbox_client_txdone._entry, ptr @mbox_client_txdone._entry_ptr, ptr @mbox_controller_register._entry, ptr @mbox_controller_register._entry_ptr, ptr @mbox_request_channel._entry, ptr @mbox_request_channel._entry_ptr, ptr @mbox_request_channel_byname._entry, ptr @mbox_request_channel_byname._entry.20, ptr @mbox_request_channel_byname._entry.23, ptr @mbox_request_channel_byname._entry_ptr, ptr @mbox_request_channel_byname._entry_ptr.22, ptr @mbox_request_channel_byname._entry_ptr.25, ptr @mbox_send_message._entry, ptr @mbox_send_message._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @con_mutex, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @mbox_cons, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @mbox_controller_register.__key, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @init_completion.__key, ptr @.str.32], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_chan_txdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_client_txdone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_send_message._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @con_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_cons to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_request_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_request_channel_byname._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_request_channel_byname._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_request_channel_byname._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_controller_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbox_controller_register.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mbox_chan_received_data(ptr nocapture noundef readonly %chan, ptr noundef %mssg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %rx_callback = getelementptr inbounds %struct.mbox_client, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rx_callback to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rx_callback, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %3(ptr noundef %1, ptr noundef %mssg) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mbox_chan_txdone(ptr noundef %chan, i32 noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %txdone_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txdone_method, align 4
  %and = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str) #9
  br label %return

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %active_req.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %active_req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_req.i, align 4
  store ptr null, ptr %active_req.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call fastcc void @msg_submit(ptr noundef %chan) #6
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  %cl.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl.i, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_done.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %r) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %r)
  %cmp13.not.i = icmp eq i32 %r, -62
  br i1 %cmp13.not.i, label %if.end12.i.return_crit_edge, label %land.lhs.true.i

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.end12.i
  %12 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl.i, align 4
  %tx_block.i = getelementptr inbounds %struct.mbox_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_block.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not.i = icmp eq i8 %15, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then18.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_complete.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 3
  tail call void @complete(ptr noundef %tx_complete.i) #6
  br label %return

return:                                           ; preds = %if.then18.i, %land.lhs.true.i.return_crit_edge, %if.end12.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mbox_client_txdone(ptr noundef %chan, i32 noundef %r) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %txdone_method to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %txdone_method, align 4
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end, label %if.end, !prof !106

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5) #9
  br label %return

if.end:                                           ; preds = %entry
  %lock.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %active_req.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %active_req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_req.i, align 4
  store ptr null, ptr %active_req.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call fastcc void @msg_submit(ptr noundef %chan) #6
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  %cl.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl.i, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_done.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %r) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %r)
  %cmp13.not.i = icmp eq i32 %r, -62
  br i1 %cmp13.not.i, label %if.end12.i.return_crit_edge, label %land.lhs.true.i

if.end12.i.return_crit_edge:                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true.i:                                  ; preds = %if.end12.i
  %12 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl.i, align 4
  %tx_block.i = getelementptr inbounds %struct.mbox_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_block.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not.i = icmp eq i8 %15, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.return_crit_edge, label %if.then18.i

land.lhs.true.i.return_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_complete.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 3
  tail call void @complete(ptr noundef %tx_complete.i) #6
  br label %return

return:                                           ; preds = %if.then18.i, %land.lhs.true.i.return_crit_edge, %if.end12.i.return_crit_edge, %if.end.return_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @mbox_client_peek_data(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %peek_data = getelementptr inbounds %struct.mbox_chan_ops, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %peek_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %peek_data, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.then

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call zeroext i1 %5(ptr noundef %chan) #6
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %call, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mbox_send_message(ptr noundef %chan, ptr noundef %mssg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %lock.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call2.i32 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %msg_count.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %3)
  %cmp5.i = icmp eq i32 %3, 20
  br i1 %cmp5.i, label %add_to_rbuf.exit.thread, label %if.end.i33

add_to_rbuf.exit.thread:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i32) #6
  br label %do.end

if.end.i33:                                       ; preds = %if.end
  %msg_free.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %msg_free.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_free.i, align 4
  %arrayidx.i = getelementptr %struct.mbox_chan, ptr %chan, i32 0, i32 7, i32 %5
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %mssg, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %msg_count.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %msg_count.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %msg_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %5)
  %cmp9.i = icmp eq i32 %5, 19
  br i1 %cmp9.i, label %add_to_rbuf.exit.thread42, label %add_to_rbuf.exit

add_to_rbuf.exit.thread42:                        ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %msg_free.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %msg_free.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i32) #6
  br label %if.end3

add_to_rbuf.exit:                                 ; preds = %if.end.i33
  %10 = ptrtoint ptr %msg_free.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %msg_free.i, align 4
  %inc14.i = add i32 %11, 1
  store i32 %inc14.i, ptr %msg_free.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %add_to_rbuf.exit.do.end_crit_edge, label %add_to_rbuf.exit.if.end3_crit_edge

add_to_rbuf.exit.if.end3_crit_edge:               ; preds = %add_to_rbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

add_to_rbuf.exit.do.end_crit_edge:                ; preds = %add_to_rbuf.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %add_to_rbuf.exit.do.end_crit_edge, %add_to_rbuf.exit.thread
  %retval.0.i3541 = phi i32 [ -105, %add_to_rbuf.exit.thread ], [ %5, %add_to_rbuf.exit.do.end_crit_edge ]
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end3:                                          ; preds = %add_to_rbuf.exit.if.end3_crit_edge, %add_to_rbuf.exit.thread42
  tail call fastcc void @msg_submit(ptr noundef nonnull %chan)
  %16 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl, align 4
  %tx_block = getelementptr inbounds %struct.mbox_client, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %tx_block to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tx_block, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool5.not = icmp eq i8 %19, 0
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.then6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end3
  %tx_tout = getelementptr inbounds %struct.mbox_client, ptr %17, i32 0, i32 2
  %20 = ptrtoint ptr %tx_tout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_tout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool8.not = icmp eq i32 %21, 0
  br i1 %tobool8.not, label %if.then6.if.end14_crit_edge, label %if.else.i

if.then6.if.end14_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.else.i:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %21) #6
  br label %if.end14

if.end14:                                         ; preds = %if.else.i, %if.then6.if.end14_crit_edge
  %wait.0 = phi i32 [ 360000, %if.then6.if.end14_crit_edge ], [ %call2.i, %if.else.i ]
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 3
  %call15 = tail call i32 @wait_for_completion_timeout(ptr noundef %tx_complete, i32 noundef %wait.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp eq i32 %call15, 0
  br i1 %cmp16, label %if.then17, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then17:                                        ; preds = %if.end14
  %call2.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %active_req.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %22 = ptrtoint ptr %active_req.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %active_req.i, align 4
  store ptr null, ptr %active_req.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i37) #6
  tail call fastcc void @msg_submit(ptr noundef nonnull %chan) #6
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then17.cleanup_crit_edge, label %if.end.i38

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i38:                                       ; preds = %if.then17
  %24 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cl, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tx_done.i, align 4
  %tobool7.not.i = icmp eq ptr %27, null
  br i1 %tobool7.not.i, label %if.end.i38.cleanup_crit_edge, label %if.then8.i

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %27(ptr noundef %25, ptr noundef nonnull %23, i32 noundef -62) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i38.cleanup_crit_edge, %if.then17.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %do.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i3541, %do.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %5, %if.end3.cleanup_crit_edge ], [ %5, %if.end14.cleanup_crit_edge ], [ -62, %if.end.i38.cleanup_crit_edge ], [ -62, %if.then8.i ], [ -62, %if.then17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @msg_submit(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %msg_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %msg_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.exit.thread_crit_edge, label %lor.lhs.false

entry.exit.thread_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

lor.lhs.false:                                    ; preds = %entry
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %active_req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %active_req, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.exit.thread_crit_edge

lor.lhs.false.exit.thread_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

if.end:                                           ; preds = %lor.lhs.false
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %msg_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %msg_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %1)
  %cmp7.not = icmp ult i32 %5, %1
  %idx.0.p.v = select i1 %cmp7.not, i32 20, i32 0
  %idx.0.p = sub i32 %5, %1
  %idx.0 = add i32 %idx.0.p, %idx.0.p.v
  %arrayidx = getelementptr %struct.mbox_chan, ptr %chan, i32 0, i32 7, i32 %idx.0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl, align 4
  %tx_prepare = getelementptr inbounds %struct.mbox_client, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %tx_prepare to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_prepare, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %if.end.if.end17_crit_edge, label %if.then13

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %9, ptr noundef %7) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end.if.end17_crit_edge
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %call18 = tail call i32 %17(ptr noundef %chan, ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %land.lhs.true, label %if.end17.exit.thread_crit_edge

if.end17.exit.thread_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %exit.thread

exit.thread:                                      ; preds = %if.end17.exit.thread_crit_edge, %lor.lhs.false.exit.thread_crit_edge, %entry.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end17
  %18 = ptrtoint ptr %active_req to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %7, ptr %active_req, align 4
  %19 = ptrtoint ptr %msg_count to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %msg_count, align 4
  %dec = add i32 %20, -1
  store i32 %dec, ptr %msg_count, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 1
  %21 = ptrtoint ptr %txdone_method to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %txdone_method, align 4
  %and = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %land.lhs.true.if.end34_crit_edge, label %if.then27

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then27:                                        ; preds = %land.lhs.true
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 4
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %24, i32 0, i32 8
  %call29 = tail call zeroext i1 @hrtimer_active(ptr noundef %poll_hrt) #6
  br i1 %call29, label %if.then27.if.end34_crit_edge, label %if.then30

if.then27.if.end34_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then30:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan, align 4
  %poll_hrt32 = getelementptr inbounds %struct.mbox_controller, ptr %26, i32 0, i32 8
  tail call void @hrtimer_start_range_ns(ptr noundef %poll_hrt32, i64 noundef 0, i64 noundef 0, i32 noundef 1) #6
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.then27.if.end34_crit_edge, %land.lhs.true.if.end34_crit_edge, %exit.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mbox_flush(ptr noundef %chan, i32 noundef %timeout) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %flush = getelementptr inbounds %struct.mbox_chan_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %flush to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %flush, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 %5(ptr noundef %chan, i32 noundef %timeout) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %lock.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %active_req.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %active_req.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %active_req.i, align 4
  store ptr null, ptr %active_req.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call fastcc void @msg_submit(ptr noundef %chan) #6
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.then4.cleanup_crit_edge, label %if.end.i

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then4
  %cl.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cl.i, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tx_done.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %9, ptr noundef nonnull %7, i32 noundef %call) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %call)
  %cmp13.not.i = icmp eq i32 %call, -62
  br i1 %cmp13.not.i, label %if.end12.i.cleanup_crit_edge, label %land.lhs.true.i

if.end12.i.cleanup_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end12.i
  %12 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl.i, align 4
  %tx_block.i = getelementptr inbounds %struct.mbox_client, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %tx_block.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool16.not.i = icmp eq i8 %15, 0
  br i1 %tobool16.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %if.then18.i

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then18.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_complete.i = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 3
  tail call void @complete(ptr noundef %tx_complete.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then18.i, %land.lhs.true.i.cleanup_crit_edge, %if.end12.i.cleanup_crit_edge, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then4.cleanup_crit_edge ], [ -62, %if.end12.i.cleanup_crit_edge ], [ %call, %land.lhs.true.i.cleanup_crit_edge ], [ %call, %if.then18.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mbox_request_channel(ptr noundef %cl, i32 noundef %index) #0 align 64 {
entry:
  %spec = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %spec) #6
  %2 = call ptr @memset(ptr %spec, i32 255, i32 72)
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.do.body_crit_edge, label %if.end8

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_request_channel.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_request_channel, %if.then6)) #6
          to label %cleanup [label %if.then6], !srcloc !108

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @mbox_request_channel.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  tail call void @mutex_lock_nested(ptr noundef nonnull @con_mutex, i32 noundef 0) #6
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef -1, i32 noundef %index, ptr noundef nonnull %spec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not = icmp eq i32 %call.i, 0
  br i1 %tobool11.not, label %for.cond.preheader, label %do.body13

for.cond.preheader:                               ; preds = %if.end8
  %.pn157 = load ptr, ptr @mbox_cons, align 4
  %cmp.not159 = icmp eq ptr %.pn157, @mbox_cons
  br i1 %cmp.not159, label %for.end.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %mbox.0158 = getelementptr i8, ptr %.pn157, i32 -80
  br label %for.body

for.end.thread:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %spec, align 4
  call void @of_node_put(ptr noundef %8) #6
  br label %if.then50

do.body13:                                        ; preds = %if.end8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_request_channel.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_request_channel, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !108

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbox_request_channel.__UNIQUE_ID_ddebug188, ptr noundef nonnull %1, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body13
  call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %mbox.0162 = phi ptr [ %mbox.0, %for.inc.for.body_crit_edge ], [ %mbox.0158, %for.body.preheader ]
  %.pn161 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn157, %for.body.preheader ]
  %chan.0160 = phi ptr [ %chan.1, %for.inc.for.body_crit_edge ], [ inttoptr (i32 -517 to ptr), %for.body.preheader ]
  %9 = ptrtoint ptr %mbox.0162 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mbox.0162, align 8
  %of_node36 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 27
  %11 = ptrtoint ptr %of_node36 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node36, align 8
  %13 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %spec, align 4
  %cmp37 = icmp eq ptr %12, %14
  br i1 %cmp37, label %if.then38, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then38:                                        ; preds = %for.body
  %of_xlate = getelementptr i8, ptr %.pn161, i32 -56
  %15 = ptrtoint ptr %of_xlate to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_xlate, align 8
  %call39 = call ptr %16(ptr noundef %mbox.0162, ptr noundef nonnull %spec) #6
  %cmp.i = icmp ugt ptr %call39, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then38.for.inc_crit_edge, label %if.then38.for.end_crit_edge

if.then38.for.end_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.then38.for.inc_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.then38.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %chan.1 = phi ptr [ %call39, %if.then38.for.inc_crit_edge ], [ %chan.0160, %for.body.for.inc_crit_edge ]
  %17 = ptrtoint ptr %.pn161 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn = load ptr, ptr %.pn161, align 4
  %mbox.0 = getelementptr i8, ptr %.pn, i32 -80
  %cmp.not = icmp eq ptr %.pn, @mbox_cons
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then38.for.end_crit_edge
  %mbox.0.lcssa = phi ptr [ %mbox.0, %for.inc.for.end_crit_edge ], [ %mbox.0162, %if.then38.for.end_crit_edge ]
  %chan.2 = phi ptr [ %chan.1, %for.inc.for.end_crit_edge ], [ %call39, %if.then38.for.end_crit_edge ]
  %18 = ptrtoint ptr %spec to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spec, align 4
  call void @of_node_put(ptr noundef %19) #6
  %cmp.i153 = icmp ugt ptr %chan.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153, label %for.end.if.then50_crit_edge, label %if.end51

for.end.if.then50_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then50

if.then50:                                        ; preds = %for.end.if.then50_crit_edge, %for.end.thread
  %chan.2169 = phi ptr [ inttoptr (i32 -517 to ptr), %for.end.thread ], [ %chan.2, %for.end.if.then50_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %cl52 = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 2
  %20 = ptrtoint ptr %cl52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl52, align 4
  %tobool53.not = icmp eq ptr %21, null
  br i1 %tobool53.not, label %lor.lhs.false54, label %if.end51.do.body58_crit_edge

if.end51.do.body58_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body58

lor.lhs.false54:                                  ; preds = %if.end51
  %22 = ptrtoint ptr %mbox.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mbox.0.lcssa, align 8
  %driver = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 6
  %24 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %owner, align 4
  %call56 = call zeroext i1 @try_module_get(ptr noundef %27) #6
  br i1 %call56, label %do.body77, label %lor.lhs.false54.do.body58_crit_edge

lor.lhs.false54.do.body58_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body58

do.body58:                                        ; preds = %lor.lhs.false54.do.body58_crit_edge, %if.end51.do.body58_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mbox_request_channel.__UNIQUE_ID_ddebug189, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mbox_request_channel, %if.then70)) #6
          to label %do.end73 [label %if.then70], !srcloc !108

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mbox_request_channel.__UNIQUE_ID_ddebug189, ptr noundef nonnull %1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.10) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body58
  call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

do.body77:                                        ; preds = %lor.lhs.false54
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 8
  %call81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %msg_free = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 6
  %28 = ptrtoint ptr %msg_free to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %msg_free, align 4
  %msg_count = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 5
  %29 = ptrtoint ptr %msg_count to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %msg_count, align 4
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 4
  %30 = ptrtoint ptr %active_req to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %active_req, align 4
  %31 = ptrtoint ptr %cl52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %cl, ptr %cl52, align 4
  %tx_complete = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 3
  %32 = ptrtoint ptr %tx_complete to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %tx_complete, align 4
  %wait.i = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @init_completion.__key) #6
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan.2, i32 0, i32 1
  %33 = ptrtoint ptr %txdone_method to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txdone_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %34)
  %cmp87 = icmp eq i32 %34, 2
  br i1 %cmp87, label %land.lhs.true, label %do.body77.if.end93_crit_edge

do.body77.if.end93_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

land.lhs.true:                                    ; preds = %do.body77
  %knows_txdone = getelementptr inbounds %struct.mbox_client, ptr %cl, i32 0, i32 3
  %35 = ptrtoint ptr %knows_txdone to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %knows_txdone, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool89.not = icmp eq i8 %36, 0
  br i1 %tobool89.not, label %land.lhs.true.if.end93_crit_edge, label %if.then91

land.lhs.true.if.end93_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end93

if.then91:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %txdone_method to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 4, ptr %txdone_method, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.then91, %land.lhs.true.if.end93_crit_edge, %do.body77.if.end93_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call81) #6
  %38 = ptrtoint ptr %chan.2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan.2, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ops, align 4
  %startup = getelementptr inbounds %struct.mbox_chan_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %startup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %startup, align 4
  %tobool96.not = icmp eq ptr %43, null
  br i1 %tobool96.not, label %if.end93.if.end109_crit_edge, label %if.then97

if.end93.if.end109_crit_edge:                     ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then97:                                        ; preds = %if.end93
  %call101 = call i32 %43(ptr noundef %chan.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %if.then97.if.end109_crit_edge, label %do.end106

if.then97.if.end109_crit_edge:                    ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

do.end106:                                        ; preds = %if.then97
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.16, i32 noundef %call101) #9
  call void @mbox_free_channel(ptr noundef %chan.2)
  %44 = inttoptr i32 %call101 to ptr
  br label %if.end109

if.end109:                                        ; preds = %do.end106, %if.then97.if.end109_crit_edge, %if.end93.if.end109_crit_edge
  %chan.3 = phi ptr [ %44, %do.end106 ], [ %chan.2, %if.then97.if.end109_crit_edge ], [ %chan.2, %if.end93.if.end109_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end73, %if.then50, %do.end28, %if.then6, %do.body
  %retval.0 = phi ptr [ inttoptr (i32 -19 to ptr), %do.end28 ], [ %chan.2169, %if.then50 ], [ inttoptr (i32 -16 to ptr), %do.end73 ], [ %chan.3, %if.end109 ], [ inttoptr (i32 -19 to ptr), %do.body ], [ inttoptr (i32 -19 to ptr), %if.then6 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %spec) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mbox_free_channel(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %chan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %cl = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 4
  %shutdown = getelementptr inbounds %struct.mbox_chan_ops, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %shutdown to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %shutdown, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.do.body8_crit_edge, label %if.then3

if.end.do.body8_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %7(ptr noundef nonnull %chan) #6
  br label %do.body8

do.body8:                                         ; preds = %if.then3, %if.end.do.body8_crit_edge
  %lock = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 8
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %8 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %cl, align 4
  %active_req = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 4
  %9 = ptrtoint ptr %active_req to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %active_req, align 4
  %txdone_method = getelementptr inbounds %struct.mbox_chan, ptr %chan, i32 0, i32 1
  %10 = ptrtoint ptr %txdone_method to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txdone_method, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp13 = icmp eq i32 %11, 4
  br i1 %cmp13, label %if.then15, label %do.body8.if.end17_crit_edge

do.body8.if.end17_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %txdone_method to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %txdone_method, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %do.body8.if.end17_crit_edge
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 8
  %driver = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %driver, align 4
  %owner = getelementptr inbounds %struct.device_driver, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %owner, align 4
  tail call void @module_put(ptr noundef %20) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mbox_request_channel_byname(ptr noundef %cl, ptr noundef %name) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cl, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call ptr @of_find_property(ptr noundef nonnull %3, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %call12 = tail call ptr @of_prop_next_string(ptr noundef %call11, ptr noundef null) #6
  %tobool13.not42 = icmp eq ptr %call12, null
  br i1 %tobool13.not42, label %if.end10.do.end23_crit_edge, label %if.end10.for.body_crit_edge

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

if.end10.do.end23_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %if.end10.for.body_crit_edge
  %index.044 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %mbox_name.043 = phi ptr [ %call20, %if.end19.for.body_crit_edge ], [ %call12, %if.end10.for.body_crit_edge ]
  %call14 = tail call i32 @strlen(ptr noundef %name) #10
  %call15 = tail call i32 @strncmp(ptr noundef %name, ptr noundef nonnull %mbox_name.043, i32 noundef %call14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.then17, label %if.end19

if.then17:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call18 = tail call ptr @mbox_request_channel(ptr noundef %cl, i32 noundef %index.044)
  br label %cleanup

if.end19:                                         ; preds = %for.body
  %inc = add i32 %index.044, 1
  %call20 = tail call ptr @of_prop_next_string(ptr noundef %call11, ptr noundef nonnull %mbox_name.043) #6
  %tobool13.not = icmp eq ptr %call20, null
  br i1 %tobool13.not, label %if.end19.do.end23_crit_edge, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end19.do.end23_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end23

do.end23:                                         ; preds = %if.end19.do.end23_crit_edge, %if.end10.do.end23_crit_edge
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.18, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end23, %if.then17, %do.end7, %do.end
  %retval.0 = phi ptr [ %call18, %if.then17 ], [ inttoptr (i32 -22 to ptr), %do.end23 ], [ inttoptr (i32 -22 to ptr), %do.end7 ], [ inttoptr (i32 -22 to ptr), %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_string(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mbox_controller_register(ptr noundef %mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mbox, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %0 = ptrtoint ptr %mbox to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mbox, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 1
  %2 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.lhs.false2.cleanup_crit_edge, label %lor.lhs.false4

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %4 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %lor.lhs.false4.cleanup_crit_edge, label %if.end

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  %txdone_irq = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 4
  %6 = ptrtoint ptr %txdone_irq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %txdone_irq, align 8, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool6.not = icmp eq i8 %7, 0
  br i1 %tobool6.not, label %if.end12, label %if.end.if.end20_crit_edge

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.end12:                                         ; preds = %if.end
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 5
  %8 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %txdone_poll, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool8.not = icmp eq i8 %9, 0
  br i1 %tobool8.not, label %if.end12.if.end20_crit_edge, label %if.then13

if.end12.if.end20_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then13:                                        ; preds = %if.end12
  %last_tx_done = getelementptr inbounds %struct.mbox_chan_ops, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %last_tx_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %last_tx_done, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %do.end, label %if.end18

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef nonnull %1, ptr noundef nonnull @.str.26) #9
  br label %cleanup

if.end18:                                         ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 8
  tail call void @hrtimer_init(ptr noundef %poll_hrt, i32 noundef 1, i32 noundef 1) #6
  %function = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 8, i32 2
  %12 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @txdone_hrtimer, ptr %function, align 8
  br label %if.end20

if.end20:                                         ; preds = %if.end18, %if.end12.if.end20_crit_edge, %if.end.if.end20_crit_edge
  %txdone.056 = phi i32 [ 2, %if.end18 ], [ 4, %if.end12.if.end20_crit_edge ], [ 1, %if.end.if.end20_crit_edge ]
  %13 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp2257 = icmp sgt i32 %14, 0
  br i1 %cmp2257, label %for.body.lr.ph, label %if.end20.for.end_crit_edge

if.end20.for.end_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end20
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %15 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %16, i32 %i.058
  %cl = getelementptr %struct.mbox_chan, ptr %16, i32 %i.058, i32 2
  %17 = ptrtoint ptr %cl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %cl, align 4
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %mbox, ptr %arrayidx, align 4
  %txdone_method = getelementptr %struct.mbox_chan, ptr %16, i32 %i.058, i32 1
  %19 = ptrtoint ptr %txdone_method to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %txdone.056, ptr %txdone_method, align 4
  %lock = getelementptr %struct.mbox_chan, ptr %16, i32 %i.058, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.28, ptr noundef nonnull @mbox_controller_register.__key, i16 noundef signext 3) #6
  %inc = add nuw nsw i32 %i.058, 1
  %20 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_chans, align 4
  %cmp22 = icmp slt i32 %inc, %21
  br i1 %cmp22, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end20.for.end_crit_edge
  %of_xlate = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 7
  %22 = ptrtoint ptr %of_xlate to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_xlate, align 8
  %tobool27.not = icmp eq ptr %23, null
  br i1 %tobool27.not, label %if.then28, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then28:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @of_mbox_index_xlate, ptr %of_xlate, align 8
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %for.end.if.end30_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @con_mutex, i32 noundef 0) #6
  %node = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 9
  %25 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @mbox_cons, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %25, ptr noundef nonnull @mbox_cons) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end30.list_add_tail.exit_crit_edge

if.end30.list_add_tail.exit_crit_edge:            ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %node, ptr getelementptr inbounds (%struct.list_head, ptr @mbox_cons, i32 0, i32 1), align 4
  %26 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @mbox_cons, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %25, ptr %prev3.i.i, align 4
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node, ptr %25, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end30.list_add_tail.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ -22, %do.end ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %lor.lhs.false2.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @txdone_hrtimer(ptr noundef %hrtimer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %num_chans = getelementptr i8, ptr %hrtimer, i32 -20
  %0 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp25 = icmp sgt i32 %1, 0
  br i1 %cmp25, label %for.body.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %chans = getelementptr i8, ptr %hrtimer, i32 -24
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %resched.0.off026 = phi i1 [ false, %for.body.lr.ph ], [ %resched.1.off0, %if.end5.for.body_crit_edge ]
  %2 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %3, i32 %i.027
  %active_req = getelementptr %struct.mbox_chan, ptr %3, i32 %i.027, i32 4
  %4 = ptrtoint ptr %active_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_req, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.if.end5_crit_edge, label %land.lhs.true

for.body.if.end5_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

land.lhs.true:                                    ; preds = %for.body
  %cl = getelementptr %struct.mbox_chan, ptr %3, i32 %i.027, i32 2
  %6 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cl, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end5_crit_edge, label %if.then

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %ops = getelementptr inbounds %struct.mbox_controller, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %last_tx_done = getelementptr inbounds %struct.mbox_chan_ops, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %last_tx_done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %last_tx_done, align 4
  %call = tail call zeroext i1 %13(ptr noundef %arrayidx) #6
  br i1 %call, label %if.then4, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then4:                                         ; preds = %if.then
  %lock.i = getelementptr %struct.mbox_chan, ptr %3, i32 %i.027, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %14 = ptrtoint ptr %active_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_req, align 4
  store ptr null, ptr %active_req, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #6
  tail call fastcc void @msg_submit(ptr noundef %arrayidx) #6
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %if.then4.if.end5_crit_edge, label %if.end.i

if.then4.if.end5_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.end.i:                                         ; preds = %if.then4
  %16 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl, align 4
  %tx_done.i = getelementptr inbounds %struct.mbox_client, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %tx_done.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tx_done.i, align 4
  %tobool7.not.i = icmp eq ptr %19, null
  br i1 %tobool7.not.i, label %if.end.i.if.end12.i_crit_edge, label %if.then8.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12.i

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef %17, ptr noundef nonnull %15, i32 noundef 0) #6
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then8.i, %if.end.i.if.end12.i_crit_edge
  %20 = ptrtoint ptr %cl to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cl, align 4
  %tx_block.i = getelementptr inbounds %struct.mbox_client, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %tx_block.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %tx_block.i, align 4, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool16.not.i = icmp eq i8 %23, 0
  br i1 %tobool16.not.i, label %if.end12.i.if.end5_crit_edge, label %if.then18.i

if.end12.i.if.end5_crit_edge:                     ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then18.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_complete.i = getelementptr %struct.mbox_chan, ptr %3, i32 %i.027, i32 3
  tail call void @complete(ptr noundef %tx_complete.i) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then18.i, %if.end12.i.if.end5_crit_edge, %if.then4.if.end5_crit_edge, %if.then.if.end5_crit_edge, %land.lhs.true.if.end5_crit_edge, %for.body.if.end5_crit_edge
  %resched.1.off0 = phi i1 [ true, %if.then.if.end5_crit_edge ], [ %resched.0.off026, %land.lhs.true.if.end5_crit_edge ], [ %resched.0.off026, %for.body.if.end5_crit_edge ], [ true, %if.then4.if.end5_crit_edge ], [ true, %if.end12.i.if.end5_crit_edge ], [ true, %if.then18.i ]
  %inc = add nuw nsw i32 %i.027, 1
  %24 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_chans, align 4
  %cmp = icmp slt i32 %inc, %25
  br i1 %cmp, label %if.end5.for.body_crit_edge, label %for.end

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end5
  br i1 %resched.1.off0, label %if.then7, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %txpoll_period = getelementptr i8, ptr %hrtimer, i32 -12
  %26 = ptrtoint ptr %txpoll_period to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %txpoll_period, align 4
  %conv = zext i32 %27 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  %base.i = getelementptr inbounds %struct.hrtimer, ptr %hrtimer, i32 0, i32 3
  %28 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i, align 4
  %get_time.i = getelementptr inbounds %struct.hrtimer_clock_base, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %get_time.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %get_time.i, align 4
  %call.i = tail call i64 %31() #6
  %call1.i = tail call i64 @hrtimer_forward(ptr noundef %hrtimer, i64 noundef %call.i, i64 noundef %mul.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then7 ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal ptr @of_mbox_index_xlate(ptr nocapture noundef readonly %mbox, ptr nocapture noundef readonly %sp) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %sp, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %2 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not = icmp slt i32 %1, %3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  %4 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chans, align 8
  %arrayidx1 = getelementptr %struct.mbox_chan, ptr %5, i32 %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %arrayidx1, %if.end ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mbox_controller_unregister(ptr noundef %mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %mbox, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @con_mutex, i32 noundef 0) #6
  %node = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 9, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %num_chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 3
  %8 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp11 = icmp sgt i32 %9, 0
  br i1 %cmp11, label %for.body.lr.ph, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_del.exit
  %chans = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %mbox_free_channel.exit.for.body_crit_edge, %for.body.lr.ph
  %i.012 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %mbox_free_channel.exit.for.body_crit_edge ]
  %10 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chans, align 8
  %arrayidx = getelementptr %struct.mbox_chan, ptr %11, i32 %i.012
  %tobool.not.i = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i, label %for.body.mbox_free_channel.exit_crit_edge, label %lor.lhs.false.i

for.body.mbox_free_channel.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_free_channel.exit

lor.lhs.false.i:                                  ; preds = %for.body
  %cl.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.012, i32 2
  %12 = ptrtoint ptr %cl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cl.i, align 4
  %tobool1.not.i = icmp eq ptr %13, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.mbox_free_channel.exit_crit_edge, label %if.end.i

lor.lhs.false.i.mbox_free_channel.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mbox_free_channel.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %ops.i = getelementptr inbounds %struct.mbox_controller, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i, align 4
  %shutdown.i = getelementptr inbounds %struct.mbox_chan_ops, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %shutdown.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %shutdown.i, align 4
  %tobool2.not.i = icmp eq ptr %19, null
  br i1 %tobool2.not.i, label %if.end.i.do.body8.i_crit_edge, label %if.then3.i

if.end.i.do.body8.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %19(ptr noundef nonnull %arrayidx) #6
  br label %do.body8.i

do.body8.i:                                       ; preds = %if.then3.i, %if.end.i.do.body8.i_crit_edge
  %lock.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.012, i32 8
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %20 = ptrtoint ptr %cl.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %cl.i, align 4
  %active_req.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.012, i32 4
  %21 = ptrtoint ptr %active_req.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %active_req.i, align 4
  %txdone_method.i = getelementptr %struct.mbox_chan, ptr %11, i32 %i.012, i32 1
  %22 = ptrtoint ptr %txdone_method.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %txdone_method.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %23)
  %cmp13.i = icmp eq i32 %23, 4
  br i1 %cmp13.i, label %if.then15.i, label %do.body8.i.if.end17.i_crit_edge

do.body8.i.if.end17.i_crit_edge:                  ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then15.i:                                      ; preds = %do.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %txdone_method.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %txdone_method.i, align 4
  br label %if.end17.i

if.end17.i:                                       ; preds = %if.then15.i, %do.body8.i.if.end17.i_crit_edge
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %driver.i = getelementptr inbounds %struct.device, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %driver.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %driver.i, align 4
  %owner.i = getelementptr inbounds %struct.device_driver, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %owner.i, align 4
  tail call void @module_put(ptr noundef %32) #6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #6
  br label %mbox_free_channel.exit

mbox_free_channel.exit:                           ; preds = %if.end17.i, %lor.lhs.false.i.mbox_free_channel.exit_crit_edge, %for.body.mbox_free_channel.exit_crit_edge
  %inc = add nuw nsw i32 %i.012, 1
  %33 = ptrtoint ptr %num_chans to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_chans, align 4
  %cmp = icmp slt i32 %inc, %34
  br i1 %cmp, label %mbox_free_channel.exit.for.body_crit_edge, label %mbox_free_channel.exit.for.end_crit_edge

mbox_free_channel.exit.for.end_crit_edge:         ; preds = %mbox_free_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

mbox_free_channel.exit.for.body_crit_edge:        ; preds = %mbox_free_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %mbox_free_channel.exit.for.end_crit_edge, %list_del.exit.for.end_crit_edge
  %txdone_poll = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 5
  %35 = ptrtoint ptr %txdone_poll to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %txdone_poll, align 1, !range !107
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool1.not = icmp eq i8 %36, 0
  br i1 %tobool1.not, label %for.end.if.end3_crit_edge, label %if.then2

for.end.if.end3_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

if.then2:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %poll_hrt = getelementptr inbounds %struct.mbox_controller, ptr %mbox, i32 0, i32 8
  %call = tail call i32 @hrtimer_cancel(ptr noundef %poll_hrt) #6
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %for.end.if.end3_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @con_mutex) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @devm_mbox_controller_register(ptr noundef %dev, ptr noundef %mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @__devm_mbox_controller_unregister, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.29) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mbox_controller_register(ptr noundef %mbox)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call) #6
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  %0 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %mbox, ptr %call, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then2 ], [ 0, %if.end3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__devm_mbox_controller_unregister(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %res) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  tail call void @mbox_controller_unregister(ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @devm_mbox_controller_unregister(ptr noundef %dev, ptr noundef %mbox) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release(ptr noundef %dev, ptr noundef nonnull @__devm_mbox_controller_unregister, ptr noundef nonnull @devm_mbox_controller_match, ptr noundef %mbox) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !109

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 616, i32 noundef 9, ptr noundef null) #6
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @devm_mbox_controller_match(ptr nocapture noundef readnone %dev, ptr noundef readonly %res, ptr noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %res, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %lor.rhs

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

lor.rhs:                                          ; preds = %entry
  %0 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %res, align 4
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %lor.rhs.do.end_crit_edge, label %if.end24, !prof !106

lor.rhs.do.end_crit_edge:                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %lor.rhs.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 561, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ %conv, %if.end24 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @hrtimer_active(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @hrtimer_forward(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !14, !15, !16, !17, !19, !21, !23, !24, !25, !26, !28, !30, !32, !33, !34, !35, !37, !39, !41, !42, !44, !45, !47, !48, !49, !51, !53, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !70, !72, !73, !74, !75, !77, !78, !80, !82, !84, !86, !88, !90, !91, !92, !94, !96}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__ksymtab_mbox_chan_received_data, !1, !"__ksymtab_mbox_chan_received_data", i1 false, i1 false}
!1 = !{!"../drivers/mailbox/mailbox.c", i32 158, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mailbox/mailbox.c", i32 173, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mbox_chan_txdone._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @mbox_chan_txdone._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @__ksymtab_mbox_chan_txdone, !11, !"__ksymtab_mbox_chan_txdone", i1 false, i1 false}
!11 = !{!"../drivers/mailbox/mailbox.c", i32 180, i32 1}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mailbox/mailbox.c", i32 194, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @mbox_client_txdone._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @mbox_client_txdone._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @__ksymtab_mbox_client_txdone, !18, !"__ksymtab_mbox_client_txdone", i1 false, i1 false}
!18 = !{!"../drivers/mailbox/mailbox.c", i32 200, i32 1}
!19 = !{ptr @__ksymtab_mbox_client_peek_data, !20, !"__ksymtab_mbox_client_peek_data", i1 false, i1 false}
!20 = !{!"../drivers/mailbox/mailbox.c", i32 224, i32 1}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mailbox/mailbox.c", i32 259, i32 3}
!23 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @mbox_send_message._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @mbox_send_message._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_mbox_send_message, !27, !"__ksymtab_mbox_send_message", i1 false, i1 false}
!27 = !{!"../drivers/mailbox/mailbox.c", i32 283, i32 1}
!28 = !{ptr @__ksymtab_mbox_flush, !29, !"__ksymtab_mbox_flush", i1 false, i1 false}
!29 = !{!"../drivers/mailbox/mailbox.c", i32 312, i32 1}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/mailbox/mailbox.c", i32 341, i32 3}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mbox_request_channel.__UNIQUE_ID_ddebug187, !31, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mailbox/mailbox.c", i32 347, i32 47}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mailbox/mailbox.c", i32 348, i32 12}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mailbox/mailbox.c", i32 349, i32 3}
!41 = !{ptr @mbox_request_channel.__UNIQUE_ID_ddebug188, !40, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/mailbox/mailbox.c", i32 370, i32 3}
!44 = !{ptr @mbox_request_channel.__UNIQUE_ID_ddebug189, !43, !"__UNIQUE_ID_ddebug189", i1 false, i1 false}
!45 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mailbox/mailbox.c", i32 391, i32 4}
!47 = !{ptr @mbox_request_channel._entry, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @mbox_request_channel._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @__ksymtab_mbox_request_channel, !50, !"__ksymtab_mbox_request_channel", i1 false, i1 false}
!50 = !{!"../drivers/mailbox/mailbox.c", i32 400, i32 1}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/mailbox/mailbox.c", i32 411, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @mbox_request_channel_byname._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @mbox_request_channel_byname._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/mailbox/mailbox.c", i32 415, i32 27}
!58 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/mailbox/mailbox.c", i32 416, i32 3}
!60 = !{ptr @mbox_request_channel_byname._entry.20, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @mbox_request_channel_byname._entry_ptr.22, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/mailbox/mailbox.c", i32 427, i32 2}
!64 = !{ptr @mbox_request_channel_byname._entry.23, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @mbox_request_channel_byname._entry_ptr.25, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @__ksymtab_mbox_request_channel_byname, !67, !"__ksymtab_mbox_request_channel_byname", i1 false, i1 false}
!67 = !{!"../drivers/mailbox/mailbox.c", i32 431, i32 1}
!68 = !{ptr @__ksymtab_mbox_free_channel, !69, !"__ksymtab_mbox_free_channel", i1 false, i1 false}
!69 = !{!"../drivers/mailbox/mailbox.c", i32 458, i32 1}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/mailbox/mailbox.c", i32 496, i32 4}
!72 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @mbox_controller_register._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @mbox_controller_register._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @mbox_controller_register.__key, !76, !"__key", i1 false, i1 false}
!76 = !{!"../drivers/mailbox/mailbox.c", i32 511, i32 3}
!77 = !{ptr @.str.28, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__ksymtab_mbox_controller_register, !79, !"__ksymtab_mbox_controller_register", i1 false, i1 false}
!79 = !{!"../drivers/mailbox/mailbox.c", i32 523, i32 1}
!80 = !{ptr @__ksymtab_mbox_controller_unregister, !81, !"__ksymtab_mbox_controller_unregister", i1 false, i1 false}
!81 = !{!"../drivers/mailbox/mailbox.c", i32 548, i32 1}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/mailbox/mailbox.c", i32 585, i32 8}
!84 = !{ptr @__ksymtab_devm_mbox_controller_register, !85, !"__ksymtab_devm_mbox_controller_register", i1 false, i1 false}
!85 = !{!"../drivers/mailbox/mailbox.c", i32 601, i32 1}
!86 = !{ptr @__ksymtab_devm_mbox_controller_unregister, !87, !"__ksymtab_devm_mbox_controller_unregister", i1 false, i1 false}
!87 = !{!"../drivers/mailbox/mailbox.c", i32 618, i32 1}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/mailbox/mailbox.c", i32 24, i32 8}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @con_mutex, !89, !"con_mutex", i1 false, i1 false}
!92 = !{ptr @mbox_cons, !93, !"mbox_cons", i1 false, i1 false}
!93 = !{!"../drivers/mailbox/mailbox.c", i32 23, i32 8}
!94 = !{ptr @init_completion.__key, !95, !"__key", i1 false, i1 false}
!95 = !{!"../include/linux/completion.h", i32 87, i32 2}
!96 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"branch_weights", i32 1, i32 2000}
!107 = !{i8 0, i8 2}
!108 = !{i64 2148731652, i64 2148731657, i64 2148731670, i64 2148731714, i64 2148731748, i64 2148731769}
!109 = !{!"branch_weights", i32 2000, i32 1}
