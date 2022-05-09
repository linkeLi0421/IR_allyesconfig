; ModuleID = '/llk/IR_all_yes/drivers/slimbus/messaging.c_pt.bc'
source_filename = "../drivers/slimbus/messaging.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+slim_msg_response\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_msg_response\09\09\09\09"
module asm "\09.long\09__crc_slim_msg_response\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_msg_response:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_msg_response\22\09\09\09\09\09"
module asm "__kstrtabns_slim_msg_response:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_alloc_txn_tid\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_alloc_txn_tid\09\09\09\09"
module asm "\09.long\09__crc_slim_alloc_txn_tid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_alloc_txn_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_alloc_txn_tid\22\09\09\09\09\09"
module asm "__kstrtabns_slim_alloc_txn_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_free_txn_tid\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_free_txn_tid\09\09\09\09"
module asm "\09.long\09__crc_slim_free_txn_tid\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_free_txn_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_free_txn_tid\22\09\09\09\09\09"
module asm "__kstrtabns_slim_free_txn_tid:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_do_transfer\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_do_transfer\09\09\09\09"
module asm "\09.long\09__crc_slim_do_transfer\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_do_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_do_transfer\22\09\09\09\09\09"
module asm "__kstrtabns_slim_do_transfer:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_xfer_msg\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_xfer_msg\09\09\09\09"
module asm "\09.long\09__crc_slim_xfer_msg\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_xfer_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_xfer_msg\22\09\09\09\09\09"
module asm "__kstrtabns_slim_xfer_msg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_read\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_read\09\09\09\09"
module asm "\09.long\09__crc_slim_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_read:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_read\22\09\09\09\09\09"
module asm "__kstrtabns_slim_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_readb\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_readb\09\09\09\09"
module asm "\09.long\09__crc_slim_readb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_readb\22\09\09\09\09\09"
module asm "__kstrtabns_slim_readb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_write\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_write\09\09\09\09"
module asm "\09.long\09__crc_slim_write\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_write:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_write\22\09\09\09\09\09"
module asm "__kstrtabns_slim_write:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+slim_writeb\22, \22a\22\09"
module asm "\09.weak\09__crc_slim_writeb\09\09\09\09"
module asm "\09.long\09__crc_slim_writeb\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_slim_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22slim_writeb\22\09\09\09\09\09"
module asm "__kstrtabns_slim_writeb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.slim_controller = type { ptr, i32, [32 x i8], i32, i32, i32, %struct.ida, ptr, %struct.mutex, %struct.list_head, %struct.idr, %struct.spinlock, %struct.slim_sched, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.slim_sched = type { i32, %struct.completion, %struct.mutex }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.slim_msg_txn = type { i8, i8, i8, i8, i16, i8, i8, ptr, ptr }
%struct.slim_val_inf = type { i16, i8, ptr, ptr, ptr }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.slim_device = type { %struct.device, %struct.slim_eaddr, ptr, i32, i8, i8, %struct.list_head, %struct.spinlock }
%struct.slim_eaddr = type { i8, i8, i16, i16 }

@slim_msg_response._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 40, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Got response to invalid TID:%d, len:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"slim_msg_response\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/slimbus/messaging.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@slim_msg_response._entry_ptr = internal global ptr @slim_msg_response._entry, section ".printk_index", align 4
@__kstrtab_slim_msg_response = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_msg_response = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_msg_response = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_msg_response to i32), ptr @__kstrtab_slim_msg_response, ptr @__kstrtabns_slim_msg_response }, section "___ksymtab_gpl+slim_msg_response", align 4
@__kstrtab_slim_alloc_txn_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_alloc_txn_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_alloc_txn_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_alloc_txn_tid to i32), ptr @__kstrtab_slim_alloc_txn_tid, ptr @__kstrtabns_slim_alloc_txn_tid }, section "___ksymtab_gpl+slim_alloc_txn_tid", align 4
@__kstrtab_slim_free_txn_tid = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_free_txn_tid = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_free_txn_tid = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_free_txn_tid to i32), ptr @__kstrtab_slim_free_txn_tid, ptr @__kstrtabns_slim_free_txn_tid }, section "___ksymtab_gpl+slim_free_txn_tid", align 4
@slim_do_transfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 130, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ctrl wrong state:%d, ret:%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"slim_do_transfer\00", [47 x i8] zeroinitializer }, align 32
@slim_do_transfer._entry_ptr = internal global ptr @slim_do_transfer._entry, section ".printk_index", align 4
@slim_do_transfer._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 164, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tx:MT:0x%x, MC:0x%x, LA:0x%x failed:%d\0A\00", [56 x i8] zeroinitializer }, align 32
@slim_do_transfer._entry_ptr.9 = internal global ptr @slim_do_transfer._entry.7, section ".printk_index", align 4
@__kstrtab_slim_do_transfer = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_do_transfer = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_do_transfer = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_do_transfer to i32), ptr @__kstrtab_slim_do_transfer, ptr @__kstrtabns_slim_do_transfer }, section "___ksymtab_gpl+slim_do_transfer", align 4
@slim_xfer_msg.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"slimbus\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"slim_xfer_msg\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"SB xfer msg:os:%x, len:%d, MC:%x, sl:%x\0A\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_slim_xfer_msg = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_xfer_msg = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_xfer_msg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_xfer_msg to i32), ptr @__kstrtab_slim_xfer_msg, ptr @__kstrtabns_slim_xfer_msg }, section "___ksymtab_gpl+slim_xfer_msg", align 4
@__kstrtab_slim_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_read = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_read to i32), ptr @__kstrtab_slim_read, ptr @__kstrtabns_slim_read }, section "___ksymtab_gpl+slim_read", align 4
@__kstrtab_slim_readb = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_readb = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_readb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_readb to i32), ptr @__kstrtab_slim_readb, ptr @__kstrtabns_slim_readb }, section "___ksymtab_gpl+slim_readb", align 4
@__kstrtab_slim_write = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_write = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_write = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_write to i32), ptr @__kstrtab_slim_write, ptr @__kstrtabns_slim_write }, section "___ksymtab_gpl+slim_write", align 4
@__kstrtab_slim_writeb = external dso_local constant [0 x i8], align 1
@__kstrtabns_slim_writeb = external dso_local constant [0 x i8], align 1
@__ksymtab_slim_writeb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @slim_writeb to i32), ptr @__kstrtab_slim_writeb, ptr @__kstrtabns_slim_writeb }, section "___ksymtab_gpl+slim_writeb", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@slim_val_inf_sanity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 207, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Sanity check failed:msg:offset:0x%x, mc:%d\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slim_val_inf_sanity\00", [44 x i8] zeroinitializer }, align 32
@slim_val_inf_sanity._entry_ptr = internal global ptr @slim_val_inf_sanity._entry, section ".printk_index", align 4
@slim_slicesize.sizetocode = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\03\04\04\05\05\05\05\06\06\06\06\07", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 32, i64 33, i64 40, i64 96, i64 97, i64 104]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 8, i64 33, i64 40, i64 97, i64 104]
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 39, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 129, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 163, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 251, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 87, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 206, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [11 x i8] c"sizetocode\00", align 1
@___asan_gen_.75 = private constant [31 x i8] c"../drivers/slimbus/messaging.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 213, i32 18 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__ksymtab_slim_alloc_txn_tid, ptr @__ksymtab_slim_do_transfer, ptr @__ksymtab_slim_free_txn_tid, ptr @__ksymtab_slim_msg_response, ptr @__ksymtab_slim_read, ptr @__ksymtab_slim_readb, ptr @__ksymtab_slim_write, ptr @__ksymtab_slim_writeb, ptr @__ksymtab_slim_xfer_msg, ptr @slim_do_transfer._entry, ptr @slim_do_transfer._entry.7, ptr @slim_do_transfer._entry_ptr, ptr @slim_do_transfer._entry_ptr.9, ptr @slim_msg_response._entry, ptr @slim_msg_response._entry_ptr, ptr @slim_val_inf_sanity._entry, ptr @slim_val_inf_sanity._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @init_completion.__key, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @slim_slicesize.sizetocode], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_msg_response._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_do_transfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_do_transfer._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_val_inf_sanity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slim_slicesize.sizetocode to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @slim_msg_response(ptr noundef %ctrl, ptr nocapture noundef readonly %reply, i8 noundef zeroext %tid, i8 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txn_lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock) #5
  %tid_idr = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  %conv5 = zext i8 %tid to i32
  %call6 = tail call ptr @idr_find(ptr noundef %tid_idr, i32 noundef %conv5) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call2) #5
  %cmp8 = icmp eq ptr %call6, null
  br i1 %cmp8, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg10 = getelementptr inbounds %struct.slim_msg_txn, ptr %call6, i32 0, i32 7
  %0 = ptrtoint ptr %msg10 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msg10, align 4
  %cmp11 = icmp eq ptr %1, null
  br i1 %cmp11, label %if.end.do.end18_crit_edge, label %lor.lhs.false

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

lor.lhs.false:                                    ; preds = %if.end
  %rbuf = getelementptr inbounds %struct.slim_val_inf, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rbuf, align 4
  %cmp13 = icmp eq ptr %3, null
  br i1 %cmp13, label %lor.lhs.false.do.end18_crit_edge, label %if.end21

lor.lhs.false.do.end18_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end18

do.end18:                                         ; preds = %lor.lhs.false.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 4
  %conv20 = zext i8 %len to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str, i32 noundef %conv5, i32 noundef %conv20) #8
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock) #5
  %tid.i = getelementptr inbounds %struct.slim_msg_txn, ptr %call6, i32 0, i32 5
  %6 = ptrtoint ptr %tid.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tid.i, align 2
  %conv5.i = zext i8 %7 to i32
  %call6.i = tail call ptr @idr_remove(ptr noundef %tid_idr, i32 noundef %conv5.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call2.i) #5
  %8 = ptrtoint ptr %rbuf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %rbuf, align 4
  %conv23 = zext i8 %len to i32
  %10 = call ptr @memcpy(ptr %9, ptr %reply, i32 %conv23)
  %comp = getelementptr inbounds %struct.slim_msg_txn, ptr %call6, i32 0, i32 8
  %11 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %comp, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %if.end21.if.end26_crit_edge, label %if.then24

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @complete(ptr noundef nonnull %12) #5
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %if.end21.if.end26_crit_edge
  %13 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctrl, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 12, i32 22
  %15 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %16 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl, align 4
  %call.i47 = tail call i32 @__pm_runtime_suspend(ptr noundef %17, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %do.end18, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @slim_free_txn_tid(ptr noundef %ctrl, ptr nocapture noundef readonly %txn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txn_lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock) #5
  %tid_idr = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tid, align 2
  %conv5 = zext i8 %1 to i32
  %call6 = tail call ptr @idr_remove(ptr noundef %tid_idr, i32 noundef %conv5) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_alloc_txn_tid(ptr noundef %ctrl, ptr noundef %txn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %txn_lock = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock) #5
  %tid_idr = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  %call5 = tail call i32 @idr_alloc_cyclic(ptr noundef %tid_idr, ptr noundef %txn, i32 noundef 1, i32 noundef 256, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv9 = trunc i32 %call5 to i8
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %0 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv9, ptr %tid, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call5, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock, i32 noundef %call2) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_do_transfer(ptr noundef %ctrl, ptr noundef %txn) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #5
  %0 = getelementptr inbounds i8, ptr %done, i32 4
  %1 = call ptr @memset(ptr %0, i32 255, i32 52)
  %2 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.13, ptr noundef nonnull @init_completion.__key) #5
  %sched = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 12
  %3 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %land.lhs.true, label %entry.if.then12_crit_edge

entry.if.then12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

land.lhs.true:                                    ; preds = %entry
  %mt = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %5 = ptrtoint ptr %mt to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %mt, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp1 = icmp eq i8 %6, 0
  br i1 %cmp1, label %if.end, label %land.lhs.true.if.then12_crit_edge

land.lhs.true.if.then12_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end:                                           ; preds = %land.lhs.true
  %mc = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %7 = ptrtoint ptr %mc to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mc, align 2
  %9 = and i8 %8, -32
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %9)
  %10 = icmp eq i8 %9, 64
  br i1 %10, label %if.end.if.end22_crit_edge, label %if.end.if.then12_crit_edge

if.end.if.then12_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then12

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then12:                                        ; preds = %if.end.if.then12_crit_edge, %land.lhs.true.if.then12_crit_edge, %entry.if.then12_crit_edge
  %11 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctrl, align 4
  %call.i = call i32 @__pm_runtime_resume(ptr noundef %12, i32 noundef 4) #5
  %13 = ptrtoint ptr %sched to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sched, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15.not = icmp eq i32 %14, 0
  br i1 %cmp15.not, label %if.then12.if.end22_crit_edge, label %slim_xfer_err.thread

if.then12.if.end22_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

slim_xfer_err.thread:                             ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.5, i32 noundef %14, i32 noundef %call.i) #8
  br label %land.lhs.true70

if.end22:                                         ; preds = %if.then12.if.end22_crit_edge, %if.end.if.end22_crit_edge
  %clk_pause_msg.0.off0137 = phi i1 [ false, %if.then12.if.end22_crit_edge ], [ true, %if.end.if.end22_crit_edge ]
  %tid = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %17 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %tid, align 2
  %mt23 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 1
  %18 = ptrtoint ptr %mt23 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mt23, align 1
  %mc24 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 2
  %20 = ptrtoint ptr %mc24 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %mc24, align 2
  %22 = add i8 %21, -32
  %switch.and.i = and i8 %22, -66
  %23 = or i8 %switch.and.i, %19
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %if.then27, label %if.end22.if.end38_crit_edge

if.end22.if.end38_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then27:                                        ; preds = %if.end22
  %txn_lock.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call2.i126 = call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock.i) #5
  %tid_idr.i = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  %call5.i = call i32 @idr_alloc_cyclic(ptr noundef %tid_idr.i, ptr noundef %txn, i32 noundef 1, i32 noundef 256, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %slim_alloc_txn_tid.exit, label %if.end31

slim_alloc_txn_tid.exit:                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock.i, i32 noundef %call2.i126) #5
  br label %cleanup

if.end31:                                         ; preds = %if.then27
  %conv9.i = trunc i32 %call5.i to i8
  %25 = ptrtoint ptr %tid to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9.i, ptr %tid, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock.i, i32 noundef %call2.i126) #5
  %msg = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %26 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %msg, align 4
  %comp = getelementptr inbounds %struct.slim_val_inf, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %comp, align 4
  %tobool32.not = icmp eq ptr %29, null
  br i1 %tobool32.not, label %if.then33, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then33:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %comp34 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %30 = ptrtoint ptr %comp34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %done, ptr %comp34, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then33, %if.end31.if.end38_crit_edge, %if.end22.if.end38_crit_edge
  %xfer_msg = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 13
  %31 = ptrtoint ptr %xfer_msg to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfer_msg, align 4
  %call39 = call i32 %32(ptr noundef %ctrl, ptr noundef %txn) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp ne i32 %call39, 0
  %call25.not = xor i1 %24, true
  %brmerge = select i1 %tobool40.not, i1 true, i1 %call25.not
  br i1 %brmerge, label %if.end56, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %if.end38
  %msg45 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 7
  %33 = ptrtoint ptr %msg45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msg45, align 4
  %comp46 = getelementptr inbounds %struct.slim_val_inf, ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %comp46 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %comp46, align 4
  %tobool47.not = icmp eq ptr %36, null
  br i1 %tobool47.not, label %if.then48, label %land.lhs.true44.if.end56.thread_crit_edge

land.lhs.true44.if.end56.thread_crit_edge:        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.thread

if.then48:                                        ; preds = %land.lhs.true44
  %comp50 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 8
  %37 = ptrtoint ptr %comp50 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %comp50, align 4
  %39 = ptrtoint ptr %txn to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %txn, align 4
  %conv49 = zext i8 %40 to i32
  %add = add nuw nsw i32 %conv49, 100
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %add) #5
  %call52 = call i32 @wait_for_completion_timeout(ptr noundef %38, i32 noundef %call2.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %tobool53.not = icmp eq i32 %call52, 0
  br i1 %tobool53.not, label %if.end56.thread143, label %if.then48.if.end56.thread_crit_edge

if.then48.if.end56.thread_crit_edge:              ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end56.thread

if.end56.thread143:                               ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #7
  %txn_lock.i129 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 11
  %call2.i130 = call i32 @_raw_spin_lock_irqsave(ptr noundef %txn_lock.i129) #5
  %tid_idr.i131 = getelementptr inbounds %struct.slim_controller, ptr %ctrl, i32 0, i32 10
  %41 = ptrtoint ptr %tid to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tid, align 2
  %conv5.i = zext i8 %42 to i32
  %call6.i = call ptr @idr_remove(ptr noundef %tid_idr.i131, i32 noundef %conv5.i) #5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %txn_lock.i129, i32 noundef %call2.i130) #5
  br label %do.end61

if.end56.thread:                                  ; preds = %if.then48.if.end56.thread_crit_edge, %land.lhs.true44.if.end56.thread_crit_edge
  br i1 %clk_pause_msg.0.off0137, label %if.end56.thread.cleanup_crit_edge, label %if.end56.thread.land.lhs.true70_crit_edge

if.end56.thread.land.lhs.true70_crit_edge:        ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true70

if.end56.thread.cleanup_crit_edge:                ; preds = %if.end56.thread
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool57.not = icmp eq i32 %call39, 0
  br i1 %tobool57.not, label %slim_xfer_err, label %if.end56.do.end61_crit_edge

if.end56.do.end61_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end61

do.end61:                                         ; preds = %if.end56.do.end61_crit_edge, %if.end56.thread143
  %ret.1146 = phi i32 [ -110, %if.end56.thread143 ], [ %call39, %if.end56.do.end61_crit_edge ]
  %43 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl, align 4
  %45 = ptrtoint ptr %mt23 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mt23, align 1
  %conv64 = zext i8 %46 to i32
  %47 = ptrtoint ptr %mc24 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %mc24, align 2
  %conv66 = zext i8 %48 to i32
  %la = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 6
  %49 = ptrtoint ptr %la to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %la, align 1
  %conv67 = zext i8 %50 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str.8, i32 noundef %conv64, i32 noundef %conv66, i32 noundef %conv67, i32 noundef %ret.1146) #8
  br i1 %clk_pause_msg.0.off0137, label %do.end61.cleanup_crit_edge, label %do.end61.land.lhs.true70_crit_edge

do.end61.land.lhs.true70_crit_edge:               ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true70

do.end61.cleanup_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

slim_xfer_err:                                    ; preds = %if.end56
  br i1 %clk_pause_msg.0.off0137, label %slim_xfer_err.cleanup_crit_edge, label %slim_xfer_err.land.lhs.true70_crit_edge

slim_xfer_err.land.lhs.true70_crit_edge:          ; preds = %slim_xfer_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true70

slim_xfer_err.cleanup_crit_edge:                  ; preds = %slim_xfer_err
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true70:                                  ; preds = %slim_xfer_err.land.lhs.true70_crit_edge, %do.end61.land.lhs.true70_crit_edge, %if.end56.thread.land.lhs.true70_crit_edge, %slim_xfer_err.thread
  %ret.2149 = phi i32 [ %call.i, %slim_xfer_err.thread ], [ 0, %slim_xfer_err.land.lhs.true70_crit_edge ], [ %ret.1146, %do.end61.land.lhs.true70_crit_edge ], [ 0, %if.end56.thread.land.lhs.true70_crit_edge ]
  %tid71 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn, i32 0, i32 5
  %51 = ptrtoint ptr %tid71 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %tid71, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %cmp73 = icmp eq i8 %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -110, i32 %ret.2149)
  %cmp75 = icmp eq i32 %ret.2149, -110
  %or.cond125 = select i1 %cmp73, i1 true, i1 %cmp75
  br i1 %or.cond125, label %if.then77, label %land.lhs.true70.cleanup_crit_edge

land.lhs.true70.cleanup_crit_edge:                ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then77:                                        ; preds = %land.lhs.true70
  call void @__sanitizer_cov_trace_pc() #7
  %53 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ctrl, align 4
  %call.i133 = call i64 @ktime_get_mono_fast_ns() #5
  %last_busy.i = getelementptr inbounds %struct.device, ptr %54, i32 0, i32 12, i32 22
  %55 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store volatile i64 %call.i133, ptr %last_busy.i, align 8
  %56 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %ctrl, align 4
  %call.i134 = call i32 @__pm_runtime_suspend(ptr noundef %57, i32 noundef 13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then77, %land.lhs.true70.cleanup_crit_edge, %slim_xfer_err.cleanup_crit_edge, %do.end61.cleanup_crit_edge, %if.end56.thread.cleanup_crit_edge, %slim_alloc_txn_tid.exit
  %retval.0 = phi i32 [ %call5.i, %slim_alloc_txn_tid.exit ], [ %ret.2149, %land.lhs.true70.cleanup_crit_edge ], [ %ret.2149, %if.then77 ], [ 0, %slim_xfer_err.cleanup_crit_edge ], [ %ret.1146, %do.end61.cleanup_crit_edge ], [ 0, %if.end56.thread.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_xfer_msg(ptr nocapture noundef readonly %sbdev, ptr noundef %msg, i8 noundef zeroext %mc) #0 align 64 {
entry:
  %txn_stack = alloca %struct.slim_msg_txn, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %txn_stack) #5
  %0 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 1
  %1 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 2
  %2 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 3
  %3 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 4
  %4 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 6
  %5 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 7
  %6 = getelementptr inbounds %struct.slim_msg_txn, ptr %txn_stack, i32 0, i32 8
  %7 = ptrtoint ptr %txn_stack to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 6, ptr %txn_stack, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %0, align 1
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %mc, ptr %1, align 2
  %laddr = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 0, ptr %2, align 1
  %11 = ptrtoint ptr %laddr to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %laddr, align 8
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %4, align 1
  %14 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %msg, ptr %5, align 4
  %15 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %6, align 4
  %ctrl3 = getelementptr inbounds %struct.slim_device, ptr %sbdev, i32 0, i32 2
  %16 = ptrtoint ptr %ctrl3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl3, align 8
  %tobool.not = icmp eq ptr %17, null
  %tobool.not.i = icmp eq ptr %msg, null
  %or.cond = or i1 %tobool.not.i, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %num_bytes.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %18 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %num_bytes.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %19)
  %cmp.i = icmp ugt i8 %19, 16
  br i1 %cmp.i, label %lor.lhs.false.i.do.end.i_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end.i_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %conv.i = zext i8 %19 to i32
  %20 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %msg, align 4
  %conv3.i = zext i16 %21 to i32
  %add.i = add nuw nsw i32 %conv3.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3072, i32 %add.i)
  %cmp6.i = icmp ugt i32 %add.i, 3072
  br i1 %cmp6.i, label %lor.lhs.false2.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false2.i.do.end.i_crit_edge:              ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

if.end.i:                                         ; preds = %lor.lhs.false2.i
  %22 = zext i8 %mc to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i8 %mc, label %if.end.i.do.end.i_crit_edge [
    i8 96, label %if.end.i.sw.bb.i_crit_edge
    i8 32, label %if.end.i.sw.bb.i_crit_edge68
    i8 104, label %if.end.i.sw.bb13.i_crit_edge
    i8 40, label %if.end.i.sw.bb13.i_crit_edge69
    i8 97, label %if.end.i.sw.bb18.i_crit_edge
    i8 33, label %if.end.i.sw.bb18.i_crit_edge70
  ]

if.end.i.sw.bb18.i_crit_edge70:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end.i.sw.bb18.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb18.i

if.end.i.sw.bb13.i_crit_edge69:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb13.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb13.i

if.end.i.sw.bb.i_crit_edge68:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i.sw.bb.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.bb.i:                                          ; preds = %if.end.i.sw.bb.i_crit_edge, %if.end.i.sw.bb.i_crit_edge68
  %rbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %23 = ptrtoint ptr %rbuf.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rbuf.i, align 4
  %cmp9.not.i = icmp eq ptr %24, null
  br i1 %cmp9.not.i, label %sw.bb.i.do.end.i_crit_edge, label %sw.bb.i.if.end6_crit_edge

sw.bb.i.if.end6_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

sw.bb.i.do.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.bb13.i:                                        ; preds = %if.end.i.sw.bb13.i_crit_edge, %if.end.i.sw.bb13.i_crit_edge69
  %wbuf.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %25 = ptrtoint ptr %wbuf.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %wbuf.i, align 4
  %cmp14.not.i = icmp eq ptr %26, null
  br i1 %cmp14.not.i, label %sw.bb13.i.do.end.i_crit_edge, label %sw.bb13.i.if.end6_crit_edge

sw.bb13.i.if.end6_crit_edge:                      ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

sw.bb13.i.do.end.i_crit_edge:                     ; preds = %sw.bb13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.bb18.i:                                        ; preds = %if.end.i.sw.bb18.i_crit_edge, %if.end.i.sw.bb18.i_crit_edge70
  %rbuf19.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %27 = ptrtoint ptr %rbuf19.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rbuf19.i, align 4
  %cmp20.not.i = icmp eq ptr %28, null
  br i1 %cmp20.not.i, label %sw.bb18.i.do.end.i_crit_edge, label %land.lhs.true.i

sw.bb18.i.do.end.i_crit_edge:                     ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %sw.bb18.i
  %wbuf22.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %29 = ptrtoint ptr %wbuf22.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %wbuf22.i, align 4
  %cmp23.not.i = icmp eq ptr %30, null
  br i1 %cmp23.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true.i.if.end6_crit_edge

land.lhs.true.i.if.end6_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %land.lhs.true.i.do.end.i_crit_edge, %sw.bb18.i.do.end.i_crit_edge, %sw.bb13.i.do.end.i_crit_edge, %sw.bb.i.do.end.i_crit_edge, %if.end.i.do.end.i_crit_edge, %lor.lhs.false2.i.do.end.i_crit_edge, %lor.lhs.false.i.do.end.i_crit_edge
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %17, align 4
  %33 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %msg, align 4
  %conv30.i = zext i16 %34 to i32
  %conv31.i = zext i8 %mc to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.14, i32 noundef %conv30.i, i32 noundef %conv31.i) #8
  br label %cleanup

if.end6:                                          ; preds = %land.lhs.true.i.if.end6_crit_edge, %sw.bb13.i.if.end6_crit_edge, %sw.bb.i.if.end6_crit_edge
  %35 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %num_bytes.i, align 2
  %conv = zext i8 %36 to i32
  %37 = tail call i32 @llvm.smax.i32(i32 %conv, i32 1) #5
  %38 = tail call i32 @llvm.umin.i32(i32 %37, i32 16) #5
  %sub.i = add nsw i32 %38, -1
  %arrayidx.i = getelementptr [16 x i8], ptr @slim_slicesize.sizetocode, i32 0, i32 %sub.i
  %39 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @slim_xfer_msg.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@slim_xfer_msg, %if.then12)) #5
          to label %do.end [label %if.then12], !srcloc !59

if.then12:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %17, align 4
  %43 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %msg, align 4
  %conv13 = zext i16 %44 to i32
  %45 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %num_bytes.i, align 2
  %conv15 = zext i8 %46 to i32
  %conv16 = zext i8 %mc to i32
  %conv17 = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @slim_xfer_msg.__UNIQUE_ID_ddebug188, ptr noundef %42, ptr noundef nonnull @.str.12, i32 noundef %conv13, i32 noundef %conv15, i32 noundef %conv16, i32 noundef %conv17) #5
  br label %do.end

do.end:                                           ; preds = %if.then12, %if.end6
  %47 = ptrtoint ptr %msg to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %msg, align 4
  %49 = shl i16 %48, 4
  %50 = or i8 %40, 8
  %51 = zext i8 %50 to i16
  %or2262 = or i16 %49, %51
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %or2262, ptr %3, align 4
  %53 = zext i8 %mc to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %mc, label %do.end.sw.epilog_crit_edge [
    i8 97, label %do.end.sw.bb_crit_edge
    i8 104, label %do.end.sw.bb_crit_edge71
    i8 33, label %do.end.sw.bb_crit_edge72
    i8 40, label %do.end.sw.bb_crit_edge73
  ]

do.end.sw.bb_crit_edge73:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge72:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge71:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.bb_crit_edge:                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end.sw.bb_crit_edge, %do.end.sw.bb_crit_edge71, %do.end.sw.bb_crit_edge72, %do.end.sw.bb_crit_edge73
  %54 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_bytes.i, align 2
  %56 = ptrtoint ptr %txn_stack to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %txn_stack, align 4
  %add = add i8 %57, %55
  store i8 %add, ptr %txn_stack, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %do.end.sw.epilog_crit_edge
  %58 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %0, align 1
  %60 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %1, align 2
  %62 = add i8 %61, -32
  %switch.and.i = and i8 %62, -66
  %63 = or i8 %switch.and.i, %59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %if.then34, label %sw.epilog.if.end36_crit_edge

sw.epilog.if.end36_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then34:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %txn_stack to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %txn_stack, align 4
  %inc = add i8 %66, 1
  store i8 %inc, ptr %txn_stack, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %sw.epilog.if.end36_crit_edge
  %call37 = call i32 @slim_do_transfer(ptr noundef nonnull %17, ptr noundef nonnull %txn_stack)
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.end36 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %txn_stack) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_read(ptr nocapture noundef readonly %sdev, i32 noundef %addr, i32 noundef %count, ptr noundef %val) #0 align 64 {
entry:
  %msg = alloca %struct.slim_val_inf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #5
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4
  %conv.i = trunc i32 %addr to i16
  store i16 %conv.i, ptr %msg, align 4
  %conv1.i = trunc i32 %count to i8
  %num_bytes.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1.i, ptr %num_bytes.i, align 2
  %rbuf2.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %rbuf2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %val, ptr %rbuf2.i, align 4
  %wbuf3.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %wbuf3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %wbuf3.i, align 4
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comp.i, align 4
  %call = call i32 @slim_xfer_msg(ptr noundef %sdev, ptr noundef nonnull %msg, i8 noundef zeroext 96)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_readb(ptr nocapture noundef readonly %sdev, i32 noundef %addr) #0 align 64 {
entry:
  %msg.i = alloca %struct.slim_val_inf, align 4
  %buf = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %buf) #5
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %buf, align 1, !annotation !60
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #5
  %1 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -65025, ptr %msg.i, align 4
  %conv.i.i = trunc i32 %addr to i16
  store i16 %conv.i.i, ptr %msg.i, align 4
  %rbuf2.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %rbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %buf, ptr %rbuf2.i.i, align 4
  %wbuf3.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %wbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %wbuf3.i.i, align 4
  %comp.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %4 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comp.i.i, align 4
  %call.i = call i32 @slim_xfer_msg(ptr noundef %sdev, ptr noundef nonnull %msg.i, i8 noundef zeroext 96) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv = zext i8 %6 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv, %if.else ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_write(ptr nocapture noundef readonly %sdev, i32 noundef %addr, i32 noundef %count, ptr noundef %val) #0 align 64 {
entry:
  %msg = alloca %struct.slim_val_inf, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg) #5
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %msg, align 4
  %conv.i = trunc i32 %addr to i16
  store i16 %conv.i, ptr %msg, align 4
  %conv1.i = trunc i32 %count to i8
  %num_bytes.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %num_bytes.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv1.i, ptr %num_bytes.i, align 2
  %rbuf2.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 2
  %2 = ptrtoint ptr %rbuf2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rbuf2.i, align 4
  %wbuf3.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 3
  %3 = ptrtoint ptr %wbuf3.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %val, ptr %wbuf3.i, align 4
  %comp.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg, i32 0, i32 4
  %4 = ptrtoint ptr %comp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comp.i, align 4
  %call = call i32 @slim_xfer_msg(ptr noundef %sdev, ptr noundef nonnull %msg, i8 noundef zeroext 104)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @slim_writeb(ptr nocapture noundef readonly %sdev, i32 noundef %addr, i8 noundef zeroext %value) #0 align 64 {
entry:
  %msg.i = alloca %struct.slim_val_inf, align 4
  %value.addr = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %value.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %value, ptr %value.addr, align 1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %msg.i) #5
  %1 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -65025, ptr %msg.i, align 4
  %conv.i.i = trunc i32 %addr to i16
  store i16 %conv.i.i, ptr %msg.i, align 4
  %rbuf2.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 2
  %2 = ptrtoint ptr %rbuf2.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %rbuf2.i.i, align 4
  %wbuf3.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 3
  %3 = ptrtoint ptr %wbuf3.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %value.addr, ptr %wbuf3.i.i, align 4
  %comp.i.i = getelementptr inbounds %struct.slim_val_inf, ptr %msg.i, i32 0, i32 4
  %4 = ptrtoint ptr %comp.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %comp.i.i, align 4
  %call.i = call i32 @slim_xfer_msg(ptr noundef %sdev, ptr noundef nonnull %msg.i, i8 noundef zeroext 104) #5
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %msg.i) #5
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !46, !47, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/slimbus/messaging.c", i32 39, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @slim_msg_response._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @slim_msg_response._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @__ksymtab_slim_msg_response, !9, !"__ksymtab_slim_msg_response", i1 false, i1 false}
!9 = !{!"../drivers/slimbus/messaging.c", i32 53, i32 1}
!10 = !{ptr @__ksymtab_slim_alloc_txn_tid, !11, !"__ksymtab_slim_alloc_txn_tid", i1 false, i1 false}
!11 = !{!"../drivers/slimbus/messaging.c", i32 79, i32 1}
!12 = !{ptr @__ksymtab_slim_free_txn_tid, !13, !"__ksymtab_slim_free_txn_tid", i1 false, i1 false}
!13 = !{!"../drivers/slimbus/messaging.c", i32 95, i32 1}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/slimbus/messaging.c", i32 129, i32 4}
!16 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @slim_do_transfer._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @slim_do_transfer._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/slimbus/messaging.c", i32 163, i32 3}
!21 = !{ptr @slim_do_transfer._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @slim_do_transfer._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @__ksymtab_slim_do_transfer, !24, !"__ksymtab_slim_do_transfer", i1 false, i1 false}
!24 = !{!"../drivers/slimbus/messaging.c", i32 177, i32 1}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/slimbus/messaging.c", i32 251, i32 2}
!27 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @slim_xfer_msg.__UNIQUE_ID_ddebug188, !26, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!30 = !{ptr @__ksymtab_slim_xfer_msg, !31, !"__ksymtab_slim_xfer_msg", i1 false, i1 false}
!31 = !{!"../drivers/slimbus/messaging.c", i32 272, i32 1}
!32 = !{ptr @__ksymtab_slim_read, !33, !"__ksymtab_slim_read", i1 false, i1 false}
!33 = !{!"../drivers/slimbus/messaging.c", i32 304, i32 1}
!34 = !{ptr @__ksymtab_slim_readb, !35, !"__ksymtab_slim_readb", i1 false, i1 false}
!35 = !{!"../drivers/slimbus/messaging.c", i32 325, i32 1}
!36 = !{ptr @__ksymtab_slim_write, !37, !"__ksymtab_slim_write", i1 false, i1 false}
!37 = !{!"../drivers/slimbus/messaging.c", i32 347, i32 1}
!38 = !{ptr @__ksymtab_slim_writeb, !39, !"__ksymtab_slim_writeb", i1 false, i1 false}
!39 = !{!"../drivers/slimbus/messaging.c", i32 365, i32 1}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/slimbus/messaging.c", i32 206, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @slim_val_inf_sanity._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @slim_val_inf_sanity._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @slim_slicesize.sizetocode, !49, !"sizetocode", i1 false, i1 false}
!49 = !{!"../drivers/slimbus/messaging.c", i32 213, i32 18}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2148208640, i64 2148208645, i64 2148208658, i64 2148208702, i64 2148208736, i64 2148208757}
!60 = !{!"auto-init"}
